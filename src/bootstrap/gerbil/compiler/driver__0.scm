(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710155063)
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
      (lambda (_path159004_ _fun159005_)
        (with-output-to-file
         (let ((__tmp159098
                (let ()
                  (declare (not safe))
                  (cons _path159004_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp159098))
         _fun159005_)))
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
      (lambda (_gerbil-libdir158999_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir158999_)))
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
      (lambda (_dir158997_) (delete-file-or-directory _dir158997_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath158971_ _opts158972_)
        (if (let () (declare (not safe)) (string? _srcpath158971_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158971_)))
        (let ((_outdir158974_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158972_)))
              (_invoke-gsc?158975_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158972_)))
              (_gsc-options158976_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158972_)))
              (_keep-scm?158977_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158972_)))
              (_verbosity158978_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158972_)))
              (_optimize158979_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts158972_)))
              (_debug158980_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158972_)))
              (_gen-ssxi158981_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts158972_))))
          (if _outdir158974_
              (let ((__tmp159099
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158974_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159099))
              '#!void)
          (if _optimize158979_
              (let ((__tmp159100
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159100))
              '#!void)
          (let ((__tmp159104
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath158971_))
                   (let ((__tmp159105
                          (let ((__tmp159106
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158971_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp159106))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp159105))))
                (__tmp159103
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp159101
                 (let ((__tmp159102
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158971_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp159102))))
            (declare (not safe))
            (call-with-parameters
             __tmp159104
             gxc#current-compile-output-dir
             _outdir158974_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158975_
             gxc#current-compile-gsc-options
             _gsc-options158976_
             gxc#current-compile-keep-scm
             _keep-scm?158977_
             gxc#current-compile-verbose
             _verbosity158978_
             gxc#current-compile-optimize
             _optimize158979_
             gxc#current-compile-debug
             _debug158980_
             gxc#current-compile-generate-ssxi
             _gen-ssxi158981_
             gxc#current-compile-timestamp
             __tmp159103
             gxc#current-compile-context
             __tmp159101
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath158990_)
        (let ((_opts158992_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath158990_ _opts158992_))))
    (define gxc#compile-module
      (lambda _g159108_
        (let ((_g159107_ (let () (declare (not safe)) (##length _g159108_))))
          (cond ((let () (declare (not safe)) (##fx= _g159107_ 1))
                 (apply (lambda (_srcpath158990_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath158990_)))
                        _g159108_))
                ((let () (declare (not safe)) (##fx= _g159107_ 2))
                 (apply (lambda (_srcpath158994_ _opts158995_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath158994_
                             _opts158995_)))
                        _g159108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g159108_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath158947_ _opts158948_)
        (if (let () (declare (not safe)) (string? _srcpath158947_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158947_)))
        (let ((_outdir158950_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158948_)))
              (_invoke-gsc?158951_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158948_)))
              (_gsc-options158952_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158948_)))
              (_keep-scm?158953_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158948_)))
              (_verbosity158954_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158948_)))
              (_debug158955_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158948_))))
          (if _outdir158950_
              (let ((__tmp159109
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158950_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159109))
              '#!void)
          (let ((__tmp159113
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath158947_))
                   (let ((__tmp159114
                          (let ((__tmp159115
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158947_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp159115))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp159114
                      _opts158948_))))
                (__tmp159112
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp159110
                 (let ((__tmp159111
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158947_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp159111))))
            (declare (not safe))
            (call-with-parameters
             __tmp159113
             gxc#current-compile-output-dir
             _outdir158950_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158951_
             gxc#current-compile-gsc-options
             _gsc-options158952_
             gxc#current-compile-keep-scm
             _keep-scm?158953_
             gxc#current-compile-verbose
             _verbosity158954_
             gxc#current-compile-debug
             _debug158955_
             gxc#current-compile-timestamp
             __tmp159112
             gxc#current-compile-context
             __tmp159110
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath158963_)
        (let ((_opts158965_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath158963_ _opts158965_))))
    (define gxc#compile-exe
      (lambda _g159117_
        (let ((_g159116_ (let () (declare (not safe)) (##length _g159117_))))
          (cond ((let () (declare (not safe)) (##fx= _g159116_ 1))
                 (apply (lambda (_srcpath158963_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath158963_)))
                        _g159117_))
                ((let () (declare (not safe)) (##fx= _g159116_ 2))
                 (apply (lambda (_srcpath158967_ _opts158968_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath158967_ _opts158968_)))
                        _g159117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g159117_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx158943_ _opts158944_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts158944_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx158943_
               _opts158944_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx158943_
               _opts158944_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx158826_ _opts158827_)
        (letrec ((_generate-stub158829_
                  (lambda (_builtin-modules158939_)
                    (let ((_mod-main158941_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158826_ 'main))))
                      (write (let ((__tmp159118
                                    (let ((__tmp159119
                                           (let ((__tmp159120
                                                  (let ((__tmp159121
                                                         (let ((__tmp159123
                                                                (let ((__tmp159124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules158939_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp159124)))
                       (__tmp159122
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp159123 __tmp159122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp159121))))
                                             (declare (not safe))
                                             (cons __tmp159120 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp159119))))
                               (declare (not safe))
                               (cons 'define __tmp159118)))
                      (write (let ((__tmp159125
                                    (let ((__tmp159164
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp159126
                                           (let ((__tmp159127
                                                  (let ((__tmp159128
                                                         (let ((__tmp159152
                                                                (let ((__tmp159153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp159154
                                      (let ((__tmp159162
                                             (let ((__tmp159163
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp159163)))
                                            (__tmp159155
                                             (let ((__tmp159156
                                                    (let ((__tmp159157
                                                           (let ((__tmp159158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159159
                                 (let ((__tmp159160
                                        (let ((__tmp159161
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp159161 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp159160))))
                            (declare (not safe))
                            (cons __tmp159159 '()))))
                     (declare (not safe))
                     (cons _mod-main158941_ __tmp159158))))
              (declare (not safe))
              (cons 'apply __tmp159157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp159156 '()))))
                                        (declare (not safe))
                                        (cons __tmp159162 __tmp159155))))
                                 (declare (not safe))
                                 (cons '() __tmp159154))))
                          (declare (not safe))
                          (cons 'lambda __tmp159153)))
                       (__tmp159129
                        (let ((__tmp159130
                               (let ((__tmp159131
                                      (let ((__tmp159132
                                             (let ((__tmp159143
                                                    (let ((__tmp159144
                                                           (let ((__tmp159145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159146
                                 (let ((__tmp159147
                                        (let ((__tmp159148
                                               (let ((__tmp159149
                                                      (let ((__tmp159150
                                                             (let ((__tmp159151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp159151 '()))))
                (declare (not safe))
                (cons 'force-output __tmp159150))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp159149 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp159148))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp159147))))
                            (declare (not safe))
                            (cons __tmp159146 '()))))
                     (declare (not safe))
                     (cons 'void __tmp159145))))
              (declare (not safe))
              (cons 'with-catch __tmp159144)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp159133
                                                    (let ((__tmp159134
                                                           (let ((__tmp159135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159136
                                 (let ((__tmp159137
                                        (let ((__tmp159138
                                               (let ((__tmp159139
                                                      (let ((__tmp159140
                                                             (let ((__tmp159141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp159142
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp159142 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp159141))))
                (declare (not safe))
                (cons __tmp159140 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp159139))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp159138))))
                                   (declare (not safe))
                                   (cons __tmp159137 '()))))
                            (declare (not safe))
                            (cons 'void __tmp159136))))
                     (declare (not safe))
                     (cons 'with-catch __tmp159135))))
              (declare (not safe))
              (cons __tmp159134 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp159143
                                                     __tmp159133))))
                                        (declare (not safe))
                                        (cons '() __tmp159132))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp159131))))
                          (declare (not safe))
                          (cons __tmp159130 '()))))
                   (declare (not safe))
                   (cons __tmp159152 __tmp159129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp159128))))
                                             (declare (not safe))
                                             (cons __tmp159127 '()))))
                                      (declare (not safe))
                                      (cons __tmp159164 __tmp159126))))
                               (declare (not safe))
                               (cons 'define __tmp159125)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts158830_
                  (lambda (_libgerbil158937_)
                    (call-with-input-file
                     (string-append _libgerbil158937_ '".ldd")
                     read)))
                 (_replace-extension158831_
                  (lambda (_path158934_ _ext158935_)
                    (string-append
                     (path-strip-extension _path158934_)
                     _ext158935_)))
                 (_not-exclude-module?158832_
                  (lambda (_ctx158930_)
                    (let ((_id-str158932_
                           (symbol->string
                            (##structure-ref
                             _ctx158930_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp159166
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str158932_))))
                            (declare (not safe))
                            (not __tmp159166))
                          (let ((__tmp159165
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str158932_))))
                            (declare (not safe))
                            (not __tmp159165))
                          '#f))))
                 (_not-file-empty?158833_
                  (lambda (_path158928_)
                    (let ((__tmp159167
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path158928_))))
                      (declare (not safe))
                      (not __tmp159167))))
                 (_compile-stub158834_
                  (lambda (_output-scm158841_ _output-bin158842_)
                    (let* ((_gerbil-home158844_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158846_
                            (path-expand '"lib" _gerbil-home158844_))
                           (_gerbil-staticdir158848_
                            (path-expand '"static" _gerbil-libdir158846_))
                           (_gxlink158850_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir158846_))
                           (_tmp158852_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path158856_
                            (lambda (_f158854_)
                              (path-expand
                               (path-strip-directory _f158854_)
                               _tmp158852_)))
                           (_deps158858_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158826_)))
                           (_deps158860_
                            (filter _not-exclude-module?158832_ _deps158858_))
                           (_src-deps-scm158862_
                            (map gxc#find-static-module-file _deps158860_))
                           (_src-deps-scm158864_
                            (filter _not-file-empty?158833_
                                    _src-deps-scm158862_))
                           (_src-deps-scm158866_
                            (map path-expand _src-deps-scm158864_))
                           (_deps-scm158868_
                            (map _tmp-path158856_ _src-deps-scm158866_))
                           (_deps-c158874_
                            (map (lambda (_g158869158871_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158831_
                                      _g158869158871_
                                      '".c")))
                                 _deps-scm158868_))
                           (_deps-o158880_
                            (map (lambda (_g158875158877_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158831_
                                      _g158875158877_
                                      '".o")))
                                 _deps-scm158868_))
                           (_src-bin-scm158882_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158826_)))
                           (_src-bin-scm158884_
                            (path-expand _src-bin-scm158882_))
                           (_bin-scm158886_
                            (let ()
                              (declare (not safe))
                              (_tmp-path158856_ _src-bin-scm158884_)))
                           (_bin-c158888_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158831_
                               _bin-scm158886_
                               '".c")))
                           (_bin-o158890_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158831_
                               _bin-scm158886_
                               '".o")))
                           (_output-bin158892_
                            (path-expand _output-bin158842_))
                           (_output-scm158894_
                            (path-expand _output-scm158841_))
                           (_output-c158896_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158831_
                               _output-scm158894_
                               '".c")))
                           (_output-o158898_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158831_
                               _output-scm158894_
                               '".o")))
                           (_output_-c158900_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158831_
                               _output-scm158894_
                               '"_.c")))
                           (_output_-o158902_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158831_
                               _output-scm158894_
                               '"_.o")))
                           (_gsc-link-opts158904_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158906_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158908_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir158848_)))
                           (_output-ld-opts158910_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a158912_
                            (path-expand '"libgerbil.a" _gerbil-libdir158846_))
                           (_libgerbil.so158914_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir158846_))
                           (_libgerbil-ld-opts158916_
                            (if (file-exists? _libgerbil.so158914_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts158830_
                                   _libgerbil.so158914_))
                                (if (file-exists? _libgerbil.a158912_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts158830_
                                       _libgerbil.a158912_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a158912_
                                       _libgerbil.so158914_)))))
                           (_rpath158918_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158846_)))
                           (_builtin-modules158922_
                            (map (lambda (_mod158920_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod158920_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx158826_ _deps158860_)))))
                      (let ((__tmp159168
                             (lambda ()
                               (let ((__tmp159169
                                      (path-directory _output-bin158892_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp159169)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp159168))
                      (let ((__tmp159170
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub158829_
                                  _builtin-modules158922_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158894_
                         __tmp159170))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp159171
                                   (lambda () (create-directory _tmp158852_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp159171))
                            (for-each
                             copy-file
                             _src-deps-scm158866_
                             _deps-scm158868_)
                            (copy-file _src-bin-scm158884_ _bin-scm158886_)
                            (let ((__tmp159179
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159172
                                   (let ((__tmp159173
                                          (let ((__tmp159174
                                                 (let ((__tmp159175
                                                        (let ((__tmp159176
                                                               (let ((__tmp159177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159178
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm158894_ '()))))
                                (declare (not safe))
                                (cons _bin-scm158886_ __tmp159178))))
                         (declare (not safe))
                         (foldr1 cons __tmp159177 _deps-scm158868_))))
                  (declare (not safe))
                  (foldr1 cons __tmp159176 _gsc-link-opts158904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink158850_
                                                         __tmp159175))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp159174))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp159173))))
                              (declare (not safe))
                              (gxc#invoke __tmp159179 __tmp159172))
                            (let ((__tmp159187
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159180
                                   (let ((__tmp159181
                                          (let ((__tmp159182
                                                 (let ((__tmp159183
                                                        (let ((__tmp159184
                                                               (let ((__tmp159185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159186
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c158900_ '()))))
                                (declare (not safe))
                                (cons _output-c158896_ __tmp159186))))
                         (declare (not safe))
                         (cons _bin-c158888_ __tmp159185))))
                  (declare (not safe))
                  (foldr1 cons __tmp159184 _deps-c158874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159183
                                                           _gsc-static-opts158908_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp159182
                                                    _gsc-cc-opts158906_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp159181))))
                              (declare (not safe))
                              (gxc#invoke __tmp159187 __tmp159180))
                            (let ((__tmp159200
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp159188
                                   (let ((__tmp159189
                                          (let ((__tmp159190
                                                 (let ((__tmp159191
                                                        (let ((__tmp159192
                                                               (let ((__tmp159193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159194
                                     (let ((__tmp159195
                                            (let ((__tmp159196
                                                   (let ((__tmp159197
                                                          (let ((__tmp159198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp159199
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts158916_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp159199))))
                    (declare (not safe))
                    (cons _gerbil-libdir158846_ __tmp159198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp159197))))
                                              (declare (not safe))
                                              (cons _rpath158918_
                                                    __tmp159196))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp159195
                                               _output-ld-opts158910_))))
                                (declare (not safe))
                                (cons _output_-o158902_ __tmp159194))))
                         (declare (not safe))
                         (cons _output-o158898_ __tmp159193))))
                  (declare (not safe))
                  (cons _bin-o158890_ __tmp159192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159191
                                                           _deps-o158880_))))
                                            (declare (not safe))
                                            (cons _output-bin158892_
                                                  __tmp159190))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp159189))))
                              (declare (not safe))
                              (gxc#invoke __tmp159200 __tmp159188))
                            (for-each
                             delete-file
                             (let ((__tmp159201
                                    (let ((__tmp159202
                                           (let ((__tmp159203
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o158902_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o158898_
                                                   __tmp159203))))
                                      (declare (not safe))
                                      (cons _output_-c158900_ __tmp159202))))
                               (declare (not safe))
                               (cons _output-c158896_ __tmp159201)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp158852_)))
                          '#!void)))))
          (let* ((_output-bin158836_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158826_ _opts158827_)))
                 (_output-scm158838_
                  (string-append _output-bin158836_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158834_ _output-scm158838_ _output-bin158836_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158838_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx158651_ _opts158652_)
        (letrec ((_reset-declare158654_
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
                 (_generate-stub158655_
                  (lambda (_deps158817_)
                    (let ((_mod-main158819_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158651_ 'main)))
                          (_reset-decl158820_
                           (let ()
                             (declare (not safe))
                             (_reset-declare158654_)))
                          (_user-decl158821_
                           (let ()
                             (declare (not safe))
                             (_user-declare158656_))))
                      (for-each
                       (lambda (_dep158823_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl158820_)
                         (newline)
                         (if _user-decl158821_
                             (begin (write _user-decl158821_) (newline))
                             '#!void)
                         (write (let ((__tmp159204
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep158823_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp159204)))
                         (newline))
                       _deps158817_)
                      (write (let ((__tmp159205
                                    (let ((__tmp159218
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp159206
                                           (let ((__tmp159214
                                                  (let ((__tmp159215
                                                         (let ((__tmp159216
                                                                (let ((__tmp159217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp159217))))
                   (declare (not safe))
                   (cons __tmp159216 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp159215)))
                                                 (__tmp159207
                                                  (let ((__tmp159208
                                                         (let ((__tmp159209
                                                                (let ((__tmp159210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp159211
                                      (let ((__tmp159212
                                             (let ((__tmp159213
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp159213 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp159212))))
                                 (declare (not safe))
                                 (cons __tmp159211 '()))))
                          (declare (not safe))
                          (cons _mod-main158819_ __tmp159210))))
                   (declare (not safe))
                   (cons 'apply __tmp159209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp159208 '()))))
                                             (declare (not safe))
                                             (cons __tmp159214 __tmp159207))))
                                      (declare (not safe))
                                      (cons __tmp159218 __tmp159206))))
                               (declare (not safe))
                               (cons 'define __tmp159205)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare158656_
                  (lambda ()
                    (let* ((_gsc-opts158722_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts158652_)))
                           (_gsc-prelude158724_
                            (if _gsc-opts158722_
                                (member '"-prelude" _gsc-opts158722_)
                                '#f))
                           (_gsc-prelude158726_
                            (if _gsc-prelude158724_
                                (read (open-input-string
                                       (cadr _gsc-prelude158724_)))
                                '#f)))
                      (let _lp158729_ ((_rest158731_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude158726_ '())))
                                       (_user-decls158732_ '()))
                        (let* ((_rest158733158741_ _rest158731_)
                               (_else158735158749_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls158732_))
                                      '#f
                                      (let ((__tmp159219
                                             (reverse _user-decls158732_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp159219)))))
                               (_K158737158805_
                                (lambda (_rest158752_ _expr158753_)
                                  (let* ((_expr158754158766_ _expr158753_)
                                         (_else158757158774_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp158729_
                                               _rest158752_
                                               _user-decls158732_)))))
                                    (let ((_K158762158795_
                                           (lambda (_decls158793_)
                                             (let ((__tmp159220
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls158732_
                                                              _decls158793_))))
                                               (declare (not safe))
                                               (_lp158729_
                                                _rest158752_
                                                __tmp159220))))
                                          (_K158759158780_
                                           (lambda (_exprs158778_)
                                             (let ((__tmp159221
                                                    (append _exprs158778_
                                                            _rest158752_)))
                                               (declare (not safe))
                                               (_lp158729_
                                                __tmp159221
                                                _user-decls158732_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr158754158766_))
                                          (let ((_tl158764158800_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr158754158766_)))
                                                (_hd158763158798_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr158754158766_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd158763158798_
                                                         'declare))
                                                (let ((_decls158803_
                                                       _tl158764158800_))
                                                  (declare (not safe))
                                                  (_K158762158795_
                                                   _decls158803_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd158763158798_
                                                             'begin))
                                                    (let ((_exprs158788_
                                                           _tl158764158800_))
                                                      (declare (not safe))
                                                      (_K158759158780_
                                                       _exprs158788_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else158757158774_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else158757158774_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest158733158741_))
                              (let ((_hd158738158808_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest158733158741_)))
                                    (_tl158739158810_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest158733158741_))))
                                (let* ((_expr158813_ _hd158738158808_)
                                       (_rest158815_ _tl158739158810_))
                                  (declare (not safe))
                                  (_K158737158805_ _rest158815_ _expr158813_)))
                              (let ()
                                (declare (not safe))
                                (_else158735158749_))))))))
                 (_compile-stub158657_
                  (lambda (_output-scm158664_ _output-bin158665_)
                    (let* ((_gerbil-home158667_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158669_
                            (path-expand '"lib" _gerbil-home158667_))
                           (_runtime158671_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp158673_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home158667_))
                           (_include-gambit-sharp158675_
                            (string-append
                             '"(include \""
                             _gambit-sharp158673_
                             '"\")"))
                           (_bin-scm158677_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158651_)))
                           (_deps158679_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158651_)))
                           (_deps158681_
                            (map gxc#find-static-module-file _deps158679_))
                           (_deps158686_
                            (filter (lambda (_$obj158683_)
                                      (let ((__tmp159222
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj158683_))))
                                        (declare (not safe))
                                        (not __tmp159222)))
                                    _deps158681_))
                           (_deps158690_
                            (filter (lambda (_f158688_)
                                      (let ((__tmp159223
                                             (member _f158688_
                                                     _runtime158671_)))
                                        (declare (not safe))
                                        (not __tmp159223)))
                                    _deps158686_))
                           (_output-base158692_
                            (string-append
                             (path-strip-extension _output-scm158664_)))
                           (_output-c158694_
                            (string-append _output-base158692_ '".c"))
                           (_output-o158696_
                            (string-append _output-base158692_ '".o"))
                           (_output-c_158698_
                            (string-append _output-base158692_ '"_.c"))
                           (_output-o_158700_
                            (string-append _output-base158692_ '"_.o"))
                           (_gsc-link-opts158702_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158704_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158706_
                            (let ((__tmp159224
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir158669_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp159224)))
                           (_output-ld-opts158708_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros158710_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp159226
                                       (let ((__tmp159227
                                              (let ((__tmp159228
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp158675_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp159228))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp159227))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp159226))
                                (let ((__tmp159225
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp158675_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp159225))))
                           (_gsc-link-opts158712_
                            (append _gsc-link-opts158702_
                                    _gsc-gx-macros158710_))
                           (_rpath158714_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158669_)))
                           (_default-ld-options158716_
                            (let ((__tmp159229
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp159229))))
                      (let ((__tmp159230
                             (lambda ()
                               (let ((__tmp159231
                                      (path-directory _output-bin158665_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp159231)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp159230))
                      (let ((__tmp159232
                             (lambda ()
                               (let ((__tmp159233
                                      (let ((__tmp159234
                                             (let ((__tmp159235
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm158677_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp159235
                                                       _deps158690_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp159234
                                                _runtime158671_))))
                                 (declare (not safe))
                                 (_generate-stub158655_ __tmp159233)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158664_
                         __tmp159232))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp159241
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159236
                                   (let ((__tmp159237
                                          (let ((__tmp159238
                                                 (let ((__tmp159239
                                                        (let ((__tmp159240
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm158664_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp159240 _gsc-link-opts158712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_158698_
                                                         __tmp159239))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp159238))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp159237))))
                              (declare (not safe))
                              (gxc#invoke __tmp159241 __tmp159236))
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
                         (cons _output-c_158698_ '()))))
                  (declare (not safe))
                  (cons _output-c158694_ __tmp159246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159245
                                                           _gsc-static-opts158706_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp159244
                                                    _gsc-cc-opts158704_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp159243))))
                              (declare (not safe))
                              (gxc#invoke __tmp159247 __tmp159242))
                            (let ((__tmp159257
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp159248
                                   (let ((__tmp159249
                                          (let ((__tmp159250
                                                 (let ((__tmp159251
                                                        (let ((__tmp159252
                                                               (let ((__tmp159253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159254
                                     (let ((__tmp159255
                                            (let ((__tmp159256
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options158716_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir158669_
                                                    __tmp159256))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp159255))))
                                (declare (not safe))
                                (cons _rpath158714_ __tmp159254))))
                         (declare (not safe))
                         (foldr1 cons __tmp159253 _output-ld-opts158708_))))
                  (declare (not safe))
                  (cons _output-o_158700_ __tmp159252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o158696_
                                                         __tmp159251))))
                                            (declare (not safe))
                                            (cons _output-bin158665_
                                                  __tmp159250))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp159249))))
                              (declare (not safe))
                              (gxc#invoke __tmp159257 __tmp159248)))
                          '#!void)))))
          (let* ((_output-bin158659_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158651_ _opts158652_)))
                 (_output-scm158661_
                  (string-append _output-bin158659_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158657_ _output-scm158661_ _output-bin158659_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158661_))))))
    (define gxc#find-export-binding
      (lambda (_ctx158601_ _id158602_)
        (let ((_$e158648_
               (let ((__tmp159259
                      (lambda (_e158603158605_)
                        (let* ((_g158607158617_ _e158603158605_)
                               (_else158609158625_ (lambda () '#f))
                               (_K158611158629_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g158607158617_
                                 'gx#module-export::t))
                              (let* ((_e158612158632_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158607158617_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e158613158635_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158607158617_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e158614158638_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158607158617_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e158614158638_ '0))
                                    (let ((_e158615158641_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g158607158617_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g158643158645_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g158643158645_
                                                    _id158602_)))
                                           _e158615158641_)
                                          (let ()
                                            (declare (not safe))
                                            (_K158611158629_))
                                          (let ()
                                            (declare (not safe))
                                            (_else158609158625_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else158609158625_))))
                              (let ()
                                (declare (not safe))
                                (_else158609158625_))))))
                     (__tmp159258
                      (##structure-ref
                       _ctx158601_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp159259 __tmp159258))))
          (if _$e158648_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e158648_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx158593_ _id158594_)
        (let ((_$e158596_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx158593_ _id158594_))))
          (if _$e158596_
              ((lambda (_bind158599_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind158599_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id158594_)))
                 (##structure-ref _bind158599_ '1 gx#binding::t '#f))
               _$e158596_)
              (let ((__tmp159260
                     (##structure-ref
                      _ctx158593_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp159260
                 _id158594_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx158480_)
        (letrec* ((_ht158482_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template158483_
                   (lambda (_in158545_ _phi158546_)
                     (let ((_iphi158548_
                            (fx+ _phi158546_
                                 (##direct-structure-ref
                                  _in158545_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports158549_
                            (##structure-ref
                             (##direct-structure-ref
                              _in158545_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp158551_ ((_rest158553_ _imports158549_)
                                        (_r158554_ '()))
                         (let* ((_rest158555158563_ _rest158553_)
                                (_else158557158571_ (lambda () _r158554_))
                                (_K158559158581_
                                 (lambda (_rest158574_ _in158575_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in158575_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi158548_))
                                           (let ((__tmp159267
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in158575_
                                                          _r158554_))))
                                             (declare (not safe))
                                             (_lp158551_
                                              _rest158574_
                                              __tmp159267))
                                           (let ()
                                             (declare (not safe))
                                             (_lp158551_
                                              _rest158574_
                                              _r158554_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in158575_
                                              'gx#module-import::t))
                                           (let ((_iphi158577_
                                                  (fx+ _phi158546_
                                                       (##direct-structure-ref
                                                        _in158575_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi158577_))
                                                 (let ((__tmp159265
                                                        (let ((__tmp159266
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in158575_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp159266 _r158554_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp158551_
                                                    _rest158574_
                                                    __tmp159265))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp158551_
                                                    _rest158574_
                                                    _r158554_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in158575_
                                                  'gx#import-set::t))
                                               (let ((_xphi158579_
                                                      (fx+ _iphi158548_
                                                           (##direct-structure-ref
                                                            _in158575_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi158579_))
                                                     (let ((__tmp159263
                                                            (let ((__tmp159264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in158575_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp159264 _r158554_))))
               (declare (not safe))
               (_lp158551_ _rest158574_ __tmp159263))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi158579_)
                                                         (let ((__tmp159261
                                                                (let ((__tmp159262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template158483_
                                  _in158575_
                                  _iphi158548_))))
                          (declare (not safe))
                          (foldl1 cons _r158554_ __tmp159262))))
                   (declare (not safe))
                   (_lp158551_ _rest158574_ __tmp159261))
                 (let ()
                   (declare (not safe))
                   (_lp158551_ _rest158574_ _r158554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp158551_
                                                  _rest158574_
                                                  _r158554_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest158555158563_))
                               (let ((_hd158560158584_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest158555158563_)))
                                     (_tl158561158586_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest158555158563_))))
                                 (let* ((_in158589_ _hd158560158584_)
                                        (_rest158591_ _tl158561158586_))
                                   (declare (not safe))
                                   (_K158559158581_ _rest158591_ _in158589_)))
                               (let ()
                                 (declare (not safe))
                                 (_else158557158571_))))))))
                  (_find-deps158484_
                   (lambda (_rest158491_ _deps158492_)
                     (let* ((_rest158493158501_ _rest158491_)
                            (_else158495158509_ (lambda () _deps158492_))
                            (_K158497158533_
                             (lambda (_rest158512_ _hd158513_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd158513_
                                      'gx#module-context::t))
                                   (let ((_id158515_
                                          (##structure-ref
                                           _hd158513_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports158516_
                                          (##structure-ref
                                           _hd158513_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht158482_ _id158515_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps158484_
                                            _rest158512_
                                            _deps158492_))
                                         (let ((_$e158518_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd158513_))))
                                           (if _$e158518_
                                               ((lambda (_pre158521_)
                                                  (let ((_xdeps158523_
                                                         (let ((__tmp159280
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre158521_ _imports158516_))))
                   (declare (not safe))
                   (_find-deps158484_ __tmp159280 _deps158492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht158482_
                                                       _id158515_
                                                       _hd158513_))
                                                    (let ((__tmp159281
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd158513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps158523_))))
              (declare (not safe))
              (_find-deps158484_ _rest158512_ __tmp159281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e158518_)
                                               (let ((_xdeps158525_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps158484_
                                                         _imports158516_
                                                         _deps158492_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht158482_
                                                    _id158515_
                                                    _hd158513_))
                                                 (let ((__tmp159279
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd158513_
                                                                _xdeps158525_))))
                                                   (declare (not safe))
                                                   (_find-deps158484_
                                                    _rest158512_
                                                    __tmp159279)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd158513_
                                          'gx#prelude-context::t))
                                       (let ((_id158527_
                                              (##structure-ref
                                               _hd158513_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht158482_
                                                _id158527_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps158484_
                                                _rest158512_
                                                _deps158492_))
                                             (let ((_xdeps158529_
                                                    (let ((__tmp159277
                                                           (##structure-ref
                                                            _hd158513_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps158484_
                                                       __tmp159277
                                                       _deps158492_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht158482_
                                                      _id158527_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps158484_
                                                      _rest158512_
                                                      _xdeps158529_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht158482_
                                                        _id158527_
                                                        _hd158513_))
                                                     (let ((__tmp159278
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd158513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps158529_))))
               (declare (not safe))
               (_find-deps158484_ _rest158512_ __tmp159278)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd158513_
                                              'gx#module-import::t))
                                           (if (let ((__tmp159276
                                                      (##direct-structure-ref
                                                       _hd158513_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp159276))
                                               (let ((__tmp159274
                                                      (let ((__tmp159275
                                                             (##direct-structure-ref
                                                              _hd158513_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp159275
                                                              _rest158512_))))
                                                 (declare (not safe))
                                                 (_find-deps158484_
                                                  __tmp159274
                                                  _deps158492_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps158484_
                                                  _rest158512_
                                                  _deps158492_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd158513_
                                                  'gx#module-export::t))
                                               (let ((__tmp159272
                                                      (let ((__tmp159273
                                                             (##direct-structure-ref
                                                              _hd158513_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp159273
                                                              _rest158512_))))
                                                 (declare (not safe))
                                                 (_find-deps158484_
                                                  __tmp159272
                                                  _deps158492_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd158513_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp159271
                                                              (##direct-structure-ref
                                                               _hd158513_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp159271))
                                                       (let ((__tmp159269
                                                              (let ((__tmp159270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd158513_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp159270 _rest158512_))))
                 (declare (not safe))
                 (_find-deps158484_ __tmp159269 _deps158492_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd158513_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps158531_
                           (let ()
                             (declare (not safe))
                             (_import-set-template158483_ _hd158513_ '0)))
                          (__tmp159268
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest158512_ _xdeps158531_))))
                     (declare (not safe))
                     (_find-deps158484_ __tmp159268 _deps158492_))
                   (let ()
                     (declare (not safe))
                     (_find-deps158484_ _rest158512_ _deps158492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd158513_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest158493158501_))
                           (let ((_hd158498158536_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest158493158501_)))
                                 (_tl158499158538_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest158493158501_))))
                             (let* ((_hd158541_ _hd158498158536_)
                                    (_rest158543_ _tl158499158538_))
                               (declare (not safe))
                               (_K158497158533_ _rest158543_ _hd158541_)))
                           (let ()
                             (declare (not safe))
                             (_else158495158509_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp159282
                                  (let ((_$e158486_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx158480_))))
                                    (if _$e158486_
                                        ((lambda (_pre158489_)
                                           (let ((__tmp159283
                                                  (##structure-ref
                                                   _ctx158480_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre158489_ __tmp159283)))
                                         _$e158486_)
                                        (##structure-ref
                                         _ctx158480_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps158484_ __tmp159282 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx158411_)
        (let* ((_context-id158413_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx158411_
                       'gx#module-context::t))
                    (##structure-ref _ctx158411_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx158411_)))
               (_scm158415_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id158413_))
                 '".scm"))
               (_dirs158417_ (gx#current-expander-module-library-path))
               (_dirs158423_
                (let ((_user-libpath158419_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath158419_
                      (let ((_user-libpath158421_
                             (path-expand '"lib" _user-libpath158419_)))
                        (if (member _user-libpath158421_ _dirs158417_)
                            _dirs158417_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath158421_ _dirs158417_))))
                      _dirs158417_)))
               (_dirs158432_
                (let ((_$e158425_ (gxc#current-compile-output-dir)))
                  (if _$e158425_
                      ((lambda (_g158427158429_)
                         (let ()
                           (declare (not safe))
                           (cons _g158427158429_ _dirs158423_)))
                       _$e158425_)
                      _dirs158423_)))
               (_dirs158438_
                (map (lambda (_g158433158435_)
                       (path-expand '"static" _g158433158435_))
                     _dirs158432_)))
          (let _lp158441_ ((_rest158443_ _dirs158438_))
            (let* ((_rest158444158452_ _rest158443_)
                   (_else158446158460_
                    (lambda ()
                      (let ((__tmp159284
                             (##structure-ref
                              _ctx158411_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp159284
                         _scm158415_))))
                   (_K158448158468_
                    (lambda (_rest158463_ _dir158464_)
                      (let ((_path158466_
                             (path-expand _scm158415_ _dir158464_)))
                        (if (file-exists? _path158466_)
                            _path158466_
                            (let ()
                              (declare (not safe))
                              (_lp158441_ _rest158463_)))))))
              (if (let () (declare (not safe)) (##pair? _rest158444158452_))
                  (let ((_hd158449158471_
                         (let ()
                           (declare (not safe))
                           (##car _rest158444158452_)))
                        (_tl158450158473_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158444158452_))))
                    (let* ((_dir158476_ _hd158449158471_)
                           (_rest158478_ _tl158450158473_))
                      (declare (not safe))
                      (_K158448158468_ _rest158478_ _dir158476_)))
                  (let () (declare (not safe)) (_else158446158460_))))))))
    (define gxc#file-empty?
      (lambda (_path158409_)
        (let ((__tmp159285 (file-info-size (file-info _path158409_ '#t))))
          (declare (not safe))
          (zero? __tmp159285))))
    (define gxc#compile-top-module
      (lambda (_ctx158398_)
        (let ((__tmp159289
               (lambda ()
                 (let ((__tmp159290
                        (##structure-ref
                         _ctx158398_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp159290))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp159291
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx158398_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp159291))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx158398_))
                 (if (let ((__tmp159294
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx158398_))))
                       (declare (not safe))
                       (null? __tmp159294))
                     (let* ((_thr1158403_
                             (let ((__tmp159292
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx158398_)))))
                               (declare (not safe))
                               (spawn __tmp159292)))
                            (_thr2158406_
                             (let ((__tmp159293
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx158398_)))))
                               (declare (not safe))
                               (spawn __tmp159293))))
                       (let () (declare (not safe)) (gxc#join! _thr1158403_))
                       (let () (declare (not safe)) (gxc#join! _thr2158406_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx158398_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx158398_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx158398_))
                     '#!void)))
              (__tmp159288
               (let ((__obj159096
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj159096)
                 __obj159096))
              (__tmp159287 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp159286 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp159289
           gx#current-expander-context
           _ctx158398_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp159288
           gxc#current-compile-runtime-sections
           __tmp159287
           gxc#current-compile-runtime-names
           __tmp159286))))
    (define gxc#collect-bindings
      (lambda (_ctx158396_)
        (let ((__tmp159295
               (##structure-ref _ctx158396_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp159295))))
    (define gxc#compile-runtime-code
      (lambda (_ctx158342_)
        (letrec ((_compile1158344_
                  (lambda (_ctx158385_)
                    (let* ((_code158387_
                            (##structure-ref
                             _ctx158385_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt158391_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code158387_))
                                (let ((_idstr158389_
                                       (let ((__tmp159296
                                              (##structure-ref
                                               _ctx158385_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp159296))))
                                  (string-append _idstr158389_ '"__0"))
                                '#f)))
                      (if _rt158391_
                          (begin
                            (let ((__tmp159297
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp159297 _ctx158385_ _rt158391_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code158346_
                               _ctx158385_
                               _code158387_)))
                          (let ((_path158394_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx158385_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path158394_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code158347_
                         _ctx158385_
                         _code158387_
                         _rt158391_)))))
                 (_context-timestamp158345_
                  (lambda (_ctx158383_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx158383_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code158346_
                  (lambda (_ctx158365_ _code158366_)
                    (let* ((_lifts158368_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code158371_
                            (let ((__tmp159300
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code158366_))))
                                  (__tmp159299
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp159298
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp159300
                               gx#current-expander-context
                               _ctx158365_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts158368_
                               gxc#current-compile-marks
                               __tmp159299
                               gxc#current-compile-identifiers
                               __tmp159298)))
                           (_runtime-code158373_
                            (if (let ((__tmp159304 (unbox _lifts158368_)))
                                  (declare (not safe))
                                  (null? __tmp159304))
                                _runtime-code158371_
                                (let ((__tmp159301
                                       (let ((__tmp159303
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code158371_
                                                      '())))
                                             (__tmp159302
                                              (reverse (unbox _lifts158368_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp159303
                                                 __tmp159302))))
                                  (declare (not safe))
                                  (cons 'begin __tmp159301))))
                           (_runtime-code158375_
                            (let ((__tmp159305
                                   (let ((__tmp159307
                                          (let ((__tmp159308
                                                 (let ((__tmp159311
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp158345_
                                                           _ctx158365_)))
                                                       (__tmp159309
                                                        (let ((__tmp159310
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp159310
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp159311
                                                         __tmp159309))))
                                            (declare (not safe))
                                            (cons 'define __tmp159308)))
                                         (__tmp159306
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code158373_ '()))))
                                     (declare (not safe))
                                     (cons __tmp159307 __tmp159306))))
                              (declare (not safe))
                              (cons 'begin __tmp159305)))
                           (_scm0158377_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx158365_
                               '0
                               '".scm"))))
                      (let ((_scms158380_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx158365_))))
                        (let ((__tmp159312
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0158377_
                                    _runtime-code158375_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp159312
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms158380_)
                            (delete-file _scms158380_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0158377_
                           '" => "
                           _scms158380_))
                        (copy-file _scm0158377_ _scms158380_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0158377_))))))
                 (_generate-loader-code158347_
                  (lambda (_ctx158354_ _code158355_ _rt158356_)
                    (let* ((_loader-code158359_
                            (let ((__tmp159313
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code158355_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp159313
                               gx#current-expander-context
                               _ctx158354_)))
                           (_loader-code158361_
                            (if _rt158356_
                                (let ((__tmp159314
                                       (let ((__tmp159315
                                              (let ((__tmp159316
                                                     (let ((__tmp159317
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt158356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp159317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159316 '()))))
                                         (declare (not safe))
                                         (cons _loader-code158359_
                                               __tmp159315))))
                                  (declare (not safe))
                                  (cons 'begin __tmp159314))
                                _loader-code158359_)))
                      (let ((__tmp159318
                             (lambda ()
                               (let ((__tmp159319
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx158354_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp159319
                                  _loader-code158361_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp159318
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules158349_
                 (let ((__tmp159320
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx158342_))))
                   (declare (not safe))
                   (cons _ctx158342_ __tmp159320))))
            (for-each
             (lambda (_ctx158351_)
               (let ((__tmp159321
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1158344_ _ctx158351_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp159321
                  gxc#current-compile-decls
                  '())))
             _all-modules158349_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx158239_)
        (letrec ((_compile-ssi158241_
                  (lambda (_code158312_)
                    (let* ((_path158314_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx158239_
                               '#f
                               '".ssi")))
                           (_prelude158325_
                            (let* ((_super158316_
                                    (##structure-ref
                                     _ctx158239_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e158318_
                                    (##structure-ref
                                     _super158316_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e158318_
                                  ((lambda (_g158320158322_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g158320158322_)))
                                   _$e158318_)
                                  ':<root>)))
                           (_ns158327_
                            (##structure-ref
                             _ctx158239_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr158329_
                            (symbol->string
                             (##structure-ref
                              _ctx158239_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg158336_
                            (let ((_$e158331_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr158329_ '#\/))))
                              (if _$e158331_
                                  ((lambda (_x158334_)
                                     (string->symbol
                                      (substring _idstr158329_ '0 _x158334_)))
                                   _$e158331_)
                                  '#f)))
                           (_rt158338_
                            (let ((__tmp159322
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp159322 _ctx158239_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path158314_))
                      (let ((__tmp159323
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude158325_))
                               (if _pkg158336_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg158336_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns158327_))
                               (newline)
                               (pretty-print _code158312_)
                               (if _rt158338_
                                   (pretty-print
                                    (let ((__tmp159324
                                           (let ((__tmp159328
                                                  (let ((__tmp159329
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp159329)))
                                                 (__tmp159325
                                                  (let ((__tmp159326
                                                         (let ((__tmp159327
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt158338_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp159327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp159326 '()))))
                                             (declare (not safe))
                                             (cons __tmp159328 __tmp159325))))
                                      (declare (not safe))
                                      (cons '%#call __tmp159324)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path158314_
                         __tmp159323)))))
                 (_compile-phi158242_
                  (lambda (_part158252_)
                    (let* ((_part158253158266_ _part158252_)
                           (_E158255158270_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part158253158266_))))
                           (_K158256158281_
                            (lambda (_code158273_
                                     _n158274_
                                     _phi158275_
                                     _phi-ctx158276_)
                              (let* ((_code158279_
                                      (let ((__tmp159330
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code158273_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp159330
                                         gx#current-expander-context
                                         _phi-ctx158276_
                                         gx#current-expander-phi
                                         _phi158275_)))
                                     (__tmp159331
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx158239_
                                         _n158274_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp159331
                                 _code158279_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part158253158266_))
                          (let ((_hd158257158284_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part158253158266_)))
                                (_tl158258158286_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part158253158266_))))
                            (let ((_phi-ctx158289_ _hd158257158284_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl158258158286_))
                                  (let ((_hd158259158291_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl158258158286_)))
                                        (_tl158260158293_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl158258158286_))))
                                    (let ((_phi158296_ _hd158259158291_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl158260158293_))
                                          (let ((_hd158261158298_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl158260158293_)))
                                                (_tl158262158300_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl158260158293_))))
                                            (let ((_n158303_ _hd158261158298_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl158262158300_))
                                                  (let ((_hd158263158305_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl158262158300_)))
                                                        (_tl158264158307_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl158262158300_))))
                                                    (let ((_code158310_
                                                           _hd158263158305_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl158264158307_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K158256158281_
                                                             _code158310_
                                                             _n158303_
                                                             _phi158296_
                                                             _phi-ctx158289_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E158255158270_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E158255158270_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E158255158270_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E158255158270_)))))
                          (let () (declare (not safe)) (_E158255158270_)))))))
          (let ((_g159332_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx158239_))))
            (begin
              (let ((_g159333_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g159332_)
                           (##vector-length _g159332_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g159333_ 2)))
                    (error "Context expects 2 values" _g159333_)))
              (let ((_ssi-code158244_
                     (let () (declare (not safe)) (##vector-ref _g159332_ 0)))
                    (_phi-code158245_
                     (let () (declare (not safe)) (##vector-ref _g159332_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi158241_ _ssi-code158244_))
                  (let ((_threads158250_
                         (map (lambda (_code158247_)
                                (let ((__tmp159334
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi158242_
                                            _code158247_)))))
                                  (declare (not safe))
                                  (spawn __tmp159334)))
                              _phi-code158245_)))
                    (for-each gxc#join! _threads158250_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx158222_)
        (let* ((_path158224_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx158222_ '#f '".ssxi.ss")))
               (_code158226_
                (let ((__tmp159335
                       (##structure-ref
                        _ctx158222_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp159335)))
               (_idstr158228_
                (symbol->string
                 (##structure-ref _ctx158222_ '1 gx#expander-context::t '#f)))
               (_pkg158235_
                (let ((_$e158230_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr158228_ '#\/))))
                  (if _$e158230_
                      ((lambda (_x158233_)
                         (string->symbol
                          (substring _idstr158228_ '0 _x158233_)))
                       _$e158230_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path158224_))
          (let ((__tmp159336
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg158235_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg158235_))
                       '#!void)
                   (newline)
                   (pretty-print _code158226_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path158224_ __tmp159336)))))
    (define gxc#generate-meta-code
      (lambda (_ctx158215_)
        (let* ((_state158217_
                (let ((__obj159097
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj159097 _ctx158215_)
                  __obj159097))
               (_ssi-code158219_
                (let ((__tmp159337
                       (##structure-ref
                        _ctx158215_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp159337
                   'state:
                   _state158217_))))
          (values _ssi-code158219_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state158217_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx158208_)
        (let ((_lifts158210_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp159340
                 (lambda ()
                   (let ((_code158213_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx158208_))))
                     (if (let ((__tmp159344 (unbox _lifts158210_)))
                           (declare (not safe))
                           (null? __tmp159344))
                         _code158213_
                         (let ((__tmp159341
                                (let ((__tmp159343
                                       (let ()
                                         (declare (not safe))
                                         (cons _code158213_ '())))
                                      (__tmp159342
                                       (reverse (unbox _lifts158210_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp159343 __tmp159342))))
                           (declare (not safe))
                           (cons 'begin __tmp159341))))))
                (__tmp159339
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp159338
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp159340
             gxc#current-compile-lift
             _lifts158210_
             gxc#current-compile-marks
             __tmp159339
             gxc#current-compile-identifiers
             __tmp159338)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx158204_)
        (let ((_modules158206_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp159345
                 (##structure-ref _ctx158204_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp159345 'modules: _modules158206_))
          (reverse (unbox _modules158206_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path158187_ _code158188_ _phi?158189_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path158187_))
        (let ((__tmp159346
               (lambda ()
                 (pretty-print
                  (let ((__tmp159347
                         (let ((__tmp159354
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp159348
                                (let ((__tmp159353
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp159349
                                       (let ((__tmp159352
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp159350
                                              (let ((__tmp159351
                                                     (if _phi?158189_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp159351))))
                                         (declare (not safe))
                                         (cons __tmp159352 __tmp159350))))
                                  (declare (not safe))
                                  (cons __tmp159353 __tmp159349))))
                           (declare (not safe))
                           (cons __tmp159354 __tmp159348))))
                    (declare (not safe))
                    (cons 'declare __tmp159347)))
                 (pretty-print _code158188_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path158187_ __tmp159346))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path158187_ _phi?158189_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path158187_))))
    (define gxc#compile-scm-file__0
      (lambda (_path158195_ _code158196_)
        (let ((_phi?158198_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path158195_ _code158196_ _phi?158198_))))
    (define gxc#compile-scm-file
      (lambda _g159356_
        (let ((_g159355_ (let () (declare (not safe)) (##length _g159356_))))
          (cond ((let () (declare (not safe)) (##fx= _g159355_ 2))
                 (apply (lambda (_path158195_ _code158196_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path158195_
                             _code158196_)))
                        _g159356_))
                ((let () (declare (not safe)) (##fx= _g159355_ 3))
                 (apply (lambda (_path158200_ _code158201_ _phi?158202_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path158200_
                             _code158201_
                             _phi?158202_)))
                        _g159356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g159356_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?158088_)
        (let _lp158090_ ((_rest158092_ (gxc#current-compile-gsc-options))
                         (_opts158093_ '()))
          (let* ((_rest158094158114_ _rest158092_)
                 (_else158098158122_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?158088_))
                             (gxc#current-compile-debug))
                        (let ((__tmp159357
                               (let ((__tmp159358 (reverse _opts158093_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp159358))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp159357))
                        (reverse _opts158093_)))))
            (let ((_K158108158165_
                   (lambda (_rest158163_)
                     (let ()
                       (declare (not safe))
                       (_lp158090_ _rest158163_ _opts158093_))))
                  (_K158103158147_
                   (lambda (_rest158145_)
                     (let ()
                       (declare (not safe))
                       (_lp158090_ _rest158145_ _opts158093_))))
                  (_K158100158129_
                   (lambda (_rest158126_ _opt158127_)
                     (let ((__tmp159359
                            (let ()
                              (declare (not safe))
                              (cons _opt158127_ _opts158093_))))
                       (declare (not safe))
                       (_lp158090_ _rest158126_ __tmp159359)))))
              (if (let () (declare (not safe)) (##pair? _rest158094158114_))
                  (let ((_tl158110158170_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158094158114_)))
                        (_hd158109158168_
                         (let ()
                           (declare (not safe))
                           (##car _rest158094158114_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158109158168_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158110158170_))
                            (let* ((_tl158112158173_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl158110158170_)))
                                   (_rest158176_ _tl158112158173_))
                              (declare (not safe))
                              (_K158108158165_ _rest158176_))
                            (let ((_opt158137_ _hd158109158168_)
                                  (_rest158139_ _tl158110158170_))
                              (let ()
                                (declare (not safe))
                                (_K158100158129_ _rest158139_ _opt158137_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158109158168_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158110158170_))
                                (let* ((_tl158107158155_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl158110158170_)))
                                       (_rest158158_ _tl158107158155_))
                                  (declare (not safe))
                                  (_K158103158147_ _rest158158_))
                                (let ((_opt158137_ _hd158109158168_)
                                      (_rest158139_ _tl158110158170_))
                                  (let ()
                                    (declare (not safe))
                                    (_K158100158129_
                                     _rest158139_
                                     _opt158137_))))
                            (let ((_opt158137_ _hd158109158168_)
                                  (_rest158139_ _tl158110158170_))
                              (let ()
                                (declare (not safe))
                                (_K158100158129_ _rest158139_ _opt158137_))))))
                  (let () (declare (not safe)) (_else158098158122_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?158182_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?158182_))))
    (define gxc#gsc-link-options
      (lambda _g159361_
        (let ((_g159360_ (let () (declare (not safe)) (##length _g159361_))))
          (cond ((let () (declare (not safe)) (##fx= _g159360_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g159361_))
                ((let () (declare (not safe)) (##fx= _g159360_ 1))
                 (apply (lambda (_phi?158184_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?158184_)))
                        _g159361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g159361_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?157989_)
        (let _lp157991_ ((_rest157993_ (gxc#current-compile-gsc-options))
                         (_opts157994_ '()))
          (let* ((_rest157995158015_ _rest157993_)
                 (_else157999158023_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157989_))
                             (gxc#current-compile-debug))
                        (let ((__tmp159362
                               (let ((__tmp159363 (reverse _opts157994_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp159363))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp159362))
                        (reverse _opts157994_)))))
            (let ((_K158009158062_
                   (lambda (_rest158059_ _opt158060_)
                     (let ((__tmp159364
                            (let ((__tmp159365
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts157994_))))
                              (declare (not safe))
                              (cons _opt158060_ __tmp159365))))
                       (declare (not safe))
                       (_lp157991_ _rest158059_ __tmp159364))))
                  (_K158004158043_
                   (lambda (_rest158041_)
                     (let ()
                       (declare (not safe))
                       (_lp157991_ _rest158041_ _opts157994_))))
                  (_K158001158029_
                   (lambda (_rest158027_)
                     (let ()
                       (declare (not safe))
                       (_lp157991_ _rest158027_ _opts157994_)))))
              (if (let () (declare (not safe)) (##pair? _rest157995158015_))
                  (let ((_tl158011158067_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157995158015_)))
                        (_hd158010158065_
                         (let ()
                           (declare (not safe))
                           (##car _rest157995158015_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158010158065_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158011158067_))
                            (let ((_tl158013158072_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl158011158067_)))
                                  (_hd158012158070_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl158011158067_))))
                              (let ((_opt158075_ _hd158012158070_)
                                    (_rest158077_ _tl158013158072_))
                                (let ()
                                  (declare (not safe))
                                  (_K158009158062_ _rest158077_ _opt158075_))))
                            (let ((_rest158035_ _tl158011158067_))
                              (declare (not safe))
                              (_K158001158029_ _rest158035_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158010158065_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158011158067_))
                                (let* ((_tl158008158051_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl158011158067_)))
                                       (_rest158054_ _tl158008158051_))
                                  (declare (not safe))
                                  (_K158004158043_ _rest158054_))
                                (let ((_rest158035_ _tl158011158067_))
                                  (declare (not safe))
                                  (_K158001158029_ _rest158035_)))
                            (let ((_rest158035_ _tl158011158067_))
                              (declare (not safe))
                              (_K158001158029_ _rest158035_)))))
                  (let () (declare (not safe)) (_else157999158023_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?158083_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?158083_))))
    (define gxc#gsc-cc-options
      (lambda _g159367_
        (let ((_g159366_ (let () (declare (not safe)) (##length _g159367_))))
          (cond ((let () (declare (not safe)) (##fx= _g159366_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g159367_))
                ((let () (declare (not safe)) (##fx= _g159366_ 1))
                 (apply (lambda (_phi?158085_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?158085_)))
                        _g159367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g159367_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir157984_)
        (let* ((_user-staticdir157986_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp159368
                (let ((__tmp159369
                       (string-append
                        '"-I "
                        _staticdir157984_
                        '" -I "
                        _user-staticdir157986_)))
                  (declare (not safe))
                  (cons __tmp159369 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp159368))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp157896_ ((_rest157898_ (gxc#current-compile-gsc-options))
                         (_opts157899_ '()))
          (let* ((_rest157900157920_ _rest157898_)
                 (_else157904157928_ (lambda () _opts157899_)))
            (let ((_K157914157971_
                   (lambda (_rest157969_)
                     (let ()
                       (declare (not safe))
                       (_lp157896_ _rest157969_ _opts157899_))))
                  (_K157909157949_
                   (lambda (_rest157946_ _opt157947_)
                     (let ((__tmp159370
                            (append _opts157899_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt157947_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp157896_ _rest157946_ __tmp159370))))
                  (_K157906157934_
                   (lambda (_rest157932_)
                     (let ()
                       (declare (not safe))
                       (_lp157896_ _rest157932_ _opts157899_)))))
              (if (let () (declare (not safe)) (##pair? _rest157900157920_))
                  (let ((_tl157916157976_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157900157920_)))
                        (_hd157915157974_
                         (let ()
                           (declare (not safe))
                           (##car _rest157900157920_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157915157974_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157916157976_))
                            (let* ((_tl157918157979_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157916157976_)))
                                   (_rest157982_ _tl157918157979_))
                              (declare (not safe))
                              (_K157914157971_ _rest157982_))
                            (let ((_rest157940_ _tl157916157976_))
                              (declare (not safe))
                              (_K157906157934_ _rest157940_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157915157974_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157916157976_))
                                (let ((_tl157913157959_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl157916157976_)))
                                      (_hd157912157957_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl157916157976_))))
                                  (let ((_opt157962_ _hd157912157957_)
                                        (_rest157964_ _tl157913157959_))
                                    (let ()
                                      (declare (not safe))
                                      (_K157909157949_
                                       _rest157964_
                                       _opt157962_))))
                                (let ((_rest157940_ _tl157916157976_))
                                  (declare (not safe))
                                  (_K157906157934_ _rest157940_)))
                            (let ((_rest157940_ _tl157916157976_))
                              (declare (not safe))
                              (_K157906157934_ _rest157940_)))))
                  (let () (declare (not safe)) (_else157904157928_))))))))
    (define gxc#not-string-empty?
      (lambda (_str157893_)
        (let ((__tmp159371
               (let () (declare (not safe)) (string-empty? _str157893_))))
          (declare (not safe))
          (not __tmp159371))))
    (define gxc#gsc-compile-file
      (lambda (_path157861_ _phi?157862_)
        (letrec ((_gsc-link-path157864_
                  (lambda (_base-path157885_)
                    (let _lp157887_ ((_n157889_ '1))
                      (let ((_path157891_
                             (string-append
                              _base-path157885_
                              '".o"
                              (number->string _n157889_))))
                        (if (file-exists? _path157891_)
                            (let ((__tmp159372
                                   (let ()
                                     (declare (not safe))
                                     (+ _n157889_ '1))))
                              (declare (not safe))
                              (_lp157887_ __tmp159372))
                            _path157891_))))))
          (let* ((_base-path157866_ (path-strip-extension _path157861_))
                 (_path-c157868_ (string-append _base-path157866_ '".c"))
                 (_path-o157870_ (string-append _base-path157866_ '".o"))
                 (_link-path157872_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path157864_ _base-path157866_)))
                 (_link-path-c157874_ (string-append _link-path157872_ '".c"))
                 (_link-path-o157876_ (string-append _link-path157872_ '".o"))
                 (_gsc-link-opts157878_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?157862_)))
                 (_gsc-cc-opts157880_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?157862_)))
                 (_gcc-ld-opts157882_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp159379 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp159373
                   (let ((__tmp159374
                          (let ((__tmp159375
                                 (let ((__tmp159376
                                        (let ((__tmp159377
                                               (let ((__tmp159378
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path157861_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp159378
                                                         _gsc-link-opts157878_))))
                                          (declare (not safe))
                                          (cons _link-path-c157874_
                                                __tmp159377))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp159376))))
                            (declare (not safe))
                            (cons '"-flat" __tmp159375))))
                     (declare (not safe))
                     (cons '"-link" __tmp159374))))
              (declare (not safe))
              (gxc#invoke __tmp159379 __tmp159373 'stdout-redirection: '#t))
            (let ((__tmp159386 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp159380
                   (let ((__tmp159381
                          (let ((__tmp159382
                                 (let ((__tmp159383
                                        (let ((__tmp159384
                                               (let ((__tmp159385
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c157874_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c157868_
                                                       __tmp159385))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp159384
                                                  _gsc-cc-opts157880_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp159383))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp159382))))
                     (declare (not safe))
                     (cons '"-obj" __tmp159381))))
              (declare (not safe))
              (gxc#invoke __tmp159386 __tmp159380 'stdout-redirection: '#t))
            (let ((__tmp159392 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp159387
                   (let ((__tmp159388
                          (let ((__tmp159389
                                 (let ((__tmp159390
                                        (let ((__tmp159391
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o157876_
                                                       _gcc-ld-opts157882_))))
                                          (declare (not safe))
                                          (cons _path-o157870_ __tmp159391))))
                                   (declare (not safe))
                                   (cons _link-path157872_ __tmp159390))))
                            (declare (not safe))
                            (cons '"-o" __tmp159389))))
                     (declare (not safe))
                     (cons '"-shared" __tmp159388))))
              (declare (not safe))
              (gxc#invoke __tmp159392 __tmp159387))
            (for-each
             delete-file
             (let ((__tmp159393
                    (let ((__tmp159394
                           (let ((__tmp159395
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o157876_ '()))))
                             (declare (not safe))
                             (cons _link-path-c157874_ __tmp159395))))
                      (declare (not safe))
                      (cons _path-o157870_ __tmp159394))))
               (declare (not safe))
               (cons _path-c157868_ __tmp159393)))))))
    (define gxc#compile-output-file
      (lambda (_ctx157832_ _n157833_ _ext157834_)
        (letrec ((_module-relative-path157836_
                  (lambda (_ctx157859_)
                    (path-strip-directory
                     (let ((__tmp159396
                            (##structure-ref
                             _ctx157859_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp159396)))))
                 (_module-source-directory157837_
                  (lambda (_ctx157855_)
                    (path-directory
                     (let ((_mpath157857_
                            (##structure-ref
                             _ctx157855_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath157857_))
                           _mpath157857_
                           (last _mpath157857_))))))
                 (_section-string157838_
                  (lambda (_n157853_)
                    (if (let () (declare (not safe)) (number? _n157853_))
                        (number->string _n157853_)
                        (if (let () (declare (not safe)) (symbol? _n157853_))
                            (symbol->string _n157853_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n157853_))
                                _n157853_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n157853_)))))))
                 (_file-name157839_
                  (lambda (_path157851_)
                    (if _n157833_
                        (string-append
                         _path157851_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string157838_ _n157833_))
                         _ext157834_)
                        (string-append _path157851_ _ext157834_))))
                 (_file-path157840_
                  (lambda ()
                    (let ((_$e157846_ (gxc#current-compile-output-dir)))
                      (if _$e157846_
                          ((lambda (_outdir157849_)
                             (path-expand
                              (let ((__tmp159398
                                     (let ((__tmp159399
                                            (##structure-ref
                                             _ctx157832_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp159399))))
                                (declare (not safe))
                                (_file-name157839_ __tmp159398))
                              _outdir157849_))
                           _$e157846_)
                          (path-expand
                           (let ((__tmp159397
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path157836_
                                     _ctx157832_))))
                             (declare (not safe))
                             (_file-name157839_ __tmp159397))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory157837_
                              _ctx157832_))))))))
          (let ((_path157842_
                 (let () (declare (not safe)) (_file-path157840_))))
            (let ((__tmp159400
                   (lambda ()
                     (let ((__tmp159401 (path-directory _path157842_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp159401)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp159400))
            _path157842_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx157814_)
        (letrec ((_file-name157816_
                  (lambda (_id157830_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id157830_))
                     '".scm")))
                 (_file-path157817_
                  (lambda ()
                    (let* ((_file157823_
                            (let ((__tmp159402
                                   (##structure-ref
                                    _ctx157814_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name157816_ __tmp159402)))
                           (_$e157825_ (gxc#current-compile-output-dir)))
                      (if _$e157825_
                          ((lambda (_outdir157828_)
                             (path-expand
                              _file157823_
                              (path-expand '"static" _outdir157828_)))
                           _$e157825_)
                          (path-expand _file157823_ '"static"))))))
          (let ((_path157819_
                 (let () (declare (not safe)) (_file-path157817_))))
            (let ((__tmp159403
                   (lambda ()
                     (let ((__tmp159404 (path-directory _path157819_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp159404)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp159403))
            _path157819_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx157808_ _opts157809_)
        (let ((_$e157811_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts157809_))))
          (if _$e157811_
              (values _$e157811_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx157808_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr157801_)
        (if (let () (declare (not safe)) (string? _idstr157801_))
            (let* ((_str157803_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr157801_)))
                   (_strs157805_
                    (let ()
                      (declare (not safe))
                      (string-split _str157803_ '#\/))))
              (let () (declare (not safe)) (string-join _strs157805_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr157801_))
                (let ((__tmp159405 (symbol->string _idstr157801_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp159405))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr157801_))))))
    (define gxc#invoke__%
      (lambda (_g159406_
               _stdout-redirection157762157766_
               _stderr-redirection157763157768_
               _program157770_
               _args157771_)
        (let* ((_stdout-redirection157773_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection157762157766_ absent-value))
                    '#f
                    _stdout-redirection157762157766_))
               (_stderr-redirection157775_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection157763157768_ absent-value))
                    '#f
                    _stderr-redirection157763157768_)))
          (let ((__tmp159407
                 (let ()
                   (declare (not safe))
                   (cons _program157770_ _args157771_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp159407))
          (let* ((_proc157777_
                  (open-process
                   (let ((__tmp159408
                          (let ((__tmp159409
                                 (let ((__tmp159410
                                        (let ((__tmp159411
                                               (let ((__tmp159412
                                                      (let ((__tmp159413
                                                             (let ((__tmp159414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection157775_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp159414))))
                (declare (not safe))
                (cons _stdout-redirection157773_ __tmp159413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp159412))))
                                          (declare (not safe))
                                          (cons _args157771_ __tmp159411))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp159410))))
                            (declare (not safe))
                            (cons _program157770_ __tmp159409))))
                     (declare (not safe))
                     (cons 'path: __tmp159408))))
                 (_output157782_
                  (if (or _stdout-redirection157773_
                          _stderr-redirection157775_)
                      (read-line _proc157777_ '#f)
                      '#f)))
            (let ((_status157785_ (process-status _proc157777_)))
              (close-port _proc157777_)
              (if (let () (declare (not safe)) (zero? _status157785_))
                  '#!void
                  (begin
                    (display _output157782_)
                    (let ((__tmp159415
                           (let ()
                             (declare (not safe))
                             (cons _program157770_ _args157771_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp159415
                       _status157785_)))))))))
    (define gxc#invoke__@
      (lambda (_keys157761157790_ . _args157792_)
        (apply gxc#invoke__%
               _keys157761157790_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157761157790_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157761157790_
                  'stderr-redirection:
                  absent-value))
               _args157792_)))
    (define gxc#invoke
      (lambda _args157764157798_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args157764157798_)))
    (define gxc#join!
      (lambda (_thread157755_)
        (let ((__tmp159417
               (lambda (_exn157757_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn157757_))
                     (let ((__tmp159418
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn157757_))))
                       (declare (not safe))
                       (raise __tmp159418))
                     (let () (declare (not safe)) (raise _exn157757_)))))
              (__tmp159416 (lambda () (thread-join! _thread157755_))))
          (declare (not safe))
          (with-catch __tmp159417 __tmp159416))))))
