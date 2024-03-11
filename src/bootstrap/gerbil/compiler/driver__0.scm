(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710139358)
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
      (lambda (_path159010_ _fun159011_)
        (with-output-to-file
         (let ((__tmp159104
                (let ()
                  (declare (not safe))
                  (cons _path159010_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp159104))
         _fun159011_)))
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
      (lambda (_gerbil-libdir159005_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir159005_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
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
      (lambda (_dir159003_) (delete-file-or-directory _dir159003_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath158977_ _opts158978_)
        (if (let () (declare (not safe)) (string? _srcpath158977_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158977_)))
        (let ((_outdir158980_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158978_)))
              (_invoke-gsc?158981_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158978_)))
              (_gsc-options158982_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158978_)))
              (_keep-scm?158983_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158978_)))
              (_verbosity158984_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158978_)))
              (_optimize158985_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts158978_)))
              (_debug158986_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158978_)))
              (_gen-ssxi158987_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts158978_))))
          (if _outdir158980_
              (let ((__tmp159105
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158980_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159105))
              '#!void)
          (if _optimize158985_
              (let ((__tmp159106
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159106))
              '#!void)
          (let ((__tmp159110
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath158977_))
                   (let ((__tmp159111
                          (let ((__tmp159112
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158977_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp159112))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp159111))))
                (__tmp159109
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp159107
                 (let ((__tmp159108
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158977_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp159108))))
            (declare (not safe))
            (call-with-parameters
             __tmp159110
             gxc#current-compile-output-dir
             _outdir158980_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158981_
             gxc#current-compile-gsc-options
             _gsc-options158982_
             gxc#current-compile-keep-scm
             _keep-scm?158983_
             gxc#current-compile-verbose
             _verbosity158984_
             gxc#current-compile-optimize
             _optimize158985_
             gxc#current-compile-debug
             _debug158986_
             gxc#current-compile-generate-ssxi
             _gen-ssxi158987_
             gxc#current-compile-timestamp
             __tmp159109
             gxc#current-compile-context
             __tmp159107
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath158996_)
        (let ((_opts158998_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath158996_ _opts158998_))))
    (define gxc#compile-module
      (lambda _g159114_
        (let ((_g159113_ (let () (declare (not safe)) (##length _g159114_))))
          (cond ((let () (declare (not safe)) (##fx= _g159113_ 1))
                 (apply (lambda (_srcpath158996_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath158996_)))
                        _g159114_))
                ((let () (declare (not safe)) (##fx= _g159113_ 2))
                 (apply (lambda (_srcpath159000_ _opts159001_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath159000_
                             _opts159001_)))
                        _g159114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g159114_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath158953_ _opts158954_)
        (if (let () (declare (not safe)) (string? _srcpath158953_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158953_)))
        (let ((_outdir158956_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158954_)))
              (_invoke-gsc?158957_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158954_)))
              (_gsc-options158958_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158954_)))
              (_keep-scm?158959_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158954_)))
              (_verbosity158960_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158954_)))
              (_debug158961_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158954_))))
          (if _outdir158956_
              (let ((__tmp159115
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158956_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159115))
              '#!void)
          (let ((__tmp159119
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath158953_))
                   (let ((__tmp159120
                          (let ((__tmp159121
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158953_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp159121))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp159120
                      _opts158954_))))
                (__tmp159118
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp159116
                 (let ((__tmp159117
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158953_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp159117))))
            (declare (not safe))
            (call-with-parameters
             __tmp159119
             gxc#current-compile-output-dir
             _outdir158956_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158957_
             gxc#current-compile-gsc-options
             _gsc-options158958_
             gxc#current-compile-keep-scm
             _keep-scm?158959_
             gxc#current-compile-verbose
             _verbosity158960_
             gxc#current-compile-debug
             _debug158961_
             gxc#current-compile-timestamp
             __tmp159118
             gxc#current-compile-context
             __tmp159116
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath158969_)
        (let ((_opts158971_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath158969_ _opts158971_))))
    (define gxc#compile-exe
      (lambda _g159123_
        (let ((_g159122_ (let () (declare (not safe)) (##length _g159123_))))
          (cond ((let () (declare (not safe)) (##fx= _g159122_ 1))
                 (apply (lambda (_srcpath158969_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath158969_)))
                        _g159123_))
                ((let () (declare (not safe)) (##fx= _g159122_ 2))
                 (apply (lambda (_srcpath158973_ _opts158974_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath158973_ _opts158974_)))
                        _g159123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g159123_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx158949_ _opts158950_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts158950_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx158949_
               _opts158950_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx158949_
               _opts158950_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx158832_ _opts158833_)
        (letrec ((_generate-stub158835_
                  (lambda (_builtin-modules158945_)
                    (let ((_mod-main158947_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158832_ 'main))))
                      (write (let ((__tmp159124
                                    (let ((__tmp159125
                                           (let ((__tmp159126
                                                  (let ((__tmp159127
                                                         (let ((__tmp159129
                                                                (let ((__tmp159130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules158945_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp159130)))
                       (__tmp159128
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp159129 __tmp159128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp159127))))
                                             (declare (not safe))
                                             (cons __tmp159126 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp159125))))
                               (declare (not safe))
                               (cons 'define __tmp159124)))
                      (write (let ((__tmp159131
                                    (let ((__tmp159170
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp159132
                                           (let ((__tmp159133
                                                  (let ((__tmp159134
                                                         (let ((__tmp159158
                                                                (let ((__tmp159159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp159160
                                      (let ((__tmp159168
                                             (let ((__tmp159169
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp159169)))
                                            (__tmp159161
                                             (let ((__tmp159162
                                                    (let ((__tmp159163
                                                           (let ((__tmp159164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159165
                                 (let ((__tmp159166
                                        (let ((__tmp159167
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp159167 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp159166))))
                            (declare (not safe))
                            (cons __tmp159165 '()))))
                     (declare (not safe))
                     (cons _mod-main158947_ __tmp159164))))
              (declare (not safe))
              (cons 'apply __tmp159163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp159162 '()))))
                                        (declare (not safe))
                                        (cons __tmp159168 __tmp159161))))
                                 (declare (not safe))
                                 (cons '() __tmp159160))))
                          (declare (not safe))
                          (cons 'lambda __tmp159159)))
                       (__tmp159135
                        (let ((__tmp159136
                               (let ((__tmp159137
                                      (let ((__tmp159138
                                             (let ((__tmp159149
                                                    (let ((__tmp159150
                                                           (let ((__tmp159151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159152
                                 (let ((__tmp159153
                                        (let ((__tmp159154
                                               (let ((__tmp159155
                                                      (let ((__tmp159156
                                                             (let ((__tmp159157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp159157 '()))))
                (declare (not safe))
                (cons 'force-output __tmp159156))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp159155 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp159154))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp159153))))
                            (declare (not safe))
                            (cons __tmp159152 '()))))
                     (declare (not safe))
                     (cons 'void __tmp159151))))
              (declare (not safe))
              (cons 'with-catch __tmp159150)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp159139
                                                    (let ((__tmp159140
                                                           (let ((__tmp159141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159142
                                 (let ((__tmp159143
                                        (let ((__tmp159144
                                               (let ((__tmp159145
                                                      (let ((__tmp159146
                                                             (let ((__tmp159147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp159148
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp159148 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp159147))))
                (declare (not safe))
                (cons __tmp159146 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp159145))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp159144))))
                                   (declare (not safe))
                                   (cons __tmp159143 '()))))
                            (declare (not safe))
                            (cons 'void __tmp159142))))
                     (declare (not safe))
                     (cons 'with-catch __tmp159141))))
              (declare (not safe))
              (cons __tmp159140 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp159149
                                                     __tmp159139))))
                                        (declare (not safe))
                                        (cons '() __tmp159138))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp159137))))
                          (declare (not safe))
                          (cons __tmp159136 '()))))
                   (declare (not safe))
                   (cons __tmp159158 __tmp159135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp159134))))
                                             (declare (not safe))
                                             (cons __tmp159133 '()))))
                                      (declare (not safe))
                                      (cons __tmp159170 __tmp159132))))
                               (declare (not safe))
                               (cons 'define __tmp159131)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts158836_
                  (lambda (_libgerbil158943_)
                    (call-with-input-file
                     (string-append _libgerbil158943_ '".ldd")
                     read)))
                 (_replace-extension158837_
                  (lambda (_path158940_ _ext158941_)
                    (string-append
                     (path-strip-extension _path158940_)
                     _ext158941_)))
                 (_not-exclude-module?158838_
                  (lambda (_ctx158936_)
                    (let ((_id-str158938_
                           (symbol->string
                            (##structure-ref
                             _ctx158936_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp159172
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str158938_))))
                            (declare (not safe))
                            (not __tmp159172))
                          (let ((__tmp159171
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str158938_))))
                            (declare (not safe))
                            (not __tmp159171))
                          '#f))))
                 (_not-file-empty?158839_
                  (lambda (_path158934_)
                    (let ((__tmp159173
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path158934_))))
                      (declare (not safe))
                      (not __tmp159173))))
                 (_compile-stub158840_
                  (lambda (_output-scm158847_ _output-bin158848_)
                    (let* ((_gerbil-home158850_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158852_
                            (path-expand '"lib" _gerbil-home158850_))
                           (_gerbil-staticdir158854_
                            (path-expand '"static" _gerbil-libdir158852_))
                           (_gxlink158856_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir158852_))
                           (_tmp158858_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path158862_
                            (lambda (_f158860_)
                              (path-expand
                               (path-strip-directory _f158860_)
                               _tmp158858_)))
                           (_deps158864_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158832_)))
                           (_deps158866_
                            (filter _not-exclude-module?158838_ _deps158864_))
                           (_src-deps-scm158868_
                            (map gxc#find-static-module-file _deps158866_))
                           (_src-deps-scm158870_
                            (filter _not-file-empty?158839_
                                    _src-deps-scm158868_))
                           (_src-deps-scm158872_
                            (map path-expand _src-deps-scm158870_))
                           (_deps-scm158874_
                            (map _tmp-path158862_ _src-deps-scm158872_))
                           (_deps-c158880_
                            (map (lambda (_g158875158877_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158837_
                                      _g158875158877_
                                      '".c")))
                                 _deps-scm158874_))
                           (_deps-o158886_
                            (map (lambda (_g158881158883_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158837_
                                      _g158881158883_
                                      '".o")))
                                 _deps-scm158874_))
                           (_src-bin-scm158888_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158832_)))
                           (_src-bin-scm158890_
                            (path-expand _src-bin-scm158888_))
                           (_bin-scm158892_
                            (let ()
                              (declare (not safe))
                              (_tmp-path158862_ _src-bin-scm158890_)))
                           (_bin-c158894_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158837_
                               _bin-scm158892_
                               '".c")))
                           (_bin-o158896_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158837_
                               _bin-scm158892_
                               '".o")))
                           (_output-bin158898_
                            (path-expand _output-bin158848_))
                           (_output-scm158900_
                            (path-expand _output-scm158847_))
                           (_output-c158902_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158837_
                               _output-scm158900_
                               '".c")))
                           (_output-o158904_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158837_
                               _output-scm158900_
                               '".o")))
                           (_output_-c158906_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158837_
                               _output-scm158900_
                               '"_.c")))
                           (_output_-o158908_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158837_
                               _output-scm158900_
                               '"_.o")))
                           (_gsc-link-opts158910_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158912_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158914_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir158854_)))
                           (_output-ld-opts158916_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a158918_
                            (path-expand '"libgerbil.a" _gerbil-libdir158852_))
                           (_libgerbil.so158920_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir158852_))
                           (_libgerbil-ld-opts158922_
                            (if (file-exists? _libgerbil.so158920_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts158836_
                                   _libgerbil.so158920_))
                                (if (file-exists? _libgerbil.a158918_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts158836_
                                       _libgerbil.a158918_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a158918_
                                       _libgerbil.so158920_)))))
                           (_rpath158924_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158852_)))
                           (_builtin-modules158928_
                            (map (lambda (_mod158926_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod158926_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx158832_ _deps158866_)))))
                      (let ((__tmp159174
                             (lambda ()
                               (let ((__tmp159175
                                      (path-directory _output-bin158898_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp159175)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp159174))
                      (let ((__tmp159176
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub158835_
                                  _builtin-modules158928_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158900_
                         __tmp159176))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp159177
                                   (lambda () (create-directory _tmp158858_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp159177))
                            (for-each
                             copy-file
                             _src-deps-scm158872_
                             _deps-scm158874_)
                            (copy-file _src-bin-scm158890_ _bin-scm158892_)
                            (let ((__tmp159185
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159178
                                   (let ((__tmp159179
                                          (let ((__tmp159180
                                                 (let ((__tmp159181
                                                        (let ((__tmp159182
                                                               (let ((__tmp159183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159184
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm158900_ '()))))
                                (declare (not safe))
                                (cons _bin-scm158892_ __tmp159184))))
                         (declare (not safe))
                         (foldr1 cons __tmp159183 _deps-scm158874_))))
                  (declare (not safe))
                  (foldr1 cons __tmp159182 _gsc-link-opts158910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink158856_
                                                         __tmp159181))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp159180))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp159179))))
                              (declare (not safe))
                              (gxc#invoke __tmp159185 __tmp159178))
                            (let ((__tmp159193
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159186
                                   (let ((__tmp159187
                                          (let ((__tmp159188
                                                 (let ((__tmp159189
                                                        (let ((__tmp159190
                                                               (let ((__tmp159191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159192
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c158906_ '()))))
                                (declare (not safe))
                                (cons _output-c158902_ __tmp159192))))
                         (declare (not safe))
                         (cons _bin-c158894_ __tmp159191))))
                  (declare (not safe))
                  (foldr1 cons __tmp159190 _deps-c158880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159189
                                                           _gsc-static-opts158914_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp159188
                                                    _gsc-cc-opts158912_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp159187))))
                              (declare (not safe))
                              (gxc#invoke __tmp159193 __tmp159186))
                            (let ((__tmp159206
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp159194
                                   (let ((__tmp159195
                                          (let ((__tmp159196
                                                 (let ((__tmp159197
                                                        (let ((__tmp159198
                                                               (let ((__tmp159199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159200
                                     (let ((__tmp159201
                                            (let ((__tmp159202
                                                   (let ((__tmp159203
                                                          (let ((__tmp159204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp159205
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts158922_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp159205))))
                    (declare (not safe))
                    (cons _gerbil-libdir158852_ __tmp159204))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp159203))))
                                              (declare (not safe))
                                              (cons _rpath158924_
                                                    __tmp159202))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp159201
                                               _output-ld-opts158916_))))
                                (declare (not safe))
                                (cons _output_-o158908_ __tmp159200))))
                         (declare (not safe))
                         (cons _output-o158904_ __tmp159199))))
                  (declare (not safe))
                  (cons _bin-o158896_ __tmp159198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159197
                                                           _deps-o158886_))))
                                            (declare (not safe))
                                            (cons _output-bin158898_
                                                  __tmp159196))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp159195))))
                              (declare (not safe))
                              (gxc#invoke __tmp159206 __tmp159194))
                            (for-each
                             delete-file
                             (let ((__tmp159207
                                    (let ((__tmp159208
                                           (let ((__tmp159209
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o158908_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o158904_
                                                   __tmp159209))))
                                      (declare (not safe))
                                      (cons _output_-c158906_ __tmp159208))))
                               (declare (not safe))
                               (cons _output-c158902_ __tmp159207)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp158858_)))
                          '#!void)))))
          (let* ((_output-bin158842_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158832_ _opts158833_)))
                 (_output-scm158844_
                  (string-append _output-bin158842_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158840_ _output-scm158844_ _output-bin158842_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158844_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx158657_ _opts158658_)
        (letrec ((_reset-declare158660_
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
                 (_generate-stub158661_
                  (lambda (_deps158823_)
                    (let ((_mod-main158825_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158657_ 'main)))
                          (_reset-decl158826_
                           (let ()
                             (declare (not safe))
                             (_reset-declare158660_)))
                          (_user-decl158827_
                           (let ()
                             (declare (not safe))
                             (_user-declare158662_))))
                      (for-each
                       (lambda (_dep158829_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl158826_)
                         (newline)
                         (if _user-decl158827_
                             (begin (write _user-decl158827_) (newline))
                             '#!void)
                         (write (let ((__tmp159210
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep158829_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp159210)))
                         (newline))
                       _deps158823_)
                      (write (let ((__tmp159211
                                    (let ((__tmp159224
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp159212
                                           (let ((__tmp159220
                                                  (let ((__tmp159221
                                                         (let ((__tmp159222
                                                                (let ((__tmp159223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp159223))))
                   (declare (not safe))
                   (cons __tmp159222 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp159221)))
                                                 (__tmp159213
                                                  (let ((__tmp159214
                                                         (let ((__tmp159215
                                                                (let ((__tmp159216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp159217
                                      (let ((__tmp159218
                                             (let ((__tmp159219
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp159219 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp159218))))
                                 (declare (not safe))
                                 (cons __tmp159217 '()))))
                          (declare (not safe))
                          (cons _mod-main158825_ __tmp159216))))
                   (declare (not safe))
                   (cons 'apply __tmp159215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp159214 '()))))
                                             (declare (not safe))
                                             (cons __tmp159220 __tmp159213))))
                                      (declare (not safe))
                                      (cons __tmp159224 __tmp159212))))
                               (declare (not safe))
                               (cons 'define __tmp159211)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare158662_
                  (lambda ()
                    (let* ((_gsc-opts158728_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts158658_)))
                           (_gsc-prelude158730_
                            (if _gsc-opts158728_
                                (member '"-prelude" _gsc-opts158728_)
                                '#f))
                           (_gsc-prelude158732_
                            (if _gsc-prelude158730_
                                (read (open-input-string
                                       (cadr _gsc-prelude158730_)))
                                '#f)))
                      (let _lp158735_ ((_rest158737_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude158732_ '())))
                                       (_user-decls158738_ '()))
                        (let* ((_rest158739158747_ _rest158737_)
                               (_else158741158755_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls158738_))
                                      '#f
                                      (let ((__tmp159225
                                             (reverse _user-decls158738_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp159225)))))
                               (_K158743158811_
                                (lambda (_rest158758_ _expr158759_)
                                  (let* ((_expr158760158772_ _expr158759_)
                                         (_else158763158780_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp158735_
                                               _rest158758_
                                               _user-decls158738_)))))
                                    (let ((_K158768158801_
                                           (lambda (_decls158799_)
                                             (let ((__tmp159226
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls158738_
                                                              _decls158799_))))
                                               (declare (not safe))
                                               (_lp158735_
                                                _rest158758_
                                                __tmp159226))))
                                          (_K158765158786_
                                           (lambda (_exprs158784_)
                                             (let ((__tmp159227
                                                    (append _exprs158784_
                                                            _rest158758_)))
                                               (declare (not safe))
                                               (_lp158735_
                                                __tmp159227
                                                _user-decls158738_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr158760158772_))
                                          (let ((_tl158770158806_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr158760158772_)))
                                                (_hd158769158804_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr158760158772_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd158769158804_
                                                         'declare))
                                                (let ((_decls158809_
                                                       _tl158770158806_))
                                                  (declare (not safe))
                                                  (_K158768158801_
                                                   _decls158809_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd158769158804_
                                                             'begin))
                                                    (let ((_exprs158794_
                                                           _tl158770158806_))
                                                      (declare (not safe))
                                                      (_K158765158786_
                                                       _exprs158794_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else158763158780_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else158763158780_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest158739158747_))
                              (let ((_hd158744158814_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest158739158747_)))
                                    (_tl158745158816_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest158739158747_))))
                                (let* ((_expr158819_ _hd158744158814_)
                                       (_rest158821_ _tl158745158816_))
                                  (declare (not safe))
                                  (_K158743158811_ _rest158821_ _expr158819_)))
                              (let ()
                                (declare (not safe))
                                (_else158741158755_))))))))
                 (_compile-stub158663_
                  (lambda (_output-scm158670_ _output-bin158671_)
                    (let* ((_gerbil-home158673_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158675_
                            (path-expand '"lib" _gerbil-home158673_))
                           (_runtime158677_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp158679_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home158673_))
                           (_include-gambit-sharp158681_
                            (string-append
                             '"(include \""
                             _gambit-sharp158679_
                             '"\")"))
                           (_bin-scm158683_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158657_)))
                           (_deps158685_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158657_)))
                           (_deps158687_
                            (map gxc#find-static-module-file _deps158685_))
                           (_deps158692_
                            (filter (lambda (_$obj158689_)
                                      (let ((__tmp159228
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj158689_))))
                                        (declare (not safe))
                                        (not __tmp159228)))
                                    _deps158687_))
                           (_deps158696_
                            (filter (lambda (_f158694_)
                                      (let ((__tmp159229
                                             (member _f158694_
                                                     _runtime158677_)))
                                        (declare (not safe))
                                        (not __tmp159229)))
                                    _deps158692_))
                           (_output-base158698_
                            (string-append
                             (path-strip-extension _output-scm158670_)))
                           (_output-c158700_
                            (string-append _output-base158698_ '".c"))
                           (_output-o158702_
                            (string-append _output-base158698_ '".o"))
                           (_output-c_158704_
                            (string-append _output-base158698_ '"_.c"))
                           (_output-o_158706_
                            (string-append _output-base158698_ '"_.o"))
                           (_gsc-link-opts158708_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158710_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158712_
                            (let ((__tmp159230
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir158675_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp159230)))
                           (_output-ld-opts158714_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros158716_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp159232
                                       (let ((__tmp159233
                                              (let ((__tmp159234
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp158681_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp159234))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp159233))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp159232))
                                (let ((__tmp159231
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp158681_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp159231))))
                           (_gsc-link-opts158718_
                            (append _gsc-link-opts158708_
                                    _gsc-gx-macros158716_))
                           (_rpath158720_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158675_)))
                           (_default-ld-options158722_
                            (let ((__tmp159235
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp159235))))
                      (let ((__tmp159236
                             (lambda ()
                               (let ((__tmp159237
                                      (path-directory _output-bin158671_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp159237)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp159236))
                      (let ((__tmp159238
                             (lambda ()
                               (let ((__tmp159239
                                      (let ((__tmp159240
                                             (let ((__tmp159241
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm158683_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp159241
                                                       _deps158696_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp159240
                                                _runtime158677_))))
                                 (declare (not safe))
                                 (_generate-stub158661_ __tmp159239)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158670_
                         __tmp159238))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp159247
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159242
                                   (let ((__tmp159243
                                          (let ((__tmp159244
                                                 (let ((__tmp159245
                                                        (let ((__tmp159246
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm158670_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp159246 _gsc-link-opts158718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_158704_
                                                         __tmp159245))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp159244))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp159243))))
                              (declare (not safe))
                              (gxc#invoke __tmp159247 __tmp159242))
                            (let ((__tmp159253
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159248
                                   (let ((__tmp159249
                                          (let ((__tmp159250
                                                 (let ((__tmp159251
                                                        (let ((__tmp159252
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_158704_ '()))))
                  (declare (not safe))
                  (cons _output-c158700_ __tmp159252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159251
                                                           _gsc-static-opts158712_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp159250
                                                    _gsc-cc-opts158710_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp159249))))
                              (declare (not safe))
                              (gxc#invoke __tmp159253 __tmp159248))
                            (let ((__tmp159263
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp159254
                                   (let ((__tmp159255
                                          (let ((__tmp159256
                                                 (let ((__tmp159257
                                                        (let ((__tmp159258
                                                               (let ((__tmp159259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159260
                                     (let ((__tmp159261
                                            (let ((__tmp159262
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options158722_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir158675_
                                                    __tmp159262))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp159261))))
                                (declare (not safe))
                                (cons _rpath158720_ __tmp159260))))
                         (declare (not safe))
                         (foldr1 cons __tmp159259 _output-ld-opts158714_))))
                  (declare (not safe))
                  (cons _output-o_158706_ __tmp159258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o158702_
                                                         __tmp159257))))
                                            (declare (not safe))
                                            (cons _output-bin158671_
                                                  __tmp159256))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp159255))))
                              (declare (not safe))
                              (gxc#invoke __tmp159263 __tmp159254)))
                          '#!void)))))
          (let* ((_output-bin158665_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158657_ _opts158658_)))
                 (_output-scm158667_
                  (string-append _output-bin158665_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158663_ _output-scm158667_ _output-bin158665_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158667_))))))
    (define gxc#find-export-binding
      (lambda (_ctx158607_ _id158608_)
        (let ((_$e158654_
               (let ((__tmp159265
                      (lambda (_e158609158611_)
                        (let* ((_g158613158623_ _e158609158611_)
                               (_else158615158631_ (lambda () '#f))
                               (_K158617158635_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g158613158623_
                                 'gx#module-export::t))
                              (let* ((_e158618158638_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158613158623_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e158619158641_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158613158623_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e158620158644_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158613158623_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e158620158644_ '0))
                                    (let ((_e158621158647_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g158613158623_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g158649158651_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g158649158651_
                                                    _id158608_)))
                                           _e158621158647_)
                                          (let ()
                                            (declare (not safe))
                                            (_K158617158635_))
                                          (let ()
                                            (declare (not safe))
                                            (_else158615158631_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else158615158631_))))
                              (let ()
                                (declare (not safe))
                                (_else158615158631_))))))
                     (__tmp159264
                      (##structure-ref
                       _ctx158607_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp159265 __tmp159264))))
          (if _$e158654_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e158654_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx158599_ _id158600_)
        (let ((_$e158602_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx158599_ _id158600_))))
          (if _$e158602_
              ((lambda (_bind158605_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind158605_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id158600_)))
                 (##structure-ref _bind158605_ '1 gx#binding::t '#f))
               _$e158602_)
              (let ((__tmp159266
                     (##structure-ref
                      _ctx158599_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp159266
                 _id158600_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx158486_)
        (letrec* ((_ht158488_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template158489_
                   (lambda (_in158551_ _phi158552_)
                     (let ((_iphi158554_
                            (fx+ _phi158552_
                                 (##direct-structure-ref
                                  _in158551_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports158555_
                            (##structure-ref
                             (##direct-structure-ref
                              _in158551_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp158557_ ((_rest158559_ _imports158555_)
                                        (_r158560_ '()))
                         (let* ((_rest158561158569_ _rest158559_)
                                (_else158563158577_ (lambda () _r158560_))
                                (_K158565158587_
                                 (lambda (_rest158580_ _in158581_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in158581_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi158554_))
                                           (let ((__tmp159273
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in158581_
                                                          _r158560_))))
                                             (declare (not safe))
                                             (_lp158557_
                                              _rest158580_
                                              __tmp159273))
                                           (let ()
                                             (declare (not safe))
                                             (_lp158557_
                                              _rest158580_
                                              _r158560_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in158581_
                                              'gx#module-import::t))
                                           (let ((_iphi158583_
                                                  (fx+ _phi158552_
                                                       (##direct-structure-ref
                                                        _in158581_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi158583_))
                                                 (let ((__tmp159271
                                                        (let ((__tmp159272
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in158581_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp159272 _r158560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp158557_
                                                    _rest158580_
                                                    __tmp159271))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp158557_
                                                    _rest158580_
                                                    _r158560_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in158581_
                                                  'gx#import-set::t))
                                               (let ((_xphi158585_
                                                      (fx+ _iphi158554_
                                                           (##direct-structure-ref
                                                            _in158581_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi158585_))
                                                     (let ((__tmp159269
                                                            (let ((__tmp159270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in158581_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp159270 _r158560_))))
               (declare (not safe))
               (_lp158557_ _rest158580_ __tmp159269))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi158585_)
                                                         (let ((__tmp159267
                                                                (let ((__tmp159268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template158489_
                                  _in158581_
                                  _iphi158554_))))
                          (declare (not safe))
                          (foldl1 cons _r158560_ __tmp159268))))
                   (declare (not safe))
                   (_lp158557_ _rest158580_ __tmp159267))
                 (let ()
                   (declare (not safe))
                   (_lp158557_ _rest158580_ _r158560_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp158557_
                                                  _rest158580_
                                                  _r158560_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest158561158569_))
                               (let ((_hd158566158590_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest158561158569_)))
                                     (_tl158567158592_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest158561158569_))))
                                 (let* ((_in158595_ _hd158566158590_)
                                        (_rest158597_ _tl158567158592_))
                                   (declare (not safe))
                                   (_K158565158587_ _rest158597_ _in158595_)))
                               (let ()
                                 (declare (not safe))
                                 (_else158563158577_))))))))
                  (_find-deps158490_
                   (lambda (_rest158497_ _deps158498_)
                     (let* ((_rest158499158507_ _rest158497_)
                            (_else158501158515_ (lambda () _deps158498_))
                            (_K158503158539_
                             (lambda (_rest158518_ _hd158519_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd158519_
                                      'gx#module-context::t))
                                   (let ((_id158521_
                                          (##structure-ref
                                           _hd158519_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports158522_
                                          (##structure-ref
                                           _hd158519_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht158488_ _id158521_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps158490_
                                            _rest158518_
                                            _deps158498_))
                                         (let ((_$e158524_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd158519_))))
                                           (if _$e158524_
                                               ((lambda (_pre158527_)
                                                  (let ((_xdeps158529_
                                                         (let ((__tmp159286
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre158527_ _imports158522_))))
                   (declare (not safe))
                   (_find-deps158490_ __tmp159286 _deps158498_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht158488_
                                                       _id158521_
                                                       _hd158519_))
                                                    (let ((__tmp159287
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd158519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps158529_))))
              (declare (not safe))
              (_find-deps158490_ _rest158518_ __tmp159287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e158524_)
                                               (let ((_xdeps158531_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps158490_
                                                         _imports158522_
                                                         _deps158498_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht158488_
                                                    _id158521_
                                                    _hd158519_))
                                                 (let ((__tmp159285
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd158519_
                                                                _xdeps158531_))))
                                                   (declare (not safe))
                                                   (_find-deps158490_
                                                    _rest158518_
                                                    __tmp159285)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd158519_
                                          'gx#prelude-context::t))
                                       (let ((_id158533_
                                              (##structure-ref
                                               _hd158519_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht158488_
                                                _id158533_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps158490_
                                                _rest158518_
                                                _deps158498_))
                                             (let ((_xdeps158535_
                                                    (let ((__tmp159283
                                                           (##structure-ref
                                                            _hd158519_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps158490_
                                                       __tmp159283
                                                       _deps158498_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht158488_
                                                      _id158533_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps158490_
                                                      _rest158518_
                                                      _xdeps158535_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht158488_
                                                        _id158533_
                                                        _hd158519_))
                                                     (let ((__tmp159284
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd158519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps158535_))))
               (declare (not safe))
               (_find-deps158490_ _rest158518_ __tmp159284)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd158519_
                                              'gx#module-import::t))
                                           (if (let ((__tmp159282
                                                      (##direct-structure-ref
                                                       _hd158519_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp159282))
                                               (let ((__tmp159280
                                                      (let ((__tmp159281
                                                             (##direct-structure-ref
                                                              _hd158519_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp159281
                                                              _rest158518_))))
                                                 (declare (not safe))
                                                 (_find-deps158490_
                                                  __tmp159280
                                                  _deps158498_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps158490_
                                                  _rest158518_
                                                  _deps158498_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd158519_
                                                  'gx#module-export::t))
                                               (let ((__tmp159278
                                                      (let ((__tmp159279
                                                             (##direct-structure-ref
                                                              _hd158519_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp159279
                                                              _rest158518_))))
                                                 (declare (not safe))
                                                 (_find-deps158490_
                                                  __tmp159278
                                                  _deps158498_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd158519_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp159277
                                                              (##direct-structure-ref
                                                               _hd158519_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp159277))
                                                       (let ((__tmp159275
                                                              (let ((__tmp159276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd158519_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp159276 _rest158518_))))
                 (declare (not safe))
                 (_find-deps158490_ __tmp159275 _deps158498_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd158519_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps158537_
                           (let ()
                             (declare (not safe))
                             (_import-set-template158489_ _hd158519_ '0)))
                          (__tmp159274
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest158518_ _xdeps158537_))))
                     (declare (not safe))
                     (_find-deps158490_ __tmp159274 _deps158498_))
                   (let ()
                     (declare (not safe))
                     (_find-deps158490_ _rest158518_ _deps158498_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd158519_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest158499158507_))
                           (let ((_hd158504158542_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest158499158507_)))
                                 (_tl158505158544_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest158499158507_))))
                             (let* ((_hd158547_ _hd158504158542_)
                                    (_rest158549_ _tl158505158544_))
                               (declare (not safe))
                               (_K158503158539_ _rest158549_ _hd158547_)))
                           (let ()
                             (declare (not safe))
                             (_else158501158515_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp159288
                                  (let ((_$e158492_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx158486_))))
                                    (if _$e158492_
                                        ((lambda (_pre158495_)
                                           (let ((__tmp159289
                                                  (##structure-ref
                                                   _ctx158486_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre158495_ __tmp159289)))
                                         _$e158492_)
                                        (##structure-ref
                                         _ctx158486_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps158490_ __tmp159288 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx158417_)
        (let* ((_context-id158419_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx158417_
                       'gx#module-context::t))
                    (##structure-ref _ctx158417_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx158417_)))
               (_scm158421_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id158419_))
                 '".scm"))
               (_dirs158423_ (gx#current-expander-module-library-path))
               (_dirs158429_
                (let ((_user-libpath158425_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath158425_
                      (let ((_user-libpath158427_
                             (path-expand '"lib" _user-libpath158425_)))
                        (if (member _user-libpath158427_ _dirs158423_)
                            _dirs158423_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath158427_ _dirs158423_))))
                      _dirs158423_)))
               (_dirs158438_
                (let ((_$e158431_ (gxc#current-compile-output-dir)))
                  (if _$e158431_
                      ((lambda (_g158433158435_)
                         (let ()
                           (declare (not safe))
                           (cons _g158433158435_ _dirs158429_)))
                       _$e158431_)
                      _dirs158429_)))
               (_dirs158444_
                (map (lambda (_g158439158441_)
                       (path-expand '"static" _g158439158441_))
                     _dirs158438_)))
          (let _lp158447_ ((_rest158449_ _dirs158444_))
            (let* ((_rest158450158458_ _rest158449_)
                   (_else158452158466_
                    (lambda ()
                      (let ((__tmp159290
                             (##structure-ref
                              _ctx158417_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp159290
                         _scm158421_))))
                   (_K158454158474_
                    (lambda (_rest158469_ _dir158470_)
                      (let ((_path158472_
                             (path-expand _scm158421_ _dir158470_)))
                        (if (file-exists? _path158472_)
                            _path158472_
                            (let ()
                              (declare (not safe))
                              (_lp158447_ _rest158469_)))))))
              (if (let () (declare (not safe)) (##pair? _rest158450158458_))
                  (let ((_hd158455158477_
                         (let ()
                           (declare (not safe))
                           (##car _rest158450158458_)))
                        (_tl158456158479_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158450158458_))))
                    (let* ((_dir158482_ _hd158455158477_)
                           (_rest158484_ _tl158456158479_))
                      (declare (not safe))
                      (_K158454158474_ _rest158484_ _dir158482_)))
                  (let () (declare (not safe)) (_else158452158466_))))))))
    (define gxc#file-empty?
      (lambda (_path158415_)
        (let ((__tmp159291 (file-info-size (file-info _path158415_ '#t))))
          (declare (not safe))
          (zero? __tmp159291))))
    (define gxc#compile-top-module
      (lambda (_ctx158404_)
        (let ((__tmp159295
               (lambda ()
                 (let ((__tmp159296
                        (##structure-ref
                         _ctx158404_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp159296))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp159297
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx158404_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp159297))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx158404_))
                 (if (let ((__tmp159300
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx158404_))))
                       (declare (not safe))
                       (null? __tmp159300))
                     (let* ((_thr1158409_
                             (let ((__tmp159298
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx158404_)))))
                               (declare (not safe))
                               (spawn __tmp159298)))
                            (_thr2158412_
                             (let ((__tmp159299
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx158404_)))))
                               (declare (not safe))
                               (spawn __tmp159299))))
                       (let () (declare (not safe)) (gxc#join! _thr1158409_))
                       (let () (declare (not safe)) (gxc#join! _thr2158412_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx158404_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx158404_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx158404_))
                     '#!void)))
              (__tmp159294
               (let ((__obj159102
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj159102)
                 __obj159102))
              (__tmp159293 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp159292 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp159295
           gx#current-expander-context
           _ctx158404_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp159294
           gxc#current-compile-runtime-sections
           __tmp159293
           gxc#current-compile-runtime-names
           __tmp159292))))
    (define gxc#collect-bindings
      (lambda (_ctx158402_)
        (let ((__tmp159301
               (##structure-ref _ctx158402_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp159301))))
    (define gxc#compile-runtime-code
      (lambda (_ctx158348_)
        (letrec ((_compile1158350_
                  (lambda (_ctx158391_)
                    (let* ((_code158393_
                            (##structure-ref
                             _ctx158391_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt158397_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code158393_))
                                (let ((_idstr158395_
                                       (let ((__tmp159302
                                              (##structure-ref
                                               _ctx158391_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp159302))))
                                  (string-append _idstr158395_ '"__0"))
                                '#f)))
                      (if _rt158397_
                          (begin
                            (let ((__tmp159303
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp159303 _ctx158391_ _rt158397_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code158352_
                               _ctx158391_
                               _code158393_)))
                          (let ((_path158400_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx158391_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path158400_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code158353_
                         _ctx158391_
                         _code158393_
                         _rt158397_)))))
                 (_context-timestamp158351_
                  (lambda (_ctx158389_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx158389_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code158352_
                  (lambda (_ctx158371_ _code158372_)
                    (let* ((_lifts158374_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code158377_
                            (let ((__tmp159306
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code158372_))))
                                  (__tmp159305
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp159304
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp159306
                               gx#current-expander-context
                               _ctx158371_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts158374_
                               gxc#current-compile-marks
                               __tmp159305
                               gxc#current-compile-identifiers
                               __tmp159304)))
                           (_runtime-code158379_
                            (if (let ((__tmp159310 (unbox _lifts158374_)))
                                  (declare (not safe))
                                  (null? __tmp159310))
                                _runtime-code158377_
                                (let ((__tmp159307
                                       (let ((__tmp159309
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code158377_
                                                      '())))
                                             (__tmp159308
                                              (reverse (unbox _lifts158374_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp159309
                                                 __tmp159308))))
                                  (declare (not safe))
                                  (cons 'begin __tmp159307))))
                           (_runtime-code158381_
                            (let ((__tmp159311
                                   (let ((__tmp159313
                                          (let ((__tmp159314
                                                 (let ((__tmp159317
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp158351_
                                                           _ctx158371_)))
                                                       (__tmp159315
                                                        (let ((__tmp159316
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp159316
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp159317
                                                         __tmp159315))))
                                            (declare (not safe))
                                            (cons 'define __tmp159314)))
                                         (__tmp159312
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code158379_ '()))))
                                     (declare (not safe))
                                     (cons __tmp159313 __tmp159312))))
                              (declare (not safe))
                              (cons 'begin __tmp159311)))
                           (_scm0158383_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx158371_
                               '0
                               '".scm"))))
                      (let ((_scms158386_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx158371_))))
                        (let ((__tmp159318
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0158383_
                                    _runtime-code158381_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp159318
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms158386_)
                            (delete-file _scms158386_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0158383_
                           '" => "
                           _scms158386_))
                        (copy-file _scm0158383_ _scms158386_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0158383_))))))
                 (_generate-loader-code158353_
                  (lambda (_ctx158360_ _code158361_ _rt158362_)
                    (let* ((_loader-code158365_
                            (let ((__tmp159319
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code158361_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp159319
                               gx#current-expander-context
                               _ctx158360_)))
                           (_loader-code158367_
                            (if _rt158362_
                                (let ((__tmp159320
                                       (let ((__tmp159321
                                              (let ((__tmp159322
                                                     (let ((__tmp159323
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt158362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp159323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159322 '()))))
                                         (declare (not safe))
                                         (cons _loader-code158365_
                                               __tmp159321))))
                                  (declare (not safe))
                                  (cons 'begin __tmp159320))
                                _loader-code158365_)))
                      (let ((__tmp159324
                             (lambda ()
                               (let ((__tmp159325
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx158360_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp159325
                                  _loader-code158367_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp159324
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules158355_
                 (let ((__tmp159326
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx158348_))))
                   (declare (not safe))
                   (cons _ctx158348_ __tmp159326))))
            (for-each
             (lambda (_ctx158357_)
               (let ((__tmp159327
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1158350_ _ctx158357_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp159327
                  gxc#current-compile-decls
                  '())))
             _all-modules158355_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx158245_)
        (letrec ((_compile-ssi158247_
                  (lambda (_code158318_)
                    (let* ((_path158320_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx158245_
                               '#f
                               '".ssi")))
                           (_prelude158331_
                            (let* ((_super158322_
                                    (##structure-ref
                                     _ctx158245_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e158324_
                                    (##structure-ref
                                     _super158322_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e158324_
                                  ((lambda (_g158326158328_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g158326158328_)))
                                   _$e158324_)
                                  ':<root>)))
                           (_ns158333_
                            (##structure-ref
                             _ctx158245_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr158335_
                            (symbol->string
                             (##structure-ref
                              _ctx158245_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg158342_
                            (let ((_$e158337_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr158335_ '#\/))))
                              (if _$e158337_
                                  ((lambda (_x158340_)
                                     (string->symbol
                                      (substring _idstr158335_ '0 _x158340_)))
                                   _$e158337_)
                                  '#f)))
                           (_rt158344_
                            (let ((__tmp159328
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp159328 _ctx158245_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path158320_))
                      (let ((__tmp159329
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude158331_))
                               (if _pkg158342_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg158342_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns158333_))
                               (newline)
                               (pretty-print _code158318_)
                               (if _rt158344_
                                   (pretty-print
                                    (let ((__tmp159330
                                           (let ((__tmp159334
                                                  (let ((__tmp159335
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp159335)))
                                                 (__tmp159331
                                                  (let ((__tmp159332
                                                         (let ((__tmp159333
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt158344_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp159333))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp159332 '()))))
                                             (declare (not safe))
                                             (cons __tmp159334 __tmp159331))))
                                      (declare (not safe))
                                      (cons '%#call __tmp159330)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path158320_
                         __tmp159329)))))
                 (_compile-phi158248_
                  (lambda (_part158258_)
                    (let* ((_part158259158272_ _part158258_)
                           (_E158261158276_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part158259158272_))))
                           (_K158262158287_
                            (lambda (_code158279_
                                     _n158280_
                                     _phi158281_
                                     _phi-ctx158282_)
                              (let* ((_code158285_
                                      (let ((__tmp159336
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code158279_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp159336
                                         gx#current-expander-context
                                         _phi-ctx158282_
                                         gx#current-expander-phi
                                         _phi158281_)))
                                     (__tmp159337
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx158245_
                                         _n158280_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp159337
                                 _code158285_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part158259158272_))
                          (let ((_hd158263158290_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part158259158272_)))
                                (_tl158264158292_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part158259158272_))))
                            (let ((_phi-ctx158295_ _hd158263158290_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl158264158292_))
                                  (let ((_hd158265158297_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl158264158292_)))
                                        (_tl158266158299_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl158264158292_))))
                                    (let ((_phi158302_ _hd158265158297_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl158266158299_))
                                          (let ((_hd158267158304_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl158266158299_)))
                                                (_tl158268158306_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl158266158299_))))
                                            (let ((_n158309_ _hd158267158304_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl158268158306_))
                                                  (let ((_hd158269158311_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl158268158306_)))
                                                        (_tl158270158313_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl158268158306_))))
                                                    (let ((_code158316_
                                                           _hd158269158311_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl158270158313_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K158262158287_
                                                             _code158316_
                                                             _n158309_
                                                             _phi158302_
                                                             _phi-ctx158295_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E158261158276_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E158261158276_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E158261158276_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E158261158276_)))))
                          (let () (declare (not safe)) (_E158261158276_)))))))
          (let ((_g159338_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx158245_))))
            (begin
              (let ((_g159339_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g159338_)
                           (##vector-length _g159338_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g159339_ 2)))
                    (error "Context expects 2 values" _g159339_)))
              (let ((_ssi-code158250_
                     (let () (declare (not safe)) (##vector-ref _g159338_ 0)))
                    (_phi-code158251_
                     (let () (declare (not safe)) (##vector-ref _g159338_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi158247_ _ssi-code158250_))
                  (let ((_threads158256_
                         (map (lambda (_code158253_)
                                (let ((__tmp159340
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi158248_
                                            _code158253_)))))
                                  (declare (not safe))
                                  (spawn __tmp159340)))
                              _phi-code158251_)))
                    (for-each gxc#join! _threads158256_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx158228_)
        (let* ((_path158230_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx158228_ '#f '".ssxi.ss")))
               (_code158232_
                (let ((__tmp159341
                       (##structure-ref
                        _ctx158228_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp159341)))
               (_idstr158234_
                (symbol->string
                 (##structure-ref _ctx158228_ '1 gx#expander-context::t '#f)))
               (_pkg158241_
                (let ((_$e158236_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr158234_ '#\/))))
                  (if _$e158236_
                      ((lambda (_x158239_)
                         (string->symbol
                          (substring _idstr158234_ '0 _x158239_)))
                       _$e158236_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path158230_))
          (let ((__tmp159342
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg158241_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg158241_))
                       '#!void)
                   (newline)
                   (pretty-print _code158232_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path158230_ __tmp159342)))))
    (define gxc#generate-meta-code
      (lambda (_ctx158221_)
        (let* ((_state158223_
                (let ((__obj159103
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj159103 _ctx158221_)
                  __obj159103))
               (_ssi-code158225_
                (let ((__tmp159343
                       (##structure-ref
                        _ctx158221_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp159343
                   'state:
                   _state158223_))))
          (values _ssi-code158225_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state158223_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx158214_)
        (let ((_lifts158216_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp159346
                 (lambda ()
                   (let ((_code158219_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx158214_))))
                     (if (let ((__tmp159350 (unbox _lifts158216_)))
                           (declare (not safe))
                           (null? __tmp159350))
                         _code158219_
                         (let ((__tmp159347
                                (let ((__tmp159349
                                       (let ()
                                         (declare (not safe))
                                         (cons _code158219_ '())))
                                      (__tmp159348
                                       (reverse (unbox _lifts158216_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp159349 __tmp159348))))
                           (declare (not safe))
                           (cons 'begin __tmp159347))))))
                (__tmp159345
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp159344
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp159346
             gxc#current-compile-lift
             _lifts158216_
             gxc#current-compile-marks
             __tmp159345
             gxc#current-compile-identifiers
             __tmp159344)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx158210_)
        (let ((_modules158212_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp159351
                 (##structure-ref _ctx158210_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp159351 'modules: _modules158212_))
          (reverse (unbox _modules158212_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path158193_ _code158194_ _phi?158195_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path158193_))
        (let ((__tmp159352
               (lambda ()
                 (pretty-print
                  (let ((__tmp159353
                         (let ((__tmp159360
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp159354
                                (let ((__tmp159359
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp159355
                                       (let ((__tmp159358
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp159356
                                              (let ((__tmp159357
                                                     (if _phi?158195_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp159357))))
                                         (declare (not safe))
                                         (cons __tmp159358 __tmp159356))))
                                  (declare (not safe))
                                  (cons __tmp159359 __tmp159355))))
                           (declare (not safe))
                           (cons __tmp159360 __tmp159354))))
                    (declare (not safe))
                    (cons 'declare __tmp159353)))
                 (pretty-print _code158194_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path158193_ __tmp159352))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path158193_ _phi?158195_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path158193_))))
    (define gxc#compile-scm-file__0
      (lambda (_path158201_ _code158202_)
        (let ((_phi?158204_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path158201_ _code158202_ _phi?158204_))))
    (define gxc#compile-scm-file
      (lambda _g159362_
        (let ((_g159361_ (let () (declare (not safe)) (##length _g159362_))))
          (cond ((let () (declare (not safe)) (##fx= _g159361_ 2))
                 (apply (lambda (_path158201_ _code158202_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path158201_
                             _code158202_)))
                        _g159362_))
                ((let () (declare (not safe)) (##fx= _g159361_ 3))
                 (apply (lambda (_path158206_ _code158207_ _phi?158208_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path158206_
                             _code158207_
                             _phi?158208_)))
                        _g159362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g159362_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?158094_)
        (let _lp158096_ ((_rest158098_ (gxc#current-compile-gsc-options))
                         (_opts158099_ '()))
          (let* ((_rest158100158120_ _rest158098_)
                 (_else158104158128_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?158094_))
                             (gxc#current-compile-debug))
                        (let ((__tmp159363
                               (let ((__tmp159364 (reverse _opts158099_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp159364))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp159363))
                        (reverse _opts158099_)))))
            (let ((_K158114158171_
                   (lambda (_rest158169_)
                     (let ()
                       (declare (not safe))
                       (_lp158096_ _rest158169_ _opts158099_))))
                  (_K158109158153_
                   (lambda (_rest158151_)
                     (let ()
                       (declare (not safe))
                       (_lp158096_ _rest158151_ _opts158099_))))
                  (_K158106158135_
                   (lambda (_rest158132_ _opt158133_)
                     (let ((__tmp159365
                            (let ()
                              (declare (not safe))
                              (cons _opt158133_ _opts158099_))))
                       (declare (not safe))
                       (_lp158096_ _rest158132_ __tmp159365)))))
              (if (let () (declare (not safe)) (##pair? _rest158100158120_))
                  (let ((_tl158116158176_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158100158120_)))
                        (_hd158115158174_
                         (let ()
                           (declare (not safe))
                           (##car _rest158100158120_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158115158174_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158116158176_))
                            (let* ((_tl158118158179_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl158116158176_)))
                                   (_rest158182_ _tl158118158179_))
                              (declare (not safe))
                              (_K158114158171_ _rest158182_))
                            (let ((_opt158143_ _hd158115158174_)
                                  (_rest158145_ _tl158116158176_))
                              (let ()
                                (declare (not safe))
                                (_K158106158135_ _rest158145_ _opt158143_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158115158174_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158116158176_))
                                (let* ((_tl158113158161_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl158116158176_)))
                                       (_rest158164_ _tl158113158161_))
                                  (declare (not safe))
                                  (_K158109158153_ _rest158164_))
                                (let ((_opt158143_ _hd158115158174_)
                                      (_rest158145_ _tl158116158176_))
                                  (let ()
                                    (declare (not safe))
                                    (_K158106158135_
                                     _rest158145_
                                     _opt158143_))))
                            (let ((_opt158143_ _hd158115158174_)
                                  (_rest158145_ _tl158116158176_))
                              (let ()
                                (declare (not safe))
                                (_K158106158135_ _rest158145_ _opt158143_))))))
                  (let () (declare (not safe)) (_else158104158128_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?158188_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?158188_))))
    (define gxc#gsc-link-options
      (lambda _g159367_
        (let ((_g159366_ (let () (declare (not safe)) (##length _g159367_))))
          (cond ((let () (declare (not safe)) (##fx= _g159366_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g159367_))
                ((let () (declare (not safe)) (##fx= _g159366_ 1))
                 (apply (lambda (_phi?158190_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?158190_)))
                        _g159367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g159367_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?157995_)
        (let _lp157997_ ((_rest157999_ (gxc#current-compile-gsc-options))
                         (_opts158000_ '()))
          (let* ((_rest158001158021_ _rest157999_)
                 (_else158005158029_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157995_))
                             (gxc#current-compile-debug))
                        (let ((__tmp159368
                               (let ((__tmp159369 (reverse _opts158000_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp159369))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp159368))
                        (reverse _opts158000_)))))
            (let ((_K158015158068_
                   (lambda (_rest158065_ _opt158066_)
                     (let ((__tmp159370
                            (let ((__tmp159371
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts158000_))))
                              (declare (not safe))
                              (cons _opt158066_ __tmp159371))))
                       (declare (not safe))
                       (_lp157997_ _rest158065_ __tmp159370))))
                  (_K158010158049_
                   (lambda (_rest158047_)
                     (let ()
                       (declare (not safe))
                       (_lp157997_ _rest158047_ _opts158000_))))
                  (_K158007158035_
                   (lambda (_rest158033_)
                     (let ()
                       (declare (not safe))
                       (_lp157997_ _rest158033_ _opts158000_)))))
              (if (let () (declare (not safe)) (##pair? _rest158001158021_))
                  (let ((_tl158017158073_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158001158021_)))
                        (_hd158016158071_
                         (let ()
                           (declare (not safe))
                           (##car _rest158001158021_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158016158071_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158017158073_))
                            (let ((_tl158019158078_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl158017158073_)))
                                  (_hd158018158076_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl158017158073_))))
                              (let ((_opt158081_ _hd158018158076_)
                                    (_rest158083_ _tl158019158078_))
                                (let ()
                                  (declare (not safe))
                                  (_K158015158068_ _rest158083_ _opt158081_))))
                            (let ((_rest158041_ _tl158017158073_))
                              (declare (not safe))
                              (_K158007158035_ _rest158041_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158016158071_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158017158073_))
                                (let* ((_tl158014158057_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl158017158073_)))
                                       (_rest158060_ _tl158014158057_))
                                  (declare (not safe))
                                  (_K158010158049_ _rest158060_))
                                (let ((_rest158041_ _tl158017158073_))
                                  (declare (not safe))
                                  (_K158007158035_ _rest158041_)))
                            (let ((_rest158041_ _tl158017158073_))
                              (declare (not safe))
                              (_K158007158035_ _rest158041_)))))
                  (let () (declare (not safe)) (_else158005158029_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?158089_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?158089_))))
    (define gxc#gsc-cc-options
      (lambda _g159373_
        (let ((_g159372_ (let () (declare (not safe)) (##length _g159373_))))
          (cond ((let () (declare (not safe)) (##fx= _g159372_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g159373_))
                ((let () (declare (not safe)) (##fx= _g159372_ 1))
                 (apply (lambda (_phi?158091_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?158091_)))
                        _g159373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g159373_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir157990_)
        (let* ((_user-staticdir157992_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp159374
                (let ((__tmp159375
                       (string-append
                        '"-I "
                        _staticdir157990_
                        '" -I "
                        _user-staticdir157992_)))
                  (declare (not safe))
                  (cons __tmp159375 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp159374))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp157902_ ((_rest157904_ (gxc#current-compile-gsc-options))
                         (_opts157905_ '()))
          (let* ((_rest157906157926_ _rest157904_)
                 (_else157910157934_ (lambda () _opts157905_)))
            (let ((_K157920157977_
                   (lambda (_rest157975_)
                     (let ()
                       (declare (not safe))
                       (_lp157902_ _rest157975_ _opts157905_))))
                  (_K157915157955_
                   (lambda (_rest157952_ _opt157953_)
                     (let ((__tmp159376
                            (append _opts157905_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt157953_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp157902_ _rest157952_ __tmp159376))))
                  (_K157912157940_
                   (lambda (_rest157938_)
                     (let ()
                       (declare (not safe))
                       (_lp157902_ _rest157938_ _opts157905_)))))
              (if (let () (declare (not safe)) (##pair? _rest157906157926_))
                  (let ((_tl157922157982_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157906157926_)))
                        (_hd157921157980_
                         (let ()
                           (declare (not safe))
                           (##car _rest157906157926_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157921157980_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157922157982_))
                            (let* ((_tl157924157985_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157922157982_)))
                                   (_rest157988_ _tl157924157985_))
                              (declare (not safe))
                              (_K157920157977_ _rest157988_))
                            (let ((_rest157946_ _tl157922157982_))
                              (declare (not safe))
                              (_K157912157940_ _rest157946_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157921157980_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157922157982_))
                                (let ((_tl157919157965_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl157922157982_)))
                                      (_hd157918157963_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl157922157982_))))
                                  (let ((_opt157968_ _hd157918157963_)
                                        (_rest157970_ _tl157919157965_))
                                    (let ()
                                      (declare (not safe))
                                      (_K157915157955_
                                       _rest157970_
                                       _opt157968_))))
                                (let ((_rest157946_ _tl157922157982_))
                                  (declare (not safe))
                                  (_K157912157940_ _rest157946_)))
                            (let ((_rest157946_ _tl157922157982_))
                              (declare (not safe))
                              (_K157912157940_ _rest157946_)))))
                  (let () (declare (not safe)) (_else157910157934_))))))))
    (define gxc#not-string-empty?
      (lambda (_str157899_)
        (let ((__tmp159377
               (let () (declare (not safe)) (string-empty? _str157899_))))
          (declare (not safe))
          (not __tmp159377))))
    (define gxc#gsc-compile-file
      (lambda (_path157867_ _phi?157868_)
        (letrec ((_gsc-link-path157870_
                  (lambda (_base-path157891_)
                    (let _lp157893_ ((_n157895_ '1))
                      (let ((_path157897_
                             (string-append
                              _base-path157891_
                              '".o"
                              (number->string _n157895_))))
                        (if (file-exists? _path157897_)
                            (let ((__tmp159378
                                   (let ()
                                     (declare (not safe))
                                     (+ _n157895_ '1))))
                              (declare (not safe))
                              (_lp157893_ __tmp159378))
                            _path157897_))))))
          (let* ((_base-path157872_ (path-strip-extension _path157867_))
                 (_path-c157874_ (string-append _base-path157872_ '".c"))
                 (_path-o157876_ (string-append _base-path157872_ '".o"))
                 (_link-path157878_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path157870_ _base-path157872_)))
                 (_link-path-c157880_ (string-append _link-path157878_ '".c"))
                 (_link-path-o157882_ (string-append _link-path157878_ '".o"))
                 (_gsc-link-opts157884_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?157868_)))
                 (_gsc-cc-opts157886_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?157868_)))
                 (_gcc-ld-opts157888_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp159385 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp159379
                   (let ((__tmp159380
                          (let ((__tmp159381
                                 (let ((__tmp159382
                                        (let ((__tmp159383
                                               (let ((__tmp159384
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path157867_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp159384
                                                         _gsc-link-opts157884_))))
                                          (declare (not safe))
                                          (cons _link-path-c157880_
                                                __tmp159383))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp159382))))
                            (declare (not safe))
                            (cons '"-flat" __tmp159381))))
                     (declare (not safe))
                     (cons '"-link" __tmp159380))))
              (declare (not safe))
              (gxc#invoke __tmp159385 __tmp159379 'stdout-redirection: '#t))
            (let ((__tmp159392 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp159386
                   (let ((__tmp159387
                          (let ((__tmp159388
                                 (let ((__tmp159389
                                        (let ((__tmp159390
                                               (let ((__tmp159391
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c157880_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c157874_
                                                       __tmp159391))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp159390
                                                  _gsc-cc-opts157886_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp159389))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp159388))))
                     (declare (not safe))
                     (cons '"-obj" __tmp159387))))
              (declare (not safe))
              (gxc#invoke __tmp159392 __tmp159386 'stdout-redirection: '#t))
            (let ((__tmp159398 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp159393
                   (let ((__tmp159394
                          (let ((__tmp159395
                                 (let ((__tmp159396
                                        (let ((__tmp159397
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o157882_
                                                       _gcc-ld-opts157888_))))
                                          (declare (not safe))
                                          (cons _path-o157876_ __tmp159397))))
                                   (declare (not safe))
                                   (cons _link-path157878_ __tmp159396))))
                            (declare (not safe))
                            (cons '"-o" __tmp159395))))
                     (declare (not safe))
                     (cons '"-shared" __tmp159394))))
              (declare (not safe))
              (gxc#invoke __tmp159398 __tmp159393))
            (for-each
             delete-file
             (let ((__tmp159399
                    (let ((__tmp159400
                           (let ((__tmp159401
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o157882_ '()))))
                             (declare (not safe))
                             (cons _link-path-c157880_ __tmp159401))))
                      (declare (not safe))
                      (cons _path-o157876_ __tmp159400))))
               (declare (not safe))
               (cons _path-c157874_ __tmp159399)))))))
    (define gxc#compile-output-file
      (lambda (_ctx157838_ _n157839_ _ext157840_)
        (letrec ((_module-relative-path157842_
                  (lambda (_ctx157865_)
                    (path-strip-directory
                     (let ((__tmp159402
                            (##structure-ref
                             _ctx157865_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp159402)))))
                 (_module-source-directory157843_
                  (lambda (_ctx157861_)
                    (path-directory
                     (let ((_mpath157863_
                            (##structure-ref
                             _ctx157861_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath157863_))
                           _mpath157863_
                           (last _mpath157863_))))))
                 (_section-string157844_
                  (lambda (_n157859_)
                    (if (let () (declare (not safe)) (number? _n157859_))
                        (number->string _n157859_)
                        (if (let () (declare (not safe)) (symbol? _n157859_))
                            (symbol->string _n157859_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n157859_))
                                _n157859_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n157859_)))))))
                 (_file-name157845_
                  (lambda (_path157857_)
                    (if _n157839_
                        (string-append
                         _path157857_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string157844_ _n157839_))
                         _ext157840_)
                        (string-append _path157857_ _ext157840_))))
                 (_file-path157846_
                  (lambda ()
                    (let ((_$e157852_ (gxc#current-compile-output-dir)))
                      (if _$e157852_
                          ((lambda (_outdir157855_)
                             (path-expand
                              (let ((__tmp159404
                                     (let ((__tmp159405
                                            (##structure-ref
                                             _ctx157838_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp159405))))
                                (declare (not safe))
                                (_file-name157845_ __tmp159404))
                              _outdir157855_))
                           _$e157852_)
                          (path-expand
                           (let ((__tmp159403
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path157842_
                                     _ctx157838_))))
                             (declare (not safe))
                             (_file-name157845_ __tmp159403))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory157843_
                              _ctx157838_))))))))
          (let ((_path157848_
                 (let () (declare (not safe)) (_file-path157846_))))
            (let ((__tmp159406
                   (lambda ()
                     (let ((__tmp159407 (path-directory _path157848_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp159407)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp159406))
            _path157848_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx157820_)
        (letrec ((_file-name157822_
                  (lambda (_id157836_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id157836_))
                     '".scm")))
                 (_file-path157823_
                  (lambda ()
                    (let* ((_file157829_
                            (let ((__tmp159408
                                   (##structure-ref
                                    _ctx157820_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name157822_ __tmp159408)))
                           (_$e157831_ (gxc#current-compile-output-dir)))
                      (if _$e157831_
                          ((lambda (_outdir157834_)
                             (path-expand
                              _file157829_
                              (path-expand '"static" _outdir157834_)))
                           _$e157831_)
                          (path-expand _file157829_ '"static"))))))
          (let ((_path157825_
                 (let () (declare (not safe)) (_file-path157823_))))
            (let ((__tmp159409
                   (lambda ()
                     (let ((__tmp159410 (path-directory _path157825_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp159410)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp159409))
            _path157825_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx157814_ _opts157815_)
        (let ((_$e157817_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts157815_))))
          (if _$e157817_
              (values _$e157817_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx157814_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr157807_)
        (if (let () (declare (not safe)) (string? _idstr157807_))
            (let* ((_str157809_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr157807_)))
                   (_strs157811_
                    (let ()
                      (declare (not safe))
                      (string-split _str157809_ '#\/))))
              (let () (declare (not safe)) (string-join _strs157811_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr157807_))
                (let ((__tmp159411 (symbol->string _idstr157807_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp159411))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr157807_))))))
    (define gxc#invoke__%
      (lambda (_g159412_
               _stdout-redirection157768157772_
               _stderr-redirection157769157774_
               _program157776_
               _args157777_)
        (let* ((_stdout-redirection157779_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection157768157772_ absent-value))
                    '#f
                    _stdout-redirection157768157772_))
               (_stderr-redirection157781_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection157769157774_ absent-value))
                    '#f
                    _stderr-redirection157769157774_)))
          (let ((__tmp159413
                 (let ()
                   (declare (not safe))
                   (cons _program157776_ _args157777_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp159413))
          (let* ((_proc157783_
                  (open-process
                   (let ((__tmp159414
                          (let ((__tmp159415
                                 (let ((__tmp159416
                                        (let ((__tmp159417
                                               (let ((__tmp159418
                                                      (let ((__tmp159419
                                                             (let ((__tmp159420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection157781_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp159420))))
                (declare (not safe))
                (cons _stdout-redirection157779_ __tmp159419))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp159418))))
                                          (declare (not safe))
                                          (cons _args157777_ __tmp159417))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp159416))))
                            (declare (not safe))
                            (cons _program157776_ __tmp159415))))
                     (declare (not safe))
                     (cons 'path: __tmp159414))))
                 (_output157788_
                  (if (or _stdout-redirection157779_
                          _stderr-redirection157781_)
                      (read-line _proc157783_ '#f)
                      '#f)))
            (let ((_status157791_ (process-status _proc157783_)))
              (close-port _proc157783_)
              (if (let () (declare (not safe)) (zero? _status157791_))
                  '#!void
                  (begin
                    (display _output157788_)
                    (let ((__tmp159421
                           (let ()
                             (declare (not safe))
                             (cons _program157776_ _args157777_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp159421
                       _status157791_)))))))))
    (define gxc#invoke__@
      (lambda (_keys157767157796_ . _args157798_)
        (apply gxc#invoke__%
               _keys157767157796_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157767157796_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157767157796_
                  'stderr-redirection:
                  absent-value))
               _args157798_)))
    (define gxc#invoke
      (lambda _args157770157804_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args157770157804_)))
    (define gxc#join!
      (lambda (_thread157761_)
        (let ((__tmp159423
               (lambda (_exn157763_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn157763_))
                     (let ((__tmp159424
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn157763_))))
                       (declare (not safe))
                       (raise __tmp159424))
                     (let () (declare (not safe)) (raise _exn157763_)))))
              (__tmp159422 (lambda () (thread-join! _thread157761_))))
          (declare (not safe))
          (with-catch __tmp159423 __tmp159422))))))
