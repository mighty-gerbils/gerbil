(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710699096)
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
      (lambda (_path159905_ _fun159906_)
        (with-output-to-file
         (let ((__tmp159999
                (let ()
                  (declare (not safe))
                  (cons _path159905_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp159999))
         _fun159906_)))
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
      (lambda (_gerbil-libdir159900_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir159900_)))
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
      (lambda (_dir159898_) (delete-file-or-directory _dir159898_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath159872_ _opts159873_)
        (if (let () (declare (not safe)) (string? _srcpath159872_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath159872_)))
        (let ((_outdir159875_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts159873_)))
              (_invoke-gsc?159876_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts159873_)))
              (_gsc-options159877_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts159873_)))
              (_keep-scm?159878_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts159873_)))
              (_verbosity159879_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts159873_)))
              (_optimize159880_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts159873_)))
              (_debug159881_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts159873_)))
              (_gen-ssxi159882_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts159873_))))
          (if _outdir159875_
              (let ((__tmp160000
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir159875_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160000))
              '#!void)
          (if _optimize159880_
              (let ((__tmp160001
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160001))
              '#!void)
          (let ((__tmp160005
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath159872_))
                   (let ((__tmp160006
                          (let ((__tmp160007
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath159872_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160007))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp160006))))
                (__tmp160004
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160002
                 (let ((__tmp160003
                        (let ()
                          (declare (not safe))
                          (cons _srcpath159872_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp160003))))
            (declare (not safe))
            (call-with-parameters
             __tmp160005
             gxc#current-compile-output-dir
             _outdir159875_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?159876_
             gxc#current-compile-gsc-options
             _gsc-options159877_
             gxc#current-compile-keep-scm
             _keep-scm?159878_
             gxc#current-compile-verbose
             _verbosity159879_
             gxc#current-compile-optimize
             _optimize159880_
             gxc#current-compile-debug
             _debug159881_
             gxc#current-compile-generate-ssxi
             _gen-ssxi159882_
             gxc#current-compile-timestamp
             __tmp160004
             gxc#current-compile-context
             __tmp160002
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath159891_)
        (let ((_opts159893_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath159891_ _opts159893_))))
    (define gxc#compile-module
      (lambda _g160009_
        (let ((_g160008_ (let () (declare (not safe)) (##length _g160009_))))
          (cond ((let () (declare (not safe)) (##fx= _g160008_ 1))
                 (apply (lambda (_srcpath159891_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath159891_)))
                        _g160009_))
                ((let () (declare (not safe)) (##fx= _g160008_ 2))
                 (apply (lambda (_srcpath159895_ _opts159896_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath159895_
                             _opts159896_)))
                        _g160009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g160009_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath159848_ _opts159849_)
        (if (let () (declare (not safe)) (string? _srcpath159848_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath159848_)))
        (let ((_outdir159851_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts159849_)))
              (_invoke-gsc?159852_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts159849_)))
              (_gsc-options159853_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts159849_)))
              (_keep-scm?159854_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts159849_)))
              (_verbosity159855_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts159849_)))
              (_debug159856_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts159849_))))
          (if _outdir159851_
              (let ((__tmp160010
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir159851_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160010))
              '#!void)
          (let ((__tmp160014
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath159848_))
                   (let ((__tmp160015
                          (let ((__tmp160016
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath159848_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160016))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp160015
                      _opts159849_))))
                (__tmp160013
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160011
                 (let ((__tmp160012
                        (let ()
                          (declare (not safe))
                          (cons _srcpath159848_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp160012))))
            (declare (not safe))
            (call-with-parameters
             __tmp160014
             gxc#current-compile-output-dir
             _outdir159851_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?159852_
             gxc#current-compile-gsc-options
             _gsc-options159853_
             gxc#current-compile-keep-scm
             _keep-scm?159854_
             gxc#current-compile-verbose
             _verbosity159855_
             gxc#current-compile-debug
             _debug159856_
             gxc#current-compile-timestamp
             __tmp160013
             gxc#current-compile-context
             __tmp160011
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath159864_)
        (let ((_opts159866_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath159864_ _opts159866_))))
    (define gxc#compile-exe
      (lambda _g160018_
        (let ((_g160017_ (let () (declare (not safe)) (##length _g160018_))))
          (cond ((let () (declare (not safe)) (##fx= _g160017_ 1))
                 (apply (lambda (_srcpath159864_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath159864_)))
                        _g160018_))
                ((let () (declare (not safe)) (##fx= _g160017_ 2))
                 (apply (lambda (_srcpath159868_ _opts159869_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath159868_ _opts159869_)))
                        _g160018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g160018_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx159844_ _opts159845_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts159845_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx159844_
               _opts159845_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx159844_
               _opts159845_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx159727_ _opts159728_)
        (letrec ((_generate-stub159730_
                  (lambda (_builtin-modules159840_)
                    (let ((_mod-main159842_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx159727_ 'main))))
                      (write (let ((__tmp160019
                                    (let ((__tmp160020
                                           (let ((__tmp160021
                                                  (let ((__tmp160022
                                                         (let ((__tmp160024
                                                                (let ((__tmp160025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules159840_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160025)))
                       (__tmp160023
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp160024 __tmp160023))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp160022))))
                                             (declare (not safe))
                                             (cons __tmp160021 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp160020))))
                               (declare (not safe))
                               (cons 'define __tmp160019)))
                      (write (let ((__tmp160026
                                    (let ((__tmp160065
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160027
                                           (let ((__tmp160028
                                                  (let ((__tmp160029
                                                         (let ((__tmp160053
                                                                (let ((__tmp160054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160055
                                      (let ((__tmp160063
                                             (let ((__tmp160064
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp160064)))
                                            (__tmp160056
                                             (let ((__tmp160057
                                                    (let ((__tmp160058
                                                           (let ((__tmp160059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160060
                                 (let ((__tmp160061
                                        (let ((__tmp160062
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp160062 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp160061))))
                            (declare (not safe))
                            (cons __tmp160060 '()))))
                     (declare (not safe))
                     (cons _mod-main159842_ __tmp160059))))
              (declare (not safe))
              (cons 'apply __tmp160058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160057 '()))))
                                        (declare (not safe))
                                        (cons __tmp160063 __tmp160056))))
                                 (declare (not safe))
                                 (cons '() __tmp160055))))
                          (declare (not safe))
                          (cons 'lambda __tmp160054)))
                       (__tmp160030
                        (let ((__tmp160031
                               (let ((__tmp160032
                                      (let ((__tmp160033
                                             (let ((__tmp160044
                                                    (let ((__tmp160045
                                                           (let ((__tmp160046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160047
                                 (let ((__tmp160048
                                        (let ((__tmp160049
                                               (let ((__tmp160050
                                                      (let ((__tmp160051
                                                             (let ((__tmp160052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp160052 '()))))
                (declare (not safe))
                (cons 'force-output __tmp160051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp160050 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp160049))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp160048))))
                            (declare (not safe))
                            (cons __tmp160047 '()))))
                     (declare (not safe))
                     (cons 'void __tmp160046))))
              (declare (not safe))
              (cons 'with-catch __tmp160045)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp160034
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
                            (let ((__tmp160043
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp160043 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp160042))))
                (declare (not safe))
                (cons __tmp160041 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp160040))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp160039))))
                                   (declare (not safe))
                                   (cons __tmp160038 '()))))
                            (declare (not safe))
                            (cons 'void __tmp160037))))
                     (declare (not safe))
                     (cons 'with-catch __tmp160036))))
              (declare (not safe))
              (cons __tmp160035 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160044
                                                     __tmp160034))))
                                        (declare (not safe))
                                        (cons '() __tmp160033))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp160032))))
                          (declare (not safe))
                          (cons __tmp160031 '()))))
                   (declare (not safe))
                   (cons __tmp160053 __tmp160030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp160029))))
                                             (declare (not safe))
                                             (cons __tmp160028 '()))))
                                      (declare (not safe))
                                      (cons __tmp160065 __tmp160027))))
                               (declare (not safe))
                               (cons 'define __tmp160026)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts159731_
                  (lambda (_libgerbil159838_)
                    (call-with-input-file
                     (string-append _libgerbil159838_ '".ldd")
                     read)))
                 (_replace-extension159732_
                  (lambda (_path159835_ _ext159836_)
                    (string-append
                     (path-strip-extension _path159835_)
                     _ext159836_)))
                 (_not-exclude-module?159733_
                  (lambda (_ctx159831_)
                    (let ((_id-str159833_
                           (symbol->string
                            (##structure-ref
                             _ctx159831_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp160067
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str159833_))))
                            (declare (not safe))
                            (not __tmp160067))
                          (let ((__tmp160066
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str159833_))))
                            (declare (not safe))
                            (not __tmp160066))
                          '#f))))
                 (_not-file-empty?159734_
                  (lambda (_path159829_)
                    (let ((__tmp160068
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path159829_))))
                      (declare (not safe))
                      (not __tmp160068))))
                 (_compile-stub159735_
                  (lambda (_output-scm159742_ _output-bin159743_)
                    (let* ((_gerbil-home159745_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir159747_
                            (path-expand '"lib" _gerbil-home159745_))
                           (_gerbil-staticdir159749_
                            (path-expand '"static" _gerbil-libdir159747_))
                           (_gxlink159751_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir159747_))
                           (_tmp159753_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path159757_
                            (lambda (_f159755_)
                              (path-expand
                               (path-strip-directory _f159755_)
                               _tmp159753_)))
                           (_deps159759_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx159727_)))
                           (_deps159761_
                            (filter _not-exclude-module?159733_ _deps159759_))
                           (_src-deps-scm159763_
                            (map gxc#find-static-module-file _deps159761_))
                           (_src-deps-scm159765_
                            (filter _not-file-empty?159734_
                                    _src-deps-scm159763_))
                           (_src-deps-scm159767_
                            (map path-expand _src-deps-scm159765_))
                           (_deps-scm159769_
                            (map _tmp-path159757_ _src-deps-scm159767_))
                           (_deps-c159775_
                            (map (lambda (_g159770159772_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension159732_
                                      _g159770159772_
                                      '".c")))
                                 _deps-scm159769_))
                           (_deps-o159781_
                            (map (lambda (_g159776159778_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension159732_
                                      _g159776159778_
                                      '".o")))
                                 _deps-scm159769_))
                           (_src-bin-scm159783_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx159727_)))
                           (_src-bin-scm159785_
                            (path-expand _src-bin-scm159783_))
                           (_bin-scm159787_
                            (let ()
                              (declare (not safe))
                              (_tmp-path159757_ _src-bin-scm159785_)))
                           (_bin-c159789_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159732_
                               _bin-scm159787_
                               '".c")))
                           (_bin-o159791_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159732_
                               _bin-scm159787_
                               '".o")))
                           (_output-bin159793_
                            (path-expand _output-bin159743_))
                           (_output-scm159795_
                            (path-expand _output-scm159742_))
                           (_output-c159797_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159732_
                               _output-scm159795_
                               '".c")))
                           (_output-o159799_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159732_
                               _output-scm159795_
                               '".o")))
                           (_output_-c159801_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159732_
                               _output-scm159795_
                               '"_.c")))
                           (_output_-o159803_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159732_
                               _output-scm159795_
                               '"_.o")))
                           (_gsc-link-opts159805_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts159807_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts159809_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir159749_)))
                           (_output-ld-opts159811_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a159813_
                            (path-expand '"libgerbil.a" _gerbil-libdir159747_))
                           (_libgerbil.so159815_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir159747_))
                           (_libgerbil-ld-opts159817_
                            (if (file-exists? _libgerbil.so159815_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts159731_
                                   _libgerbil.so159815_))
                                (if (file-exists? _libgerbil.a159813_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts159731_
                                       _libgerbil.a159813_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a159813_
                                       _libgerbil.so159815_)))))
                           (_rpath159819_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir159747_)))
                           (_builtin-modules159823_
                            (map (lambda (_mod159821_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod159821_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx159727_ _deps159761_)))))
                      (let ((__tmp160069
                             (lambda ()
                               (let ((__tmp160070
                                      (path-directory _output-bin159793_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160070)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160069))
                      (let ((__tmp160071
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub159730_
                                  _builtin-modules159823_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm159795_
                         __tmp160071))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160072
                                   (lambda () (create-directory _tmp159753_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp160072))
                            (for-each
                             copy-file
                             _src-deps-scm159767_
                             _deps-scm159769_)
                            (copy-file _src-bin-scm159785_ _bin-scm159787_)
                            (let ((__tmp160080
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160073
                                   (let ((__tmp160074
                                          (let ((__tmp160075
                                                 (let ((__tmp160076
                                                        (let ((__tmp160077
                                                               (let ((__tmp160078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160079
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm159795_ '()))))
                                (declare (not safe))
                                (cons _bin-scm159787_ __tmp160079))))
                         (declare (not safe))
                         (foldr1 cons __tmp160078 _deps-scm159769_))))
                  (declare (not safe))
                  (foldr1 cons __tmp160077 _gsc-link-opts159805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink159751_
                                                         __tmp160076))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp160075))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160074))))
                              (declare (not safe))
                              (gxc#invoke __tmp160080 __tmp160073))
                            (let ((__tmp160088
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160081
                                   (let ((__tmp160082
                                          (let ((__tmp160083
                                                 (let ((__tmp160084
                                                        (let ((__tmp160085
                                                               (let ((__tmp160086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160087
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c159801_ '()))))
                                (declare (not safe))
                                (cons _output-c159797_ __tmp160087))))
                         (declare (not safe))
                         (cons _bin-c159789_ __tmp160086))))
                  (declare (not safe))
                  (foldr1 cons __tmp160085 _deps-c159775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160084
                                                           _gsc-static-opts159809_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160083
                                                    _gsc-cc-opts159807_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160082))))
                              (declare (not safe))
                              (gxc#invoke __tmp160088 __tmp160081))
                            (let ((__tmp160101
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160089
                                   (let ((__tmp160090
                                          (let ((__tmp160091
                                                 (let ((__tmp160092
                                                        (let ((__tmp160093
                                                               (let ((__tmp160094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160095
                                     (let ((__tmp160096
                                            (let ((__tmp160097
                                                   (let ((__tmp160098
                                                          (let ((__tmp160099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp160100
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts159817_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp160100))))
                    (declare (not safe))
                    (cons _gerbil-libdir159747_ __tmp160099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp160098))))
                                              (declare (not safe))
                                              (cons _rpath159819_
                                                    __tmp160097))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp160096
                                               _output-ld-opts159811_))))
                                (declare (not safe))
                                (cons _output_-o159803_ __tmp160095))))
                         (declare (not safe))
                         (cons _output-o159799_ __tmp160094))))
                  (declare (not safe))
                  (cons _bin-o159791_ __tmp160093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160092
                                                           _deps-o159781_))))
                                            (declare (not safe))
                                            (cons _output-bin159793_
                                                  __tmp160091))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160090))))
                              (declare (not safe))
                              (gxc#invoke __tmp160101 __tmp160089))
                            (for-each
                             delete-file
                             (let ((__tmp160102
                                    (let ((__tmp160103
                                           (let ((__tmp160104
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o159803_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o159799_
                                                   __tmp160104))))
                                      (declare (not safe))
                                      (cons _output_-c159801_ __tmp160103))))
                               (declare (not safe))
                               (cons _output-c159797_ __tmp160102)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp159753_)))
                          '#!void)))))
          (let* ((_output-bin159737_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx159727_ _opts159728_)))
                 (_output-scm159739_
                  (string-append _output-bin159737_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub159735_ _output-scm159739_ _output-bin159737_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm159739_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx159552_ _opts159553_)
        (letrec ((_reset-declare159555_
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
                 (_generate-stub159556_
                  (lambda (_deps159718_)
                    (let ((_mod-main159720_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx159552_ 'main)))
                          (_reset-decl159721_
                           (let ()
                             (declare (not safe))
                             (_reset-declare159555_)))
                          (_user-decl159722_
                           (let ()
                             (declare (not safe))
                             (_user-declare159557_))))
                      (for-each
                       (lambda (_dep159724_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl159721_)
                         (newline)
                         (if _user-decl159722_
                             (begin (write _user-decl159722_) (newline))
                             '#!void)
                         (write (let ((__tmp160105
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep159724_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp160105)))
                         (newline))
                       _deps159718_)
                      (write (let ((__tmp160106
                                    (let ((__tmp160119
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160107
                                           (let ((__tmp160115
                                                  (let ((__tmp160116
                                                         (let ((__tmp160117
                                                                (let ((__tmp160118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160118))))
                   (declare (not safe))
                   (cons __tmp160117 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp160116)))
                                                 (__tmp160108
                                                  (let ((__tmp160109
                                                         (let ((__tmp160110
                                                                (let ((__tmp160111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160112
                                      (let ((__tmp160113
                                             (let ((__tmp160114
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp160114 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp160113))))
                                 (declare (not safe))
                                 (cons __tmp160112 '()))))
                          (declare (not safe))
                          (cons _mod-main159720_ __tmp160111))))
                   (declare (not safe))
                   (cons 'apply __tmp160110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160109 '()))))
                                             (declare (not safe))
                                             (cons __tmp160115 __tmp160108))))
                                      (declare (not safe))
                                      (cons __tmp160119 __tmp160107))))
                               (declare (not safe))
                               (cons 'define __tmp160106)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare159557_
                  (lambda ()
                    (let* ((_gsc-opts159623_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts159553_)))
                           (_gsc-prelude159625_
                            (if _gsc-opts159623_
                                (member '"-prelude" _gsc-opts159623_)
                                '#f))
                           (_gsc-prelude159627_
                            (if _gsc-prelude159625_
                                (read (open-input-string
                                       (cadr _gsc-prelude159625_)))
                                '#f)))
                      (let _lp159630_ ((_rest159632_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude159627_ '())))
                                       (_user-decls159633_ '()))
                        (let* ((_rest159634159642_ _rest159632_)
                               (_else159636159650_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls159633_))
                                      '#f
                                      (let ((__tmp160120
                                             (reverse _user-decls159633_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp160120)))))
                               (_K159638159706_
                                (lambda (_rest159653_ _expr159654_)
                                  (let* ((_expr159655159667_ _expr159654_)
                                         (_else159658159675_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp159630_
                                               _rest159653_
                                               _user-decls159633_)))))
                                    (let ((_K159663159696_
                                           (lambda (_decls159694_)
                                             (let ((__tmp160121
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls159633_
                                                              _decls159694_))))
                                               (declare (not safe))
                                               (_lp159630_
                                                _rest159653_
                                                __tmp160121))))
                                          (_K159660159681_
                                           (lambda (_exprs159679_)
                                             (let ((__tmp160122
                                                    (append _exprs159679_
                                                            _rest159653_)))
                                               (declare (not safe))
                                               (_lp159630_
                                                __tmp160122
                                                _user-decls159633_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr159655159667_))
                                          (let ((_tl159665159701_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr159655159667_)))
                                                (_hd159664159699_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr159655159667_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd159664159699_
                                                         'declare))
                                                (let ((_decls159704_
                                                       _tl159665159701_))
                                                  (declare (not safe))
                                                  (_K159663159696_
                                                   _decls159704_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd159664159699_
                                                             'begin))
                                                    (let ((_exprs159689_
                                                           _tl159665159701_))
                                                      (declare (not safe))
                                                      (_K159660159681_
                                                       _exprs159689_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else159658159675_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else159658159675_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest159634159642_))
                              (let ((_hd159639159709_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest159634159642_)))
                                    (_tl159640159711_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest159634159642_))))
                                (let* ((_expr159714_ _hd159639159709_)
                                       (_rest159716_ _tl159640159711_))
                                  (declare (not safe))
                                  (_K159638159706_ _rest159716_ _expr159714_)))
                              (let ()
                                (declare (not safe))
                                (_else159636159650_))))))))
                 (_compile-stub159558_
                  (lambda (_output-scm159565_ _output-bin159566_)
                    (let* ((_gerbil-home159568_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir159570_
                            (path-expand '"lib" _gerbil-home159568_))
                           (_runtime159572_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp159574_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home159568_))
                           (_include-gambit-sharp159576_
                            (string-append
                             '"(include \""
                             _gambit-sharp159574_
                             '"\")"))
                           (_bin-scm159578_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx159552_)))
                           (_deps159580_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx159552_)))
                           (_deps159582_
                            (map gxc#find-static-module-file _deps159580_))
                           (_deps159587_
                            (filter (lambda (_$obj159584_)
                                      (let ((__tmp160123
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj159584_))))
                                        (declare (not safe))
                                        (not __tmp160123)))
                                    _deps159582_))
                           (_deps159591_
                            (filter (lambda (_f159589_)
                                      (let ((__tmp160124
                                             (member _f159589_
                                                     _runtime159572_)))
                                        (declare (not safe))
                                        (not __tmp160124)))
                                    _deps159587_))
                           (_output-base159593_
                            (string-append
                             (path-strip-extension _output-scm159565_)))
                           (_output-c159595_
                            (string-append _output-base159593_ '".c"))
                           (_output-o159597_
                            (string-append _output-base159593_ '".o"))
                           (_output-c_159599_
                            (string-append _output-base159593_ '"_.c"))
                           (_output-o_159601_
                            (string-append _output-base159593_ '"_.o"))
                           (_gsc-link-opts159603_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts159605_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts159607_
                            (let ((__tmp160125
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir159570_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp160125)))
                           (_output-ld-opts159609_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros159611_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp160127
                                       (let ((__tmp160128
                                              (let ((__tmp160129
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp159576_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp160129))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp160128))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160127))
                                (let ((__tmp160126
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp159576_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160126))))
                           (_gsc-link-opts159613_
                            (append _gsc-link-opts159603_
                                    _gsc-gx-macros159611_))
                           (_rpath159615_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir159570_)))
                           (_default-ld-options159617_
                            (let ((__tmp160130
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp160130))))
                      (let ((__tmp160131
                             (lambda ()
                               (let ((__tmp160132
                                      (path-directory _output-bin159566_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160132)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160131))
                      (let ((__tmp160133
                             (lambda ()
                               (let ((__tmp160134
                                      (let ((__tmp160135
                                             (let ((__tmp160136
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm159578_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp160136
                                                       _deps159591_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp160135
                                                _runtime159572_))))
                                 (declare (not safe))
                                 (_generate-stub159556_ __tmp160134)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm159565_
                         __tmp160133))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160142
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160137
                                   (let ((__tmp160138
                                          (let ((__tmp160139
                                                 (let ((__tmp160140
                                                        (let ((__tmp160141
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm159565_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp160141 _gsc-link-opts159613_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_159599_
                                                         __tmp160140))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp160139))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160138))))
                              (declare (not safe))
                              (gxc#invoke __tmp160142 __tmp160137))
                            (let ((__tmp160148
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160143
                                   (let ((__tmp160144
                                          (let ((__tmp160145
                                                 (let ((__tmp160146
                                                        (let ((__tmp160147
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_159599_ '()))))
                  (declare (not safe))
                  (cons _output-c159595_ __tmp160147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160146
                                                           _gsc-static-opts159607_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160145
                                                    _gsc-cc-opts159605_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160144))))
                              (declare (not safe))
                              (gxc#invoke __tmp160148 __tmp160143))
                            (let ((__tmp160158
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160149
                                   (let ((__tmp160150
                                          (let ((__tmp160151
                                                 (let ((__tmp160152
                                                        (let ((__tmp160153
                                                               (let ((__tmp160154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160155
                                     (let ((__tmp160156
                                            (let ((__tmp160157
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options159617_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir159570_
                                                    __tmp160157))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp160156))))
                                (declare (not safe))
                                (cons _rpath159615_ __tmp160155))))
                         (declare (not safe))
                         (foldr1 cons __tmp160154 _output-ld-opts159609_))))
                  (declare (not safe))
                  (cons _output-o_159601_ __tmp160153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o159597_
                                                         __tmp160152))))
                                            (declare (not safe))
                                            (cons _output-bin159566_
                                                  __tmp160151))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160150))))
                              (declare (not safe))
                              (gxc#invoke __tmp160158 __tmp160149)))
                          '#!void)))))
          (let* ((_output-bin159560_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx159552_ _opts159553_)))
                 (_output-scm159562_
                  (string-append _output-bin159560_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub159558_ _output-scm159562_ _output-bin159560_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm159562_))))))
    (define gxc#find-export-binding
      (lambda (_ctx159502_ _id159503_)
        (let ((_$e159549_
               (let ((__tmp160160
                      (lambda (_e159504159506_)
                        (let* ((_g159508159518_ _e159504159506_)
                               (_else159510159526_ (lambda () '#f))
                               (_K159512159530_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g159508159518_
                                 'gx#module-export::t))
                              (let* ((_e159513159533_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159508159518_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e159514159536_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159508159518_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e159515159539_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159508159518_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e159515159539_ '0))
                                    (let ((_e159516159542_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g159508159518_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g159544159546_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g159544159546_
                                                    _id159503_)))
                                           _e159516159542_)
                                          (let ()
                                            (declare (not safe))
                                            (_K159512159530_))
                                          (let ()
                                            (declare (not safe))
                                            (_else159510159526_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else159510159526_))))
                              (let ()
                                (declare (not safe))
                                (_else159510159526_))))))
                     (__tmp160159
                      (##structure-ref
                       _ctx159502_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp160160 __tmp160159))))
          (if _$e159549_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e159549_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx159494_ _id159495_)
        (let ((_$e159497_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx159494_ _id159495_))))
          (if _$e159497_
              ((lambda (_bind159500_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind159500_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id159495_)))
                 (##structure-ref _bind159500_ '1 gx#binding::t '#f))
               _$e159497_)
              (let ((__tmp160161
                     (##structure-ref
                      _ctx159494_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp160161
                 _id159495_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx159381_)
        (letrec* ((_ht159383_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template159384_
                   (lambda (_in159446_ _phi159447_)
                     (let ((_iphi159449_
                            (fx+ _phi159447_
                                 (##direct-structure-ref
                                  _in159446_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports159450_
                            (##structure-ref
                             (##direct-structure-ref
                              _in159446_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp159452_ ((_rest159454_ _imports159450_)
                                        (_r159455_ '()))
                         (let* ((_rest159456159464_ _rest159454_)
                                (_else159458159472_ (lambda () _r159455_))
                                (_K159460159482_
                                 (lambda (_rest159475_ _in159476_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in159476_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi159449_))
                                           (let ((__tmp160168
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in159476_
                                                          _r159455_))))
                                             (declare (not safe))
                                             (_lp159452_
                                              _rest159475_
                                              __tmp160168))
                                           (let ()
                                             (declare (not safe))
                                             (_lp159452_
                                              _rest159475_
                                              _r159455_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in159476_
                                              'gx#module-import::t))
                                           (let ((_iphi159478_
                                                  (fx+ _phi159447_
                                                       (##direct-structure-ref
                                                        _in159476_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi159478_))
                                                 (let ((__tmp160166
                                                        (let ((__tmp160167
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in159476_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp160167 _r159455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp159452_
                                                    _rest159475_
                                                    __tmp160166))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp159452_
                                                    _rest159475_
                                                    _r159455_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in159476_
                                                  'gx#import-set::t))
                                               (let ((_xphi159480_
                                                      (fx+ _iphi159449_
                                                           (##direct-structure-ref
                                                            _in159476_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi159480_))
                                                     (let ((__tmp160164
                                                            (let ((__tmp160165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in159476_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp160165 _r159455_))))
               (declare (not safe))
               (_lp159452_ _rest159475_ __tmp160164))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi159480_)
                                                         (let ((__tmp160162
                                                                (let ((__tmp160163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template159384_
                                  _in159476_
                                  _iphi159449_))))
                          (declare (not safe))
                          (foldl1 cons _r159455_ __tmp160163))))
                   (declare (not safe))
                   (_lp159452_ _rest159475_ __tmp160162))
                 (let ()
                   (declare (not safe))
                   (_lp159452_ _rest159475_ _r159455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp159452_
                                                  _rest159475_
                                                  _r159455_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest159456159464_))
                               (let ((_hd159461159485_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest159456159464_)))
                                     (_tl159462159487_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest159456159464_))))
                                 (let* ((_in159490_ _hd159461159485_)
                                        (_rest159492_ _tl159462159487_))
                                   (declare (not safe))
                                   (_K159460159482_ _rest159492_ _in159490_)))
                               (let ()
                                 (declare (not safe))
                                 (_else159458159472_))))))))
                  (_find-deps159385_
                   (lambda (_rest159392_ _deps159393_)
                     (let* ((_rest159394159402_ _rest159392_)
                            (_else159396159410_ (lambda () _deps159393_))
                            (_K159398159434_
                             (lambda (_rest159413_ _hd159414_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd159414_
                                      'gx#module-context::t))
                                   (let ((_id159416_
                                          (##structure-ref
                                           _hd159414_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports159417_
                                          (##structure-ref
                                           _hd159414_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht159383_ _id159416_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps159385_
                                            _rest159413_
                                            _deps159393_))
                                         (let ((_$e159419_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd159414_))))
                                           (if _$e159419_
                                               ((lambda (_pre159422_)
                                                  (let ((_xdeps159424_
                                                         (let ((__tmp160181
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre159422_ _imports159417_))))
                   (declare (not safe))
                   (_find-deps159385_ __tmp160181 _deps159393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht159383_
                                                       _id159416_
                                                       _hd159414_))
                                                    (let ((__tmp160182
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd159414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps159424_))))
              (declare (not safe))
              (_find-deps159385_ _rest159413_ __tmp160182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e159419_)
                                               (let ((_xdeps159426_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps159385_
                                                         _imports159417_
                                                         _deps159393_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht159383_
                                                    _id159416_
                                                    _hd159414_))
                                                 (let ((__tmp160180
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd159414_
                                                                _xdeps159426_))))
                                                   (declare (not safe))
                                                   (_find-deps159385_
                                                    _rest159413_
                                                    __tmp160180)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd159414_
                                          'gx#prelude-context::t))
                                       (let ((_id159428_
                                              (##structure-ref
                                               _hd159414_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht159383_
                                                _id159428_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps159385_
                                                _rest159413_
                                                _deps159393_))
                                             (let ((_xdeps159430_
                                                    (let ((__tmp160178
                                                           (##structure-ref
                                                            _hd159414_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps159385_
                                                       __tmp160178
                                                       _deps159393_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht159383_
                                                      _id159428_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps159385_
                                                      _rest159413_
                                                      _xdeps159430_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht159383_
                                                        _id159428_
                                                        _hd159414_))
                                                     (let ((__tmp160179
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd159414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps159430_))))
               (declare (not safe))
               (_find-deps159385_ _rest159413_ __tmp160179)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd159414_
                                              'gx#module-import::t))
                                           (if (let ((__tmp160177
                                                      (##direct-structure-ref
                                                       _hd159414_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp160177))
                                               (let ((__tmp160175
                                                      (let ((__tmp160176
                                                             (##direct-structure-ref
                                                              _hd159414_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160176
                                                              _rest159413_))))
                                                 (declare (not safe))
                                                 (_find-deps159385_
                                                  __tmp160175
                                                  _deps159393_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps159385_
                                                  _rest159413_
                                                  _deps159393_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd159414_
                                                  'gx#module-export::t))
                                               (let ((__tmp160173
                                                      (let ((__tmp160174
                                                             (##direct-structure-ref
                                                              _hd159414_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160174
                                                              _rest159413_))))
                                                 (declare (not safe))
                                                 (_find-deps159385_
                                                  __tmp160173
                                                  _deps159393_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd159414_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp160172
                                                              (##direct-structure-ref
                                                               _hd159414_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp160172))
                                                       (let ((__tmp160170
                                                              (let ((__tmp160171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd159414_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp160171 _rest159413_))))
                 (declare (not safe))
                 (_find-deps159385_ __tmp160170 _deps159393_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd159414_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps159432_
                           (let ()
                             (declare (not safe))
                             (_import-set-template159384_ _hd159414_ '0)))
                          (__tmp160169
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest159413_ _xdeps159432_))))
                     (declare (not safe))
                     (_find-deps159385_ __tmp160169 _deps159393_))
                   (let ()
                     (declare (not safe))
                     (_find-deps159385_ _rest159413_ _deps159393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd159414_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest159394159402_))
                           (let ((_hd159399159437_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest159394159402_)))
                                 (_tl159400159439_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest159394159402_))))
                             (let* ((_hd159442_ _hd159399159437_)
                                    (_rest159444_ _tl159400159439_))
                               (declare (not safe))
                               (_K159398159434_ _rest159444_ _hd159442_)))
                           (let ()
                             (declare (not safe))
                             (_else159396159410_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp160183
                                  (let ((_$e159387_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx159381_))))
                                    (if _$e159387_
                                        ((lambda (_pre159390_)
                                           (let ((__tmp160184
                                                  (##structure-ref
                                                   _ctx159381_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre159390_ __tmp160184)))
                                         _$e159387_)
                                        (##structure-ref
                                         _ctx159381_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps159385_ __tmp160183 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx159312_)
        (let* ((_context-id159314_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx159312_
                       'gx#module-context::t))
                    (##structure-ref _ctx159312_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx159312_)))
               (_scm159316_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id159314_))
                 '".scm"))
               (_dirs159318_ (let () (declare (not safe)) (load-path)))
               (_dirs159324_
                (let ((_user-libpath159320_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath159320_
                      (let ((_user-libpath159322_
                             (path-expand '"lib" _user-libpath159320_)))
                        (if (member _user-libpath159322_ _dirs159318_)
                            _dirs159318_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath159322_ _dirs159318_))))
                      _dirs159318_)))
               (_dirs159333_
                (let ((_$e159326_ (gxc#current-compile-output-dir)))
                  (if _$e159326_
                      ((lambda (_g159328159330_)
                         (let ()
                           (declare (not safe))
                           (cons _g159328159330_ _dirs159324_)))
                       _$e159326_)
                      _dirs159324_)))
               (_dirs159339_
                (map (lambda (_g159334159336_)
                       (path-expand '"static" _g159334159336_))
                     _dirs159333_)))
          (let _lp159342_ ((_rest159344_ _dirs159339_))
            (let* ((_rest159345159353_ _rest159344_)
                   (_else159347159361_
                    (lambda ()
                      (let ((__tmp160185
                             (##structure-ref
                              _ctx159312_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp160185
                         _scm159316_))))
                   (_K159349159369_
                    (lambda (_rest159364_ _dir159365_)
                      (let ((_path159367_
                             (path-expand _scm159316_ _dir159365_)))
                        (if (file-exists? _path159367_)
                            _path159367_
                            (let ()
                              (declare (not safe))
                              (_lp159342_ _rest159364_)))))))
              (if (let () (declare (not safe)) (##pair? _rest159345159353_))
                  (let ((_hd159350159372_
                         (let ()
                           (declare (not safe))
                           (##car _rest159345159353_)))
                        (_tl159351159374_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159345159353_))))
                    (let* ((_dir159377_ _hd159350159372_)
                           (_rest159379_ _tl159351159374_))
                      (declare (not safe))
                      (_K159349159369_ _rest159379_ _dir159377_)))
                  (let () (declare (not safe)) (_else159347159361_))))))))
    (define gxc#file-empty?
      (lambda (_path159310_)
        (let ((__tmp160186 (file-info-size (file-info _path159310_ '#t))))
          (declare (not safe))
          (zero? __tmp160186))))
    (define gxc#compile-top-module
      (lambda (_ctx159299_)
        (let ((__tmp160190
               (lambda ()
                 (let ((__tmp160191
                        (##structure-ref
                         _ctx159299_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp160191))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp160192
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx159299_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp160192))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx159299_))
                 (if (let ((__tmp160195
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx159299_))))
                       (declare (not safe))
                       (null? __tmp160195))
                     (let* ((_thr1159304_
                             (let ((__tmp160193
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx159299_)))))
                               (declare (not safe))
                               (spawn __tmp160193)))
                            (_thr2159307_
                             (let ((__tmp160194
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx159299_)))))
                               (declare (not safe))
                               (spawn __tmp160194))))
                       (let () (declare (not safe)) (gxc#join! _thr1159304_))
                       (let () (declare (not safe)) (gxc#join! _thr2159307_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx159299_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx159299_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx159299_))
                     '#!void)))
              (__tmp160189
               (let ((__obj159997
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj159997)
                 __obj159997))
              (__tmp160188 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp160187 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp160190
           gx#current-expander-context
           _ctx159299_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp160189
           gxc#current-compile-runtime-sections
           __tmp160188
           gxc#current-compile-runtime-names
           __tmp160187))))
    (define gxc#collect-bindings
      (lambda (_ctx159297_)
        (let ((__tmp160196
               (##structure-ref _ctx159297_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp160196))))
    (define gxc#compile-runtime-code
      (lambda (_ctx159243_)
        (letrec ((_compile1159245_
                  (lambda (_ctx159286_)
                    (let* ((_code159288_
                            (##structure-ref
                             _ctx159286_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt159292_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code159288_))
                                (let ((_idstr159290_
                                       (let ((__tmp160197
                                              (##structure-ref
                                               _ctx159286_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp160197))))
                                  (string-append _idstr159290_ '"__0"))
                                '#f)))
                      (if _rt159292_
                          (begin
                            (let ((__tmp160198
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp160198 _ctx159286_ _rt159292_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code159247_
                               _ctx159286_
                               _code159288_)))
                          (let ((_path159295_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx159286_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path159295_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code159248_
                         _ctx159286_
                         _code159288_
                         _rt159292_)))))
                 (_context-timestamp159246_
                  (lambda (_ctx159284_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx159284_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code159247_
                  (lambda (_ctx159266_ _code159267_)
                    (let* ((_lifts159269_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code159272_
                            (let ((__tmp160201
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code159267_))))
                                  (__tmp160200
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp160199
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160201
                               gx#current-expander-context
                               _ctx159266_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts159269_
                               gxc#current-compile-marks
                               __tmp160200
                               gxc#current-compile-identifiers
                               __tmp160199)))
                           (_runtime-code159274_
                            (if (let ((__tmp160205 (unbox _lifts159269_)))
                                  (declare (not safe))
                                  (null? __tmp160205))
                                _runtime-code159272_
                                (let ((__tmp160202
                                       (let ((__tmp160204
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code159272_
                                                      '())))
                                             (__tmp160203
                                              (reverse (unbox _lifts159269_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp160204
                                                 __tmp160203))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160202))))
                           (_runtime-code159276_
                            (let ((__tmp160206
                                   (let ((__tmp160208
                                          (let ((__tmp160209
                                                 (let ((__tmp160212
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp159246_
                                                           _ctx159266_)))
                                                       (__tmp160210
                                                        (let ((__tmp160211
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp160211
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp160212
                                                         __tmp160210))))
                                            (declare (not safe))
                                            (cons 'define __tmp160209)))
                                         (__tmp160207
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code159274_ '()))))
                                     (declare (not safe))
                                     (cons __tmp160208 __tmp160207))))
                              (declare (not safe))
                              (cons 'begin __tmp160206)))
                           (_scm0159278_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159266_
                               '0
                               '".scm"))))
                      (let ((_scms159281_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx159266_))))
                        (let ((__tmp160213
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0159278_
                                    _runtime-code159276_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp160213
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms159281_)
                            (delete-file _scms159281_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0159278_
                           '" => "
                           _scms159281_))
                        (copy-file _scm0159278_ _scms159281_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0159278_))))))
                 (_generate-loader-code159248_
                  (lambda (_ctx159255_ _code159256_ _rt159257_)
                    (let* ((_loader-code159260_
                            (let ((__tmp160214
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code159256_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160214
                               gx#current-expander-context
                               _ctx159255_)))
                           (_loader-code159262_
                            (if _rt159257_
                                (let ((__tmp160215
                                       (let ((__tmp160216
                                              (let ((__tmp160217
                                                     (let ((__tmp160218
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt159257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp160218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160217 '()))))
                                         (declare (not safe))
                                         (cons _loader-code159260_
                                               __tmp160216))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160215))
                                _loader-code159260_)))
                      (let ((__tmp160219
                             (lambda ()
                               (let ((__tmp160220
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159255_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp160220
                                  _loader-code159262_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp160219
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules159250_
                 (let ((__tmp160221
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx159243_))))
                   (declare (not safe))
                   (cons _ctx159243_ __tmp160221))))
            (for-each
             (lambda (_ctx159252_)
               (let ((__tmp160222
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1159245_ _ctx159252_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp160222
                  gxc#current-compile-decls
                  '())))
             _all-modules159250_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx159140_)
        (letrec ((_compile-ssi159142_
                  (lambda (_code159213_)
                    (let* ((_path159215_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159140_
                               '#f
                               '".ssi")))
                           (_prelude159226_
                            (let* ((_super159217_
                                    (##structure-ref
                                     _ctx159140_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e159219_
                                    (##structure-ref
                                     _super159217_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e159219_
                                  ((lambda (_g159221159223_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g159221159223_)))
                                   _$e159219_)
                                  ':<root>)))
                           (_ns159228_
                            (##structure-ref
                             _ctx159140_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr159230_
                            (symbol->string
                             (##structure-ref
                              _ctx159140_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg159237_
                            (let ((_$e159232_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr159230_ '#\/))))
                              (if _$e159232_
                                  ((lambda (_x159235_)
                                     (string->symbol
                                      (substring _idstr159230_ '0 _x159235_)))
                                   _$e159232_)
                                  '#f)))
                           (_rt159239_
                            (let ((__tmp160223
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp160223 _ctx159140_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path159215_))
                      (let ((__tmp160224
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude159226_))
                               (if _pkg159237_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg159237_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns159228_))
                               (newline)
                               (pretty-print _code159213_)
                               (if _rt159239_
                                   (pretty-print
                                    (let ((__tmp160225
                                           (let ((__tmp160229
                                                  (let ((__tmp160230
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp160230)))
                                                 (__tmp160226
                                                  (let ((__tmp160227
                                                         (let ((__tmp160228
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt159239_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp160228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160227 '()))))
                                             (declare (not safe))
                                             (cons __tmp160229 __tmp160226))))
                                      (declare (not safe))
                                      (cons '%#call __tmp160225)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path159215_
                         __tmp160224)))))
                 (_compile-phi159143_
                  (lambda (_part159153_)
                    (let* ((_part159154159167_ _part159153_)
                           (_E159156159171_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part159154159167_))))
                           (_K159157159182_
                            (lambda (_code159174_
                                     _n159175_
                                     _phi159176_
                                     _phi-ctx159177_)
                              (let* ((_code159180_
                                      (let ((__tmp160231
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code159174_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp160231
                                         gx#current-expander-context
                                         _phi-ctx159177_
                                         gx#current-expander-phi
                                         _phi159176_)))
                                     (__tmp160232
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159140_
                                         _n159175_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp160232
                                 _code159180_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part159154159167_))
                          (let ((_hd159158159185_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part159154159167_)))
                                (_tl159159159187_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part159154159167_))))
                            (let ((_phi-ctx159190_ _hd159158159185_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl159159159187_))
                                  (let ((_hd159160159192_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl159159159187_)))
                                        (_tl159161159194_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl159159159187_))))
                                    (let ((_phi159197_ _hd159160159192_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl159161159194_))
                                          (let ((_hd159162159199_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl159161159194_)))
                                                (_tl159163159201_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl159161159194_))))
                                            (let ((_n159204_ _hd159162159199_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl159163159201_))
                                                  (let ((_hd159164159206_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl159163159201_)))
                                                        (_tl159165159208_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl159163159201_))))
                                                    (let ((_code159211_
                                                           _hd159164159206_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl159165159208_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K159157159182_
                                                             _code159211_
                                                             _n159204_
                                                             _phi159197_
                                                             _phi-ctx159190_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E159156159171_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E159156159171_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E159156159171_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E159156159171_)))))
                          (let () (declare (not safe)) (_E159156159171_)))))))
          (let ((_g160233_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx159140_))))
            (begin
              (let ((_g160234_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g160233_)
                           (##vector-length _g160233_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g160234_ 2)))
                    (error "Context expects 2 values" _g160234_)))
              (let ((_ssi-code159145_
                     (let () (declare (not safe)) (##vector-ref _g160233_ 0)))
                    (_phi-code159146_
                     (let () (declare (not safe)) (##vector-ref _g160233_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi159142_ _ssi-code159145_))
                  (let ((_threads159151_
                         (map (lambda (_code159148_)
                                (let ((__tmp160235
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi159143_
                                            _code159148_)))))
                                  (declare (not safe))
                                  (spawn __tmp160235)))
                              _phi-code159146_)))
                    (for-each gxc#join! _threads159151_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx159123_)
        (let* ((_path159125_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx159123_ '#f '".ssxi.ss")))
               (_code159127_
                (let ((__tmp160236
                       (##structure-ref
                        _ctx159123_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp160236)))
               (_idstr159129_
                (symbol->string
                 (##structure-ref _ctx159123_ '1 gx#expander-context::t '#f)))
               (_pkg159136_
                (let ((_$e159131_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr159129_ '#\/))))
                  (if _$e159131_
                      ((lambda (_x159134_)
                         (string->symbol
                          (substring _idstr159129_ '0 _x159134_)))
                       _$e159131_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path159125_))
          (let ((__tmp160237
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg159136_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg159136_))
                       '#!void)
                   (newline)
                   (pretty-print _code159127_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path159125_ __tmp160237)))))
    (define gxc#generate-meta-code
      (lambda (_ctx159116_)
        (let* ((_state159118_
                (let ((__obj159998
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj159998 _ctx159116_)
                  __obj159998))
               (_ssi-code159120_
                (let ((__tmp160238
                       (##structure-ref
                        _ctx159116_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp160238
                   'state:
                   _state159118_))))
          (values _ssi-code159120_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state159118_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx159109_)
        (let ((_lifts159111_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160241
                 (lambda ()
                   (let ((_code159114_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx159109_))))
                     (if (let ((__tmp160245 (unbox _lifts159111_)))
                           (declare (not safe))
                           (null? __tmp160245))
                         _code159114_
                         (let ((__tmp160242
                                (let ((__tmp160244
                                       (let ()
                                         (declare (not safe))
                                         (cons _code159114_ '())))
                                      (__tmp160243
                                       (reverse (unbox _lifts159111_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp160244 __tmp160243))))
                           (declare (not safe))
                           (cons 'begin __tmp160242))))))
                (__tmp160240
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp160239
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp160241
             gxc#current-compile-lift
             _lifts159111_
             gxc#current-compile-marks
             __tmp160240
             gxc#current-compile-identifiers
             __tmp160239)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx159105_)
        (let ((_modules159107_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160246
                 (##structure-ref _ctx159105_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp160246 'modules: _modules159107_))
          (reverse (unbox _modules159107_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path159088_ _code159089_ _phi?159090_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path159088_))
        (let ((__tmp160247
               (lambda ()
                 (pretty-print
                  (let ((__tmp160248
                         (let ((__tmp160255
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp160249
                                (let ((__tmp160254
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp160250
                                       (let ((__tmp160253
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp160251
                                              (let ((__tmp160252
                                                     (if _phi?159090_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp160252))))
                                         (declare (not safe))
                                         (cons __tmp160253 __tmp160251))))
                                  (declare (not safe))
                                  (cons __tmp160254 __tmp160250))))
                           (declare (not safe))
                           (cons __tmp160255 __tmp160249))))
                    (declare (not safe))
                    (cons 'declare __tmp160248)))
                 (pretty-print _code159089_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path159088_ __tmp160247))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path159088_ _phi?159090_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path159088_))))
    (define gxc#compile-scm-file__0
      (lambda (_path159096_ _code159097_)
        (let ((_phi?159099_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path159096_ _code159097_ _phi?159099_))))
    (define gxc#compile-scm-file
      (lambda _g160257_
        (let ((_g160256_ (let () (declare (not safe)) (##length _g160257_))))
          (cond ((let () (declare (not safe)) (##fx= _g160256_ 2))
                 (apply (lambda (_path159096_ _code159097_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path159096_
                             _code159097_)))
                        _g160257_))
                ((let () (declare (not safe)) (##fx= _g160256_ 3))
                 (apply (lambda (_path159101_ _code159102_ _phi?159103_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path159101_
                             _code159102_
                             _phi?159103_)))
                        _g160257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g160257_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?158989_)
        (let _lp158991_ ((_rest158993_ (gxc#current-compile-gsc-options))
                         (_opts158994_ '()))
          (let* ((_rest158995159015_ _rest158993_)
                 (_else158999159023_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?158989_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160258
                               (let ((__tmp160259 (reverse _opts158994_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp160259))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp160258))
                        (reverse _opts158994_)))))
            (let ((_K159009159066_
                   (lambda (_rest159064_)
                     (let ()
                       (declare (not safe))
                       (_lp158991_ _rest159064_ _opts158994_))))
                  (_K159004159048_
                   (lambda (_rest159046_)
                     (let ()
                       (declare (not safe))
                       (_lp158991_ _rest159046_ _opts158994_))))
                  (_K159001159030_
                   (lambda (_rest159027_ _opt159028_)
                     (let ((__tmp160260
                            (let ()
                              (declare (not safe))
                              (cons _opt159028_ _opts158994_))))
                       (declare (not safe))
                       (_lp158991_ _rest159027_ __tmp160260)))))
              (if (let () (declare (not safe)) (##pair? _rest158995159015_))
                  (let ((_tl159011159071_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158995159015_)))
                        (_hd159010159069_
                         (let ()
                           (declare (not safe))
                           (##car _rest158995159015_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159010159069_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159011159071_))
                            (let* ((_tl159013159074_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159011159071_)))
                                   (_rest159077_ _tl159013159074_))
                              (declare (not safe))
                              (_K159009159066_ _rest159077_))
                            (let ((_opt159038_ _hd159010159069_)
                                  (_rest159040_ _tl159011159071_))
                              (let ()
                                (declare (not safe))
                                (_K159001159030_ _rest159040_ _opt159038_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159010159069_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159011159071_))
                                (let* ((_tl159008159056_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159011159071_)))
                                       (_rest159059_ _tl159008159056_))
                                  (declare (not safe))
                                  (_K159004159048_ _rest159059_))
                                (let ((_opt159038_ _hd159010159069_)
                                      (_rest159040_ _tl159011159071_))
                                  (let ()
                                    (declare (not safe))
                                    (_K159001159030_
                                     _rest159040_
                                     _opt159038_))))
                            (let ((_opt159038_ _hd159010159069_)
                                  (_rest159040_ _tl159011159071_))
                              (let ()
                                (declare (not safe))
                                (_K159001159030_ _rest159040_ _opt159038_))))))
                  (let () (declare (not safe)) (_else158999159023_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?159083_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?159083_))))
    (define gxc#gsc-link-options
      (lambda _g160262_
        (let ((_g160261_ (let () (declare (not safe)) (##length _g160262_))))
          (cond ((let () (declare (not safe)) (##fx= _g160261_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g160262_))
                ((let () (declare (not safe)) (##fx= _g160261_ 1))
                 (apply (lambda (_phi?159085_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?159085_)))
                        _g160262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g160262_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?158890_)
        (let _lp158892_ ((_rest158894_ (gxc#current-compile-gsc-options))
                         (_opts158895_ '()))
          (let* ((_rest158896158916_ _rest158894_)
                 (_else158900158924_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?158890_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160263
                               (let ((__tmp160264 (reverse _opts158895_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp160264))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp160263))
                        (reverse _opts158895_)))))
            (let ((_K158910158963_
                   (lambda (_rest158960_ _opt158961_)
                     (let ((__tmp160265
                            (let ((__tmp160266
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts158895_))))
                              (declare (not safe))
                              (cons _opt158961_ __tmp160266))))
                       (declare (not safe))
                       (_lp158892_ _rest158960_ __tmp160265))))
                  (_K158905158944_
                   (lambda (_rest158942_)
                     (let ()
                       (declare (not safe))
                       (_lp158892_ _rest158942_ _opts158895_))))
                  (_K158902158930_
                   (lambda (_rest158928_)
                     (let ()
                       (declare (not safe))
                       (_lp158892_ _rest158928_ _opts158895_)))))
              (if (let () (declare (not safe)) (##pair? _rest158896158916_))
                  (let ((_tl158912158968_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158896158916_)))
                        (_hd158911158966_
                         (let ()
                           (declare (not safe))
                           (##car _rest158896158916_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158911158966_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158912158968_))
                            (let ((_tl158914158973_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl158912158968_)))
                                  (_hd158913158971_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl158912158968_))))
                              (let ((_opt158976_ _hd158913158971_)
                                    (_rest158978_ _tl158914158973_))
                                (let ()
                                  (declare (not safe))
                                  (_K158910158963_ _rest158978_ _opt158976_))))
                            (let ((_rest158936_ _tl158912158968_))
                              (declare (not safe))
                              (_K158902158930_ _rest158936_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158911158966_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158912158968_))
                                (let* ((_tl158909158952_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl158912158968_)))
                                       (_rest158955_ _tl158909158952_))
                                  (declare (not safe))
                                  (_K158905158944_ _rest158955_))
                                (let ((_rest158936_ _tl158912158968_))
                                  (declare (not safe))
                                  (_K158902158930_ _rest158936_)))
                            (let ((_rest158936_ _tl158912158968_))
                              (declare (not safe))
                              (_K158902158930_ _rest158936_)))))
                  (let () (declare (not safe)) (_else158900158924_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?158984_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?158984_))))
    (define gxc#gsc-cc-options
      (lambda _g160268_
        (let ((_g160267_ (let () (declare (not safe)) (##length _g160268_))))
          (cond ((let () (declare (not safe)) (##fx= _g160267_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g160268_))
                ((let () (declare (not safe)) (##fx= _g160267_ 1))
                 (apply (lambda (_phi?158986_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?158986_)))
                        _g160268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g160268_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir158885_)
        (let* ((_user-staticdir158887_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp160269
                (let ((__tmp160270
                       (string-append
                        '"-I "
                        _staticdir158885_
                        '" -I "
                        _user-staticdir158887_)))
                  (declare (not safe))
                  (cons __tmp160270 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp160269))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp158797_ ((_rest158799_ (gxc#current-compile-gsc-options))
                         (_opts158800_ '()))
          (let* ((_rest158801158821_ _rest158799_)
                 (_else158805158829_ (lambda () _opts158800_)))
            (let ((_K158815158872_
                   (lambda (_rest158870_)
                     (let ()
                       (declare (not safe))
                       (_lp158797_ _rest158870_ _opts158800_))))
                  (_K158810158850_
                   (lambda (_rest158847_ _opt158848_)
                     (let ((__tmp160271
                            (append _opts158800_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt158848_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp158797_ _rest158847_ __tmp160271))))
                  (_K158807158835_
                   (lambda (_rest158833_)
                     (let ()
                       (declare (not safe))
                       (_lp158797_ _rest158833_ _opts158800_)))))
              (if (let () (declare (not safe)) (##pair? _rest158801158821_))
                  (let ((_tl158817158877_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158801158821_)))
                        (_hd158816158875_
                         (let ()
                           (declare (not safe))
                           (##car _rest158801158821_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158816158875_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158817158877_))
                            (let* ((_tl158819158880_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl158817158877_)))
                                   (_rest158883_ _tl158819158880_))
                              (declare (not safe))
                              (_K158815158872_ _rest158883_))
                            (let ((_rest158841_ _tl158817158877_))
                              (declare (not safe))
                              (_K158807158835_ _rest158841_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158816158875_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158817158877_))
                                (let ((_tl158814158860_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl158817158877_)))
                                      (_hd158813158858_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl158817158877_))))
                                  (let ((_opt158863_ _hd158813158858_)
                                        (_rest158865_ _tl158814158860_))
                                    (let ()
                                      (declare (not safe))
                                      (_K158810158850_
                                       _rest158865_
                                       _opt158863_))))
                                (let ((_rest158841_ _tl158817158877_))
                                  (declare (not safe))
                                  (_K158807158835_ _rest158841_)))
                            (let ((_rest158841_ _tl158817158877_))
                              (declare (not safe))
                              (_K158807158835_ _rest158841_)))))
                  (let () (declare (not safe)) (_else158805158829_))))))))
    (define gxc#not-string-empty?
      (lambda (_str158794_)
        (let ((__tmp160272
               (let () (declare (not safe)) (string-empty? _str158794_))))
          (declare (not safe))
          (not __tmp160272))))
    (define gxc#gsc-compile-file
      (lambda (_path158762_ _phi?158763_)
        (letrec ((_gsc-link-path158765_
                  (lambda (_base-path158786_)
                    (let _lp158788_ ((_n158790_ '1))
                      (let ((_path158792_
                             (string-append
                              _base-path158786_
                              '".o"
                              (number->string _n158790_))))
                        (if (file-exists? _path158792_)
                            (let ((__tmp160273
                                   (let ()
                                     (declare (not safe))
                                     (+ _n158790_ '1))))
                              (declare (not safe))
                              (_lp158788_ __tmp160273))
                            _path158792_))))))
          (let* ((_base-path158767_ (path-strip-extension _path158762_))
                 (_path-c158769_ (string-append _base-path158767_ '".c"))
                 (_path-o158771_ (string-append _base-path158767_ '".o"))
                 (_link-path158773_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path158765_ _base-path158767_)))
                 (_link-path-c158775_ (string-append _link-path158773_ '".c"))
                 (_link-path-o158777_ (string-append _link-path158773_ '".o"))
                 (_gsc-link-opts158779_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?158763_)))
                 (_gsc-cc-opts158781_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?158763_)))
                 (_gcc-ld-opts158783_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp160280 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160274
                   (let ((__tmp160275
                          (let ((__tmp160276
                                 (let ((__tmp160277
                                        (let ((__tmp160278
                                               (let ((__tmp160279
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path158762_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp160279
                                                         _gsc-link-opts158779_))))
                                          (declare (not safe))
                                          (cons _link-path-c158775_
                                                __tmp160278))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp160277))))
                            (declare (not safe))
                            (cons '"-flat" __tmp160276))))
                     (declare (not safe))
                     (cons '"-link" __tmp160275))))
              (declare (not safe))
              (gxc#invoke __tmp160280 __tmp160274 'stdout-redirection: '#t))
            (let ((__tmp160287 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160281
                   (let ((__tmp160282
                          (let ((__tmp160283
                                 (let ((__tmp160284
                                        (let ((__tmp160285
                                               (let ((__tmp160286
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c158775_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c158769_
                                                       __tmp160286))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp160285
                                                  _gsc-cc-opts158781_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp160284))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp160283))))
                     (declare (not safe))
                     (cons '"-obj" __tmp160282))))
              (declare (not safe))
              (gxc#invoke __tmp160287 __tmp160281 'stdout-redirection: '#t))
            (let ((__tmp160293 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp160288
                   (let ((__tmp160289
                          (let ((__tmp160290
                                 (let ((__tmp160291
                                        (let ((__tmp160292
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o158777_
                                                       _gcc-ld-opts158783_))))
                                          (declare (not safe))
                                          (cons _path-o158771_ __tmp160292))))
                                   (declare (not safe))
                                   (cons _link-path158773_ __tmp160291))))
                            (declare (not safe))
                            (cons '"-o" __tmp160290))))
                     (declare (not safe))
                     (cons '"-shared" __tmp160289))))
              (declare (not safe))
              (gxc#invoke __tmp160293 __tmp160288))
            (for-each
             delete-file
             (let ((__tmp160294
                    (let ((__tmp160295
                           (let ((__tmp160296
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o158777_ '()))))
                             (declare (not safe))
                             (cons _link-path-c158775_ __tmp160296))))
                      (declare (not safe))
                      (cons _path-o158771_ __tmp160295))))
               (declare (not safe))
               (cons _path-c158769_ __tmp160294)))))))
    (define gxc#compile-output-file
      (lambda (_ctx158733_ _n158734_ _ext158735_)
        (letrec ((_module-relative-path158737_
                  (lambda (_ctx158760_)
                    (path-strip-directory
                     (let ((__tmp160297
                            (##structure-ref
                             _ctx158760_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp160297)))))
                 (_module-source-directory158738_
                  (lambda (_ctx158756_)
                    (path-directory
                     (let ((_mpath158758_
                            (##structure-ref
                             _ctx158756_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath158758_))
                           _mpath158758_
                           (last _mpath158758_))))))
                 (_section-string158739_
                  (lambda (_n158754_)
                    (if (let () (declare (not safe)) (number? _n158754_))
                        (number->string _n158754_)
                        (if (let () (declare (not safe)) (symbol? _n158754_))
                            (symbol->string _n158754_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n158754_))
                                _n158754_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n158754_)))))))
                 (_file-name158740_
                  (lambda (_path158752_)
                    (if _n158734_
                        (string-append
                         _path158752_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string158739_ _n158734_))
                         _ext158735_)
                        (string-append _path158752_ _ext158735_))))
                 (_file-path158741_
                  (lambda ()
                    (let ((_$e158747_ (gxc#current-compile-output-dir)))
                      (if _$e158747_
                          ((lambda (_outdir158750_)
                             (path-expand
                              (let ((__tmp160299
                                     (let ((__tmp160300
                                            (##structure-ref
                                             _ctx158733_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp160300))))
                                (declare (not safe))
                                (_file-name158740_ __tmp160299))
                              _outdir158750_))
                           _$e158747_)
                          (path-expand
                           (let ((__tmp160298
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path158737_
                                     _ctx158733_))))
                             (declare (not safe))
                             (_file-name158740_ __tmp160298))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory158738_
                              _ctx158733_))))))))
          (let ((_path158743_
                 (let () (declare (not safe)) (_file-path158741_))))
            (let ((__tmp160301
                   (lambda ()
                     (let ((__tmp160302 (path-directory _path158743_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160302)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160301))
            _path158743_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx158715_)
        (letrec ((_file-name158717_
                  (lambda (_id158731_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id158731_))
                     '".scm")))
                 (_file-path158718_
                  (lambda ()
                    (let* ((_file158724_
                            (let ((__tmp160303
                                   (##structure-ref
                                    _ctx158715_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name158717_ __tmp160303)))
                           (_$e158726_ (gxc#current-compile-output-dir)))
                      (if _$e158726_
                          ((lambda (_outdir158729_)
                             (path-expand
                              _file158724_
                              (path-expand '"static" _outdir158729_)))
                           _$e158726_)
                          (path-expand _file158724_ '"static"))))))
          (let ((_path158720_
                 (let () (declare (not safe)) (_file-path158718_))))
            (let ((__tmp160304
                   (lambda ()
                     (let ((__tmp160305 (path-directory _path158720_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160305)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160304))
            _path158720_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx158709_ _opts158710_)
        (let ((_$e158712_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts158710_))))
          (if _$e158712_
              (values _$e158712_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx158709_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr158702_)
        (if (let () (declare (not safe)) (string? _idstr158702_))
            (let* ((_str158704_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr158702_)))
                   (_strs158706_
                    (let ()
                      (declare (not safe))
                      (string-split _str158704_ '#\/))))
              (let () (declare (not safe)) (string-join _strs158706_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr158702_))
                (let ((__tmp160306 (symbol->string _idstr158702_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp160306))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr158702_))))))
    (define gxc#invoke__%
      (lambda (_g160307_
               _stdout-redirection158663158667_
               _stderr-redirection158664158669_
               _program158671_
               _args158672_)
        (let* ((_stdout-redirection158674_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection158663158667_ absent-value))
                    '#f
                    _stdout-redirection158663158667_))
               (_stderr-redirection158676_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection158664158669_ absent-value))
                    '#f
                    _stderr-redirection158664158669_)))
          (let ((__tmp160308
                 (let ()
                   (declare (not safe))
                   (cons _program158671_ _args158672_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp160308))
          (let* ((_proc158678_
                  (open-process
                   (let ((__tmp160309
                          (let ((__tmp160310
                                 (let ((__tmp160311
                                        (let ((__tmp160312
                                               (let ((__tmp160313
                                                      (let ((__tmp160314
                                                             (let ((__tmp160315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection158676_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp160315))))
                (declare (not safe))
                (cons _stdout-redirection158674_ __tmp160314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp160313))))
                                          (declare (not safe))
                                          (cons _args158672_ __tmp160312))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp160311))))
                            (declare (not safe))
                            (cons _program158671_ __tmp160310))))
                     (declare (not safe))
                     (cons 'path: __tmp160309))))
                 (_output158683_
                  (if (or _stdout-redirection158674_
                          _stderr-redirection158676_)
                      (read-line _proc158678_ '#f)
                      '#f)))
            (let ((_status158686_ (process-status _proc158678_)))
              (close-port _proc158678_)
              (if (let () (declare (not safe)) (zero? _status158686_))
                  '#!void
                  (begin
                    (display _output158683_)
                    (let ((__tmp160316
                           (let ()
                             (declare (not safe))
                             (cons _program158671_ _args158672_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp160316
                       _status158686_)))))))))
    (define gxc#invoke__@
      (lambda (_keys158662158691_ . _args158693_)
        (apply gxc#invoke__%
               _keys158662158691_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158662158691_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158662158691_
                  'stderr-redirection:
                  absent-value))
               _args158693_)))
    (define gxc#invoke
      (lambda _args158665158699_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args158665158699_)))
    (define gxc#join!
      (lambda (_thread158656_)
        (let ((__tmp160318
               (lambda (_exn158658_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn158658_))
                     (let ((__tmp160319
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn158658_))))
                       (declare (not safe))
                       (raise __tmp160319))
                     (let () (declare (not safe)) (raise _exn158658_)))))
              (__tmp160317 (lambda () (thread-join! _thread158656_))))
          (declare (not safe))
          (with-catch __tmp160318 __tmp160317))))))
