(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1709128376)
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
      (lambda (_path158015_ _fun158016_)
        (with-output-to-file
         (let ((__tmp158109
                (let ()
                  (declare (not safe))
                  (cons _path158015_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp158109))
         _fun158016_)))
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
      (lambda (_gerbil-libdir158010_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir158010_)))
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
      (lambda (_dir158008_) (delete-file-or-directory _dir158008_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157982_ _opts157983_)
        (if (let () (declare (not safe)) (string? _srcpath157982_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157982_)))
        (let ((_outdir157985_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157983_)))
              (_invoke-gsc?157986_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157983_)))
              (_gsc-options157987_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157983_)))
              (_keep-scm?157988_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157983_)))
              (_verbosity157989_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157983_)))
              (_optimize157990_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157983_)))
              (_debug157991_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157983_)))
              (_gen-ssxi157992_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157983_))))
          (if _outdir157985_
              (let ((__tmp158110
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157985_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158110))
              '#!void)
          (if _optimize157990_
              (let ((__tmp158111
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158111))
              '#!void)
          (let ((__tmp158115
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157982_))
                   (let ((__tmp158116
                          (let ((__tmp158117
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157982_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158117))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp158116))))
                (__tmp158114
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158112
                 (let ((__tmp158113
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157982_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp158113))))
            (declare (not safe))
            (call-with-parameters
             __tmp158115
             gxc#current-compile-output-dir
             _outdir157985_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157986_
             gxc#current-compile-gsc-options
             _gsc-options157987_
             gxc#current-compile-keep-scm
             _keep-scm?157988_
             gxc#current-compile-verbose
             _verbosity157989_
             gxc#current-compile-optimize
             _optimize157990_
             gxc#current-compile-debug
             _debug157991_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157992_
             gxc#current-compile-timestamp
             __tmp158114
             gxc#current-compile-context
             __tmp158112
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath158001_)
        (let ((_opts158003_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath158001_ _opts158003_))))
    (define gxc#compile-module
      (lambda _g158119_
        (let ((_g158118_ (let () (declare (not safe)) (##length _g158119_))))
          (cond ((let () (declare (not safe)) (##fx= _g158118_ 1))
                 (apply (lambda (_srcpath158001_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath158001_)))
                        _g158119_))
                ((let () (declare (not safe)) (##fx= _g158118_ 2))
                 (apply (lambda (_srcpath158005_ _opts158006_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath158005_
                             _opts158006_)))
                        _g158119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g158119_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157958_ _opts157959_)
        (if (let () (declare (not safe)) (string? _srcpath157958_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157958_)))
        (let ((_outdir157961_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157959_)))
              (_invoke-gsc?157962_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157959_)))
              (_gsc-options157963_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157959_)))
              (_keep-scm?157964_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157959_)))
              (_verbosity157965_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157959_)))
              (_debug157966_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157959_))))
          (if _outdir157961_
              (let ((__tmp158120
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157961_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158120))
              '#!void)
          (let ((__tmp158124
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157958_))
                   (let ((__tmp158125
                          (let ((__tmp158126
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157958_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158126))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp158125
                      _opts157959_))))
                (__tmp158123
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158121
                 (let ((__tmp158122
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157958_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp158122))))
            (declare (not safe))
            (call-with-parameters
             __tmp158124
             gxc#current-compile-output-dir
             _outdir157961_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157962_
             gxc#current-compile-gsc-options
             _gsc-options157963_
             gxc#current-compile-keep-scm
             _keep-scm?157964_
             gxc#current-compile-verbose
             _verbosity157965_
             gxc#current-compile-debug
             _debug157966_
             gxc#current-compile-timestamp
             __tmp158123
             gxc#current-compile-context
             __tmp158121
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157974_)
        (let ((_opts157976_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157974_ _opts157976_))))
    (define gxc#compile-exe
      (lambda _g158128_
        (let ((_g158127_ (let () (declare (not safe)) (##length _g158128_))))
          (cond ((let () (declare (not safe)) (##fx= _g158127_ 1))
                 (apply (lambda (_srcpath157974_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157974_)))
                        _g158128_))
                ((let () (declare (not safe)) (##fx= _g158127_ 2))
                 (apply (lambda (_srcpath157978_ _opts157979_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157978_ _opts157979_)))
                        _g158128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g158128_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157954_ _opts157955_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157955_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157954_
               _opts157955_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157954_
               _opts157955_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157837_ _opts157838_)
        (letrec ((_generate-stub157840_
                  (lambda (_builtin-modules157950_)
                    (let ((_mod-main157952_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157837_ 'main))))
                      (write (let ((__tmp158129
                                    (let ((__tmp158130
                                           (let ((__tmp158131
                                                  (let ((__tmp158132
                                                         (let ((__tmp158134
                                                                (let ((__tmp158135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157950_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158135)))
                       (__tmp158133
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp158134 __tmp158133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp158132))))
                                             (declare (not safe))
                                             (cons __tmp158131 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp158130))))
                               (declare (not safe))
                               (cons 'define __tmp158129)))
                      (write (let ((__tmp158136
                                    (let ((__tmp158175
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158137
                                           (let ((__tmp158138
                                                  (let ((__tmp158139
                                                         (let ((__tmp158163
                                                                (let ((__tmp158164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158165
                                      (let ((__tmp158173
                                             (let ((__tmp158174
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp158174)))
                                            (__tmp158166
                                             (let ((__tmp158167
                                                    (let ((__tmp158168
                                                           (let ((__tmp158169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158170
                                 (let ((__tmp158171
                                        (let ((__tmp158172
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp158172 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp158171))))
                            (declare (not safe))
                            (cons __tmp158170 '()))))
                     (declare (not safe))
                     (cons _mod-main157952_ __tmp158169))))
              (declare (not safe))
              (cons 'apply __tmp158168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158167 '()))))
                                        (declare (not safe))
                                        (cons __tmp158173 __tmp158166))))
                                 (declare (not safe))
                                 (cons '() __tmp158165))))
                          (declare (not safe))
                          (cons 'lambda __tmp158164)))
                       (__tmp158140
                        (let ((__tmp158141
                               (let ((__tmp158142
                                      (let ((__tmp158143
                                             (let ((__tmp158154
                                                    (let ((__tmp158155
                                                           (let ((__tmp158156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158157
                                 (let ((__tmp158158
                                        (let ((__tmp158159
                                               (let ((__tmp158160
                                                      (let ((__tmp158161
                                                             (let ((__tmp158162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp158162 '()))))
                (declare (not safe))
                (cons 'force-output __tmp158161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp158160 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp158159))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp158158))))
                            (declare (not safe))
                            (cons __tmp158157 '()))))
                     (declare (not safe))
                     (cons 'void __tmp158156))))
              (declare (not safe))
              (cons 'with-catch __tmp158155)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp158144
                                                    (let ((__tmp158145
                                                           (let ((__tmp158146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158147
                                 (let ((__tmp158148
                                        (let ((__tmp158149
                                               (let ((__tmp158150
                                                      (let ((__tmp158151
                                                             (let ((__tmp158152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp158153
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp158153 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp158152))))
                (declare (not safe))
                (cons __tmp158151 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp158150))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp158149))))
                                   (declare (not safe))
                                   (cons __tmp158148 '()))))
                            (declare (not safe))
                            (cons 'void __tmp158147))))
                     (declare (not safe))
                     (cons 'with-catch __tmp158146))))
              (declare (not safe))
              (cons __tmp158145 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158154
                                                     __tmp158144))))
                                        (declare (not safe))
                                        (cons '() __tmp158143))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp158142))))
                          (declare (not safe))
                          (cons __tmp158141 '()))))
                   (declare (not safe))
                   (cons __tmp158163 __tmp158140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp158139))))
                                             (declare (not safe))
                                             (cons __tmp158138 '()))))
                                      (declare (not safe))
                                      (cons __tmp158175 __tmp158137))))
                               (declare (not safe))
                               (cons 'define __tmp158136)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157841_
                  (lambda (_libgerbil157948_)
                    (call-with-input-file
                     (string-append _libgerbil157948_ '".ldd")
                     read)))
                 (_replace-extension157842_
                  (lambda (_path157945_ _ext157946_)
                    (string-append
                     (path-strip-extension _path157945_)
                     _ext157946_)))
                 (_not-exclude-module?157843_
                  (lambda (_ctx157941_)
                    (let ((_id-str157943_
                           (symbol->string
                            (##structure-ref
                             _ctx157941_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp158177
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157943_))))
                            (declare (not safe))
                            (not __tmp158177))
                          (let ((__tmp158176
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157943_))))
                            (declare (not safe))
                            (not __tmp158176))
                          '#f))))
                 (_not-file-empty?157844_
                  (lambda (_path157939_)
                    (let ((__tmp158178
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157939_))))
                      (declare (not safe))
                      (not __tmp158178))))
                 (_compile-stub157845_
                  (lambda (_output-scm157852_ _output-bin157853_)
                    (let* ((_gerbil-home157855_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157857_
                            (path-expand '"lib" _gerbil-home157855_))
                           (_gerbil-staticdir157859_
                            (path-expand '"static" _gerbil-libdir157857_))
                           (_gxlink157861_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157857_))
                           (_tmp157863_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157867_
                            (lambda (_f157865_)
                              (path-expand
                               (path-strip-directory _f157865_)
                               _tmp157863_)))
                           (_deps157869_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157837_)))
                           (_deps157871_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?157843_
                                      _deps157869_)))
                           (_src-deps-scm157873_
                            (map gxc#find-static-module-file _deps157871_))
                           (_src-deps-scm157875_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?157844_
                                      _src-deps-scm157873_)))
                           (_src-deps-scm157877_
                            (map path-expand _src-deps-scm157875_))
                           (_deps-scm157879_
                            (map _tmp-path157867_ _src-deps-scm157877_))
                           (_deps-c157885_
                            (map (lambda (_g157880157882_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157842_
                                      _g157880157882_
                                      '".c")))
                                 _deps-scm157879_))
                           (_deps-o157891_
                            (map (lambda (_g157886157888_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157842_
                                      _g157886157888_
                                      '".o")))
                                 _deps-scm157879_))
                           (_src-bin-scm157893_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157837_)))
                           (_src-bin-scm157895_
                            (path-expand _src-bin-scm157893_))
                           (_bin-scm157897_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157867_ _src-bin-scm157895_)))
                           (_bin-c157899_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157842_
                               _bin-scm157897_
                               '".c")))
                           (_bin-o157901_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157842_
                               _bin-scm157897_
                               '".o")))
                           (_output-bin157903_
                            (path-expand _output-bin157853_))
                           (_output-scm157905_
                            (path-expand _output-scm157852_))
                           (_output-c157907_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157842_
                               _output-scm157905_
                               '".c")))
                           (_output-o157909_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157842_
                               _output-scm157905_
                               '".o")))
                           (_output_-c157911_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157842_
                               _output-scm157905_
                               '"_.c")))
                           (_output_-o157913_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157842_
                               _output-scm157905_
                               '"_.o")))
                           (_gsc-link-opts157915_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157917_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157919_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157859_)))
                           (_output-ld-opts157921_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157923_
                            (path-expand '"libgerbil.a" _gerbil-libdir157857_))
                           (_libgerbil.so157925_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157857_))
                           (_libgerbil-ld-opts157927_
                            (if (file-exists? _libgerbil.so157925_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157841_
                                   _libgerbil.so157925_))
                                (if (file-exists? _libgerbil.a157923_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157841_
                                       _libgerbil.a157923_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157923_
                                       _libgerbil.so157925_)))))
                           (_rpath157929_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157857_)))
                           (_builtin-modules157933_
                            (map (lambda (_mod157931_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157931_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157837_ _deps157871_)))))
                      (let ((__tmp158179
                             (lambda ()
                               (let ((__tmp158180
                                      (path-directory _output-bin157903_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158180)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158179))
                      (let ((__tmp158181
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157840_
                                  _builtin-modules157933_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157905_
                         __tmp158181))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158182
                                   (lambda () (create-directory _tmp157863_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp158182))
                            (for-each
                             copy-file
                             _src-deps-scm157877_
                             _deps-scm157879_)
                            (copy-file _src-bin-scm157895_ _bin-scm157897_)
                            (let ((__tmp158190
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158183
                                   (let ((__tmp158184
                                          (let ((__tmp158185
                                                 (let ((__tmp158186
                                                        (let ((__tmp158187
                                                               (let ((__tmp158188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158189
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157905_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157897_ __tmp158189))))
                         (declare (not safe))
                         (foldr1 cons __tmp158188 _deps-scm157879_))))
                  (declare (not safe))
                  (foldr1 cons __tmp158187 _gsc-link-opts157915_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157861_
                                                         __tmp158186))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp158185))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158184))))
                              (declare (not safe))
                              (gxc#invoke __tmp158190 __tmp158183))
                            (let ((__tmp158198
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158191
                                   (let ((__tmp158192
                                          (let ((__tmp158193
                                                 (let ((__tmp158194
                                                        (let ((__tmp158195
                                                               (let ((__tmp158196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158197
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c157911_ '()))))
                                (declare (not safe))
                                (cons _output-c157907_ __tmp158197))))
                         (declare (not safe))
                         (cons _bin-c157899_ __tmp158196))))
                  (declare (not safe))
                  (foldr1 cons __tmp158195 _deps-c157885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158194
                                                           _gsc-static-opts157919_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158193
                                                    _gsc-cc-opts157917_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158192))))
                              (declare (not safe))
                              (gxc#invoke __tmp158198 __tmp158191))
                            (let ((__tmp158211
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158199
                                   (let ((__tmp158200
                                          (let ((__tmp158201
                                                 (let ((__tmp158202
                                                        (let ((__tmp158203
                                                               (let ((__tmp158204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158205
                                     (let ((__tmp158206
                                            (let ((__tmp158207
                                                   (let ((__tmp158208
                                                          (let ((__tmp158209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp158210
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157927_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp158210))))
                    (declare (not safe))
                    (cons _gerbil-libdir157857_ __tmp158209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp158208))))
                                              (declare (not safe))
                                              (cons _rpath157929_
                                                    __tmp158207))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp158206
                                               _output-ld-opts157921_))))
                                (declare (not safe))
                                (cons _output_-o157913_ __tmp158205))))
                         (declare (not safe))
                         (cons _output-o157909_ __tmp158204))))
                  (declare (not safe))
                  (cons _bin-o157901_ __tmp158203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158202
                                                           _deps-o157891_))))
                                            (declare (not safe))
                                            (cons _output-bin157903_
                                                  __tmp158201))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158200))))
                              (declare (not safe))
                              (gxc#invoke __tmp158211 __tmp158199))
                            (for-each
                             delete-file
                             (let ((__tmp158212
                                    (let ((__tmp158213
                                           (let ((__tmp158214
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157913_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157909_
                                                   __tmp158214))))
                                      (declare (not safe))
                                      (cons _output_-c157911_ __tmp158213))))
                               (declare (not safe))
                               (cons _output-c157907_ __tmp158212)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157863_)))
                          '#!void)))))
          (let* ((_output-bin157847_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157837_ _opts157838_)))
                 (_output-scm157849_
                  (string-append _output-bin157847_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157845_ _output-scm157849_ _output-bin157847_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157849_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx157662_ _opts157663_)
        (letrec ((_reset-declare157665_
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
                 (_generate-stub157666_
                  (lambda (_deps157828_)
                    (let ((_mod-main157830_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157662_ 'main)))
                          (_reset-decl157831_
                           (let ()
                             (declare (not safe))
                             (_reset-declare157665_)))
                          (_user-decl157832_
                           (let ()
                             (declare (not safe))
                             (_user-declare157667_))))
                      (for-each
                       (lambda (_dep157834_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157831_)
                         (newline)
                         (if _user-decl157832_
                             (begin (write _user-decl157832_) (newline))
                             '#!void)
                         (write (let ((__tmp158215
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157834_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp158215)))
                         (newline))
                       _deps157828_)
                      (write (let ((__tmp158216
                                    (let ((__tmp158229
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158217
                                           (let ((__tmp158225
                                                  (let ((__tmp158226
                                                         (let ((__tmp158227
                                                                (let ((__tmp158228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158228))))
                   (declare (not safe))
                   (cons __tmp158227 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp158226)))
                                                 (__tmp158218
                                                  (let ((__tmp158219
                                                         (let ((__tmp158220
                                                                (let ((__tmp158221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158222
                                      (let ((__tmp158223
                                             (let ((__tmp158224
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp158224 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp158223))))
                                 (declare (not safe))
                                 (cons __tmp158222 '()))))
                          (declare (not safe))
                          (cons _mod-main157830_ __tmp158221))))
                   (declare (not safe))
                   (cons 'apply __tmp158220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158219 '()))))
                                             (declare (not safe))
                                             (cons __tmp158225 __tmp158218))))
                                      (declare (not safe))
                                      (cons __tmp158229 __tmp158217))))
                               (declare (not safe))
                               (cons 'define __tmp158216)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare157667_
                  (lambda ()
                    (let* ((_gsc-opts157733_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts157663_)))
                           (_gsc-prelude157735_
                            (if _gsc-opts157733_
                                (member '"-prelude" _gsc-opts157733_)
                                '#f))
                           (_gsc-prelude157737_
                            (if _gsc-prelude157735_
                                (read (open-input-string
                                       (cadr _gsc-prelude157735_)))
                                '#f)))
                      (let _lp157740_ ((_rest157742_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude157737_ '())))
                                       (_user-decls157743_ '()))
                        (let* ((_rest157744157752_ _rest157742_)
                               (_else157746157760_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls157743_))
                                      '#f
                                      (let ((__tmp158230
                                             (reverse _user-decls157743_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp158230)))))
                               (_K157748157816_
                                (lambda (_rest157763_ _expr157764_)
                                  (let* ((_expr157765157777_ _expr157764_)
                                         (_else157768157785_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp157740_
                                               _rest157763_
                                               _user-decls157743_)))))
                                    (let ((_K157773157806_
                                           (lambda (_decls157804_)
                                             (let ((__tmp158231
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls157743_
                                                              _decls157804_))))
                                               (declare (not safe))
                                               (_lp157740_
                                                _rest157763_
                                                __tmp158231))))
                                          (_K157770157791_
                                           (lambda (_exprs157789_)
                                             (let ((__tmp158232
                                                    (append _exprs157789_
                                                            _rest157763_)))
                                               (declare (not safe))
                                               (_lp157740_
                                                __tmp158232
                                                _user-decls157743_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr157765157777_))
                                          (let ((_tl157775157811_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr157765157777_)))
                                                (_hd157774157809_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr157765157777_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157774157809_
                                                         'declare))
                                                (let ((_decls157814_
                                                       _tl157775157811_))
                                                  (declare (not safe))
                                                  (_K157773157806_
                                                   _decls157814_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157774157809_
                                                             'begin))
                                                    (let ((_exprs157799_
                                                           _tl157775157811_))
                                                      (declare (not safe))
                                                      (_K157770157791_
                                                       _exprs157799_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else157768157785_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else157768157785_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest157744157752_))
                              (let ((_hd157749157819_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest157744157752_)))
                                    (_tl157750157821_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest157744157752_))))
                                (let* ((_expr157824_ _hd157749157819_)
                                       (_rest157826_ _tl157750157821_))
                                  (declare (not safe))
                                  (_K157748157816_ _rest157826_ _expr157824_)))
                              (let ()
                                (declare (not safe))
                                (_else157746157760_))))))))
                 (_compile-stub157668_
                  (lambda (_output-scm157675_ _output-bin157676_)
                    (let* ((_gerbil-home157678_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157680_
                            (path-expand '"lib" _gerbil-home157678_))
                           (_runtime157682_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp157684_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home157678_))
                           (_include-gambit-sharp157686_
                            (string-append
                             '"(include \""
                             _gambit-sharp157684_
                             '"\")"))
                           (_bin-scm157688_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157662_)))
                           (_deps157690_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157662_)))
                           (_deps157692_
                            (map gxc#find-static-module-file _deps157690_))
                           (_deps157697_
                            (let ((__tmp158233
                                   (lambda (_$obj157694_)
                                     (let ((__tmp158234
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj157694_))))
                                       (declare (not safe))
                                       (not __tmp158234)))))
                              (declare (not safe))
                              (filter __tmp158233 _deps157692_)))
                           (_deps157701_
                            (let ((__tmp158235
                                   (lambda (_f157699_)
                                     (let ((__tmp158236
                                            (member _f157699_
                                                    _runtime157682_)))
                                       (declare (not safe))
                                       (not __tmp158236)))))
                              (declare (not safe))
                              (filter __tmp158235 _deps157697_)))
                           (_output-base157703_
                            (string-append
                             (path-strip-extension _output-scm157675_)))
                           (_output-c157705_
                            (string-append _output-base157703_ '".c"))
                           (_output-o157707_
                            (string-append _output-base157703_ '".o"))
                           (_output-c_157709_
                            (string-append _output-base157703_ '"_.c"))
                           (_output-o_157711_
                            (string-append _output-base157703_ '"_.o"))
                           (_gsc-link-opts157713_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157715_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157717_
                            (let ((__tmp158237
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir157680_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp158237)))
                           (_output-ld-opts157719_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157721_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp158239
                                       (let ((__tmp158240
                                              (let ((__tmp158241
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp157686_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp158241))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp158240))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158239))
                                (let ((__tmp158238
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp157686_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158238))))
                           (_gsc-link-opts157723_
                            (append _gsc-link-opts157713_
                                    _gsc-gx-macros157721_))
                           (_rpath157725_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157680_)))
                           (_default-ld-options157727_
                            (let ((__tmp158242
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp158242))))
                      (let ((__tmp158243
                             (lambda ()
                               (let ((__tmp158244
                                      (path-directory _output-bin157676_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158244)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158243))
                      (let ((__tmp158245
                             (lambda ()
                               (let ((__tmp158246
                                      (let ((__tmp158247
                                             (let ((__tmp158248
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm157688_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp158248
                                                       _deps157701_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp158247
                                                _runtime157682_))))
                                 (declare (not safe))
                                 (_generate-stub157666_ __tmp158246)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157675_
                         __tmp158245))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158254
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158249
                                   (let ((__tmp158250
                                          (let ((__tmp158251
                                                 (let ((__tmp158252
                                                        (let ((__tmp158253
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm157675_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp158253 _gsc-link-opts157723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_157709_
                                                         __tmp158252))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp158251))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158250))))
                              (declare (not safe))
                              (gxc#invoke __tmp158254 __tmp158249))
                            (let ((__tmp158260
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158255
                                   (let ((__tmp158256
                                          (let ((__tmp158257
                                                 (let ((__tmp158258
                                                        (let ((__tmp158259
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_157709_ '()))))
                  (declare (not safe))
                  (cons _output-c157705_ __tmp158259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158258
                                                           _gsc-static-opts157717_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158257
                                                    _gsc-cc-opts157715_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158256))))
                              (declare (not safe))
                              (gxc#invoke __tmp158260 __tmp158255))
                            (let ((__tmp158270
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158261
                                   (let ((__tmp158262
                                          (let ((__tmp158263
                                                 (let ((__tmp158264
                                                        (let ((__tmp158265
                                                               (let ((__tmp158266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158267
                                     (let ((__tmp158268
                                            (let ((__tmp158269
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options157727_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir157680_
                                                    __tmp158269))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp158268))))
                                (declare (not safe))
                                (cons _rpath157725_ __tmp158267))))
                         (declare (not safe))
                         (foldr1 cons __tmp158266 _output-ld-opts157719_))))
                  (declare (not safe))
                  (cons _output-o_157711_ __tmp158265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o157707_
                                                         __tmp158264))))
                                            (declare (not safe))
                                            (cons _output-bin157676_
                                                  __tmp158263))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158262))))
                              (declare (not safe))
                              (gxc#invoke __tmp158270 __tmp158261)))
                          '#!void)))))
          (let* ((_output-bin157670_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157662_ _opts157663_)))
                 (_output-scm157672_
                  (string-append _output-bin157670_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157668_ _output-scm157672_ _output-bin157670_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157672_))))))
    (define gxc#find-export-binding
      (lambda (_ctx157612_ _id157613_)
        (let ((_$e157659_
               (let ((__tmp158272
                      (lambda (_e157614157616_)
                        (let* ((_g157618157628_ _e157614157616_)
                               (_else157620157636_ (lambda () '#f))
                               (_K157622157640_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g157618157628_
                                 'gx#module-export::t))
                              (let* ((_e157623157643_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157618157628_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e157624157646_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157618157628_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e157625157649_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157618157628_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e157625157649_ '0))
                                    (let ((_e157626157652_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g157618157628_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g157654157656_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g157654157656_
                                                    _id157613_)))
                                           _e157626157652_)
                                          (let ()
                                            (declare (not safe))
                                            (_K157622157640_))
                                          (let ()
                                            (declare (not safe))
                                            (_else157620157636_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else157620157636_))))
                              (let ()
                                (declare (not safe))
                                (_else157620157636_))))))
                     (__tmp158271
                      (##structure-ref
                       _ctx157612_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp158272 __tmp158271))))
          (if _$e157659_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e157659_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx157604_ _id157605_)
        (let ((_$e157607_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx157604_ _id157605_))))
          (if _$e157607_
              ((lambda (_bind157610_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind157610_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id157605_)))
                 (##structure-ref _bind157610_ '1 gx#binding::t '#f))
               _$e157607_)
              (let ((__tmp158273
                     (##structure-ref
                      _ctx157604_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp158273
                 _id157605_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157491_)
        (letrec* ((_ht157493_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template157494_
                   (lambda (_in157556_ _phi157557_)
                     (let ((_iphi157559_
                            (fx+ _phi157557_
                                 (##direct-structure-ref
                                  _in157556_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports157560_
                            (##structure-ref
                             (##direct-structure-ref
                              _in157556_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp157562_ ((_rest157564_ _imports157560_)
                                        (_r157565_ '()))
                         (let* ((_rest157566157574_ _rest157564_)
                                (_else157568157582_ (lambda () _r157565_))
                                (_K157570157592_
                                 (lambda (_rest157585_ _in157586_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in157586_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi157559_))
                                           (let ((__tmp158280
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in157586_
                                                          _r157565_))))
                                             (declare (not safe))
                                             (_lp157562_
                                              _rest157585_
                                              __tmp158280))
                                           (let ()
                                             (declare (not safe))
                                             (_lp157562_
                                              _rest157585_
                                              _r157565_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in157586_
                                              'gx#module-import::t))
                                           (let ((_iphi157588_
                                                  (fx+ _phi157557_
                                                       (##direct-structure-ref
                                                        _in157586_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi157588_))
                                                 (let ((__tmp158278
                                                        (let ((__tmp158279
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in157586_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp158279 _r157565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp157562_
                                                    _rest157585_
                                                    __tmp158278))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp157562_
                                                    _rest157585_
                                                    _r157565_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in157586_
                                                  'gx#import-set::t))
                                               (let ((_xphi157590_
                                                      (fx+ _iphi157559_
                                                           (##direct-structure-ref
                                                            _in157586_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi157590_))
                                                     (let ((__tmp158276
                                                            (let ((__tmp158277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in157586_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp158277 _r157565_))))
               (declare (not safe))
               (_lp157562_ _rest157585_ __tmp158276))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi157590_)
                                                         (let ((__tmp158274
                                                                (let ((__tmp158275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template157494_
                                  _in157586_
                                  _iphi157559_))))
                          (declare (not safe))
                          (foldl1 cons _r157565_ __tmp158275))))
                   (declare (not safe))
                   (_lp157562_ _rest157585_ __tmp158274))
                 (let ()
                   (declare (not safe))
                   (_lp157562_ _rest157585_ _r157565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp157562_
                                                  _rest157585_
                                                  _r157565_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest157566157574_))
                               (let ((_hd157571157595_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest157566157574_)))
                                     (_tl157572157597_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest157566157574_))))
                                 (let* ((_in157600_ _hd157571157595_)
                                        (_rest157602_ _tl157572157597_))
                                   (declare (not safe))
                                   (_K157570157592_ _rest157602_ _in157600_)))
                               (let ()
                                 (declare (not safe))
                                 (_else157568157582_))))))))
                  (_find-deps157495_
                   (lambda (_rest157502_ _deps157503_)
                     (let* ((_rest157504157512_ _rest157502_)
                            (_else157506157520_ (lambda () _deps157503_))
                            (_K157508157544_
                             (lambda (_rest157523_ _hd157524_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd157524_
                                      'gx#module-context::t))
                                   (let ((_id157526_
                                          (##structure-ref
                                           _hd157524_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports157527_
                                          (##structure-ref
                                           _hd157524_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht157493_ _id157526_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps157495_
                                            _rest157523_
                                            _deps157503_))
                                         (let ((_$e157529_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd157524_))))
                                           (if _$e157529_
                                               ((lambda (_pre157532_)
                                                  (let ((_xdeps157534_
                                                         (let ((__tmp158293
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre157532_ _imports157527_))))
                   (declare (not safe))
                   (_find-deps157495_ __tmp158293 _deps157503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht157493_
                                                       _id157526_
                                                       _hd157524_))
                                                    (let ((__tmp158294
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd157524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps157534_))))
              (declare (not safe))
              (_find-deps157495_ _rest157523_ __tmp158294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e157529_)
                                               (let ((_xdeps157536_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps157495_
                                                         _imports157527_
                                                         _deps157503_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht157493_
                                                    _id157526_
                                                    _hd157524_))
                                                 (let ((__tmp158292
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd157524_
                                                                _xdeps157536_))))
                                                   (declare (not safe))
                                                   (_find-deps157495_
                                                    _rest157523_
                                                    __tmp158292)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd157524_
                                          'gx#prelude-context::t))
                                       (let ((_id157538_
                                              (##structure-ref
                                               _hd157524_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht157493_
                                                _id157538_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps157495_
                                                _rest157523_
                                                _deps157503_))
                                             (let ((_xdeps157540_
                                                    (let ((__tmp158290
                                                           (##structure-ref
                                                            _hd157524_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps157495_
                                                       __tmp158290
                                                       _deps157503_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht157493_
                                                      _id157538_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps157495_
                                                      _rest157523_
                                                      _xdeps157540_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht157493_
                                                        _id157538_
                                                        _hd157524_))
                                                     (let ((__tmp158291
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd157524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps157540_))))
               (declare (not safe))
               (_find-deps157495_ _rest157523_ __tmp158291)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd157524_
                                              'gx#module-import::t))
                                           (if (let ((__tmp158289
                                                      (##direct-structure-ref
                                                       _hd157524_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp158289))
                                               (let ((__tmp158287
                                                      (let ((__tmp158288
                                                             (##direct-structure-ref
                                                              _hd157524_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158288
                                                              _rest157523_))))
                                                 (declare (not safe))
                                                 (_find-deps157495_
                                                  __tmp158287
                                                  _deps157503_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps157495_
                                                  _rest157523_
                                                  _deps157503_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd157524_
                                                  'gx#module-export::t))
                                               (let ((__tmp158285
                                                      (let ((__tmp158286
                                                             (##direct-structure-ref
                                                              _hd157524_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158286
                                                              _rest157523_))))
                                                 (declare (not safe))
                                                 (_find-deps157495_
                                                  __tmp158285
                                                  _deps157503_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd157524_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp158284
                                                              (##direct-structure-ref
                                                               _hd157524_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp158284))
                                                       (let ((__tmp158282
                                                              (let ((__tmp158283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd157524_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp158283 _rest157523_))))
                 (declare (not safe))
                 (_find-deps157495_ __tmp158282 _deps157503_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd157524_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps157542_
                           (let ()
                             (declare (not safe))
                             (_import-set-template157494_ _hd157524_ '0)))
                          (__tmp158281
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest157523_ _xdeps157542_))))
                     (declare (not safe))
                     (_find-deps157495_ __tmp158281 _deps157503_))
                   (let ()
                     (declare (not safe))
                     (_find-deps157495_ _rest157523_ _deps157503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd157524_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest157504157512_))
                           (let ((_hd157509157547_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest157504157512_)))
                                 (_tl157510157549_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest157504157512_))))
                             (let* ((_hd157552_ _hd157509157547_)
                                    (_rest157554_ _tl157510157549_))
                               (declare (not safe))
                               (_K157508157544_ _rest157554_ _hd157552_)))
                           (let ()
                             (declare (not safe))
                             (_else157506157520_)))))))
          (reverse (let ((__tmp158295
                          (let ((__tmp158296
                                 (let ((_$e157497_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx157491_))))
                                   (if _$e157497_
                                       ((lambda (_pre157500_)
                                          (let ((__tmp158297
                                                 (##structure-ref
                                                  _ctx157491_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre157500_ __tmp158297)))
                                        _$e157497_)
                                       (##structure-ref
                                        _ctx157491_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps157495_ __tmp158296 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp158295))))))
    (define gxc#find-static-module-file
      (lambda (_ctx157422_)
        (let* ((_context-id157424_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx157422_
                       'gx#module-context::t))
                    (##structure-ref _ctx157422_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx157422_)))
               (_scm157426_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id157424_))
                 '".scm"))
               (_dirs157428_ (gx#current-expander-module-library-path))
               (_dirs157434_
                (let ((_user-libpath157430_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath157430_
                      (let ((_user-libpath157432_
                             (path-expand '"lib" _user-libpath157430_)))
                        (if (member _user-libpath157432_ _dirs157428_)
                            _dirs157428_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath157432_ _dirs157428_))))
                      _dirs157428_)))
               (_dirs157443_
                (let ((_$e157436_ (gxc#current-compile-output-dir)))
                  (if _$e157436_
                      ((lambda (_g157438157440_)
                         (let ()
                           (declare (not safe))
                           (cons _g157438157440_ _dirs157434_)))
                       _$e157436_)
                      _dirs157434_)))
               (_dirs157449_
                (map (lambda (_g157444157446_)
                       (path-expand '"static" _g157444157446_))
                     _dirs157443_)))
          (let _lp157452_ ((_rest157454_ _dirs157449_))
            (let* ((_rest157455157463_ _rest157454_)
                   (_else157457157471_
                    (lambda ()
                      (let ((__tmp158298
                             (##structure-ref
                              _ctx157422_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp158298
                         _scm157426_))))
                   (_K157459157479_
                    (lambda (_rest157474_ _dir157475_)
                      (let ((_path157477_
                             (path-expand _scm157426_ _dir157475_)))
                        (if (file-exists? _path157477_)
                            _path157477_
                            (let ()
                              (declare (not safe))
                              (_lp157452_ _rest157474_)))))))
              (if (let () (declare (not safe)) (##pair? _rest157455157463_))
                  (let ((_hd157460157482_
                         (let ()
                           (declare (not safe))
                           (##car _rest157455157463_)))
                        (_tl157461157484_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157455157463_))))
                    (let* ((_dir157487_ _hd157460157482_)
                           (_rest157489_ _tl157461157484_))
                      (declare (not safe))
                      (_K157459157479_ _rest157489_ _dir157487_)))
                  (let () (declare (not safe)) (_else157457157471_))))))))
    (define gxc#file-empty?
      (lambda (_path157420_)
        (let ((__tmp158299 (file-info-size (file-info _path157420_ '#t))))
          (declare (not safe))
          (zero? __tmp158299))))
    (define gxc#compile-top-module
      (lambda (_ctx157409_)
        (let ((__tmp158303
               (lambda ()
                 (let ((__tmp158304
                        (##structure-ref
                         _ctx157409_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp158304))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp158305
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx157409_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp158305))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx157409_))
                 (if (let ((__tmp158308
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx157409_))))
                       (declare (not safe))
                       (null? __tmp158308))
                     (let* ((_thr1157414_
                             (let ((__tmp158306
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx157409_)))))
                               (declare (not safe))
                               (spawn __tmp158306)))
                            (_thr2157417_
                             (let ((__tmp158307
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx157409_)))))
                               (declare (not safe))
                               (spawn __tmp158307))))
                       (let () (declare (not safe)) (gxc#join! _thr1157414_))
                       (let () (declare (not safe)) (gxc#join! _thr2157417_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx157409_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx157409_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx157409_))
                     '#!void)))
              (__tmp158302
               (let ((__obj158107
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj158107)
                 __obj158107))
              (__tmp158301 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158300 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp158303
           gx#current-expander-context
           _ctx157409_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp158302
           gxc#current-compile-runtime-sections
           __tmp158301
           gxc#current-compile-runtime-names
           __tmp158300))))
    (define gxc#collect-bindings
      (lambda (_ctx157407_)
        (let ((__tmp158309
               (##structure-ref _ctx157407_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp158309))))
    (define gxc#compile-runtime-code
      (lambda (_ctx157353_)
        (letrec ((_compile1157355_
                  (lambda (_ctx157396_)
                    (let* ((_code157398_
                            (##structure-ref
                             _ctx157396_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt157402_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code157398_))
                                (let ((_idstr157400_
                                       (let ((__tmp158310
                                              (##structure-ref
                                               _ctx157396_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp158310))))
                                  (string-append _idstr157400_ '"__0"))
                                '#f)))
                      (if _rt157402_
                          (begin
                            (let ((__tmp158311
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp158311 _ctx157396_ _rt157402_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code157357_
                               _ctx157396_
                               _code157398_)))
                          (let ((_path157405_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx157396_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path157405_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code157358_
                         _ctx157396_
                         _code157398_
                         _rt157402_)))))
                 (_context-timestamp157356_
                  (lambda (_ctx157394_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx157394_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code157357_
                  (lambda (_ctx157376_ _code157377_)
                    (let* ((_lifts157379_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code157382_
                            (let ((__tmp158314
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code157377_))))
                                  (__tmp158313
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp158312
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158314
                               gx#current-expander-context
                               _ctx157376_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts157379_
                               gxc#current-compile-marks
                               __tmp158313
                               gxc#current-compile-identifiers
                               __tmp158312)))
                           (_runtime-code157384_
                            (if (let ((__tmp158318 (unbox _lifts157379_)))
                                  (declare (not safe))
                                  (null? __tmp158318))
                                _runtime-code157382_
                                (let ((__tmp158315
                                       (let ((__tmp158317
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code157382_
                                                      '())))
                                             (__tmp158316
                                              (reverse (unbox _lifts157379_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp158317
                                                 __tmp158316))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158315))))
                           (_runtime-code157386_
                            (let ((__tmp158319
                                   (let ((__tmp158321
                                          (let ((__tmp158322
                                                 (let ((__tmp158325
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp157356_
                                                           _ctx157376_)))
                                                       (__tmp158323
                                                        (let ((__tmp158324
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp158324
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp158325
                                                         __tmp158323))))
                                            (declare (not safe))
                                            (cons 'define __tmp158322)))
                                         (__tmp158320
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code157384_ '()))))
                                     (declare (not safe))
                                     (cons __tmp158321 __tmp158320))))
                              (declare (not safe))
                              (cons 'begin __tmp158319)))
                           (_scm0157388_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157376_
                               '0
                               '".scm"))))
                      (let ((_scms157391_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx157376_))))
                        (let ((__tmp158326
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0157388_
                                    _runtime-code157386_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp158326
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms157391_)
                            (delete-file _scms157391_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0157388_
                           '" => "
                           _scms157391_))
                        (copy-file _scm0157388_ _scms157391_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0157388_))))))
                 (_generate-loader-code157358_
                  (lambda (_ctx157365_ _code157366_ _rt157367_)
                    (let* ((_loader-code157370_
                            (let ((__tmp158327
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code157366_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158327
                               gx#current-expander-context
                               _ctx157365_)))
                           (_loader-code157372_
                            (if _rt157367_
                                (let ((__tmp158328
                                       (let ((__tmp158329
                                              (let ((__tmp158330
                                                     (let ((__tmp158331
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt157367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp158331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158330 '()))))
                                         (declare (not safe))
                                         (cons _loader-code157370_
                                               __tmp158329))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158328))
                                _loader-code157370_)))
                      (let ((__tmp158332
                             (lambda ()
                               (let ((__tmp158333
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157365_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp158333
                                  _loader-code157372_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp158332
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules157360_
                 (let ((__tmp158334
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx157353_))))
                   (declare (not safe))
                   (cons _ctx157353_ __tmp158334))))
            (for-each
             (lambda (_ctx157362_)
               (let ((__tmp158335
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1157355_ _ctx157362_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp158335
                  gxc#current-compile-decls
                  '())))
             _all-modules157360_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx157250_)
        (letrec ((_compile-ssi157252_
                  (lambda (_code157323_)
                    (let* ((_path157325_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157250_
                               '#f
                               '".ssi")))
                           (_prelude157336_
                            (let* ((_super157327_
                                    (##structure-ref
                                     _ctx157250_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e157329_
                                    (##structure-ref
                                     _super157327_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e157329_
                                  ((lambda (_g157331157333_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g157331157333_)))
                                   _$e157329_)
                                  ':<root>)))
                           (_ns157338_
                            (##structure-ref
                             _ctx157250_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr157340_
                            (symbol->string
                             (##structure-ref
                              _ctx157250_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg157347_
                            (let ((_$e157342_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr157340_ '#\/))))
                              (if _$e157342_
                                  ((lambda (_x157345_)
                                     (string->symbol
                                      (substring _idstr157340_ '0 _x157345_)))
                                   _$e157342_)
                                  '#f)))
                           (_rt157349_
                            (let ((__tmp158336
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp158336 _ctx157250_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path157325_))
                      (let ((__tmp158337
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude157336_))
                               (if _pkg157347_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg157347_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns157338_))
                               (newline)
                               (pretty-print _code157323_)
                               (if _rt157349_
                                   (pretty-print
                                    (let ((__tmp158338
                                           (let ((__tmp158342
                                                  (let ((__tmp158343
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp158343)))
                                                 (__tmp158339
                                                  (let ((__tmp158340
                                                         (let ((__tmp158341
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt157349_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp158341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158340 '()))))
                                             (declare (not safe))
                                             (cons __tmp158342 __tmp158339))))
                                      (declare (not safe))
                                      (cons '%#call __tmp158338)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path157325_
                         __tmp158337)))))
                 (_compile-phi157253_
                  (lambda (_part157263_)
                    (let* ((_part157264157277_ _part157263_)
                           (_E157266157281_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part157264157277_))))
                           (_K157267157292_
                            (lambda (_code157284_
                                     _n157285_
                                     _phi157286_
                                     _phi-ctx157287_)
                              (let* ((_code157290_
                                      (let ((__tmp158344
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code157284_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp158344
                                         gx#current-expander-context
                                         _phi-ctx157287_
                                         gx#current-expander-phi
                                         _phi157286_)))
                                     (__tmp158345
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157250_
                                         _n157285_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp158345
                                 _code157290_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part157264157277_))
                          (let ((_hd157268157295_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part157264157277_)))
                                (_tl157269157297_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part157264157277_))))
                            (let ((_phi-ctx157300_ _hd157268157295_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl157269157297_))
                                  (let ((_hd157270157302_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl157269157297_)))
                                        (_tl157271157304_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl157269157297_))))
                                    (let ((_phi157307_ _hd157270157302_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl157271157304_))
                                          (let ((_hd157272157309_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl157271157304_)))
                                                (_tl157273157311_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl157271157304_))))
                                            (let ((_n157314_ _hd157272157309_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl157273157311_))
                                                  (let ((_hd157274157316_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl157273157311_)))
                                                        (_tl157275157318_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl157273157311_))))
                                                    (let ((_code157321_
                                                           _hd157274157316_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl157275157318_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K157267157292_
                                                             _code157321_
                                                             _n157314_
                                                             _phi157307_
                                                             _phi-ctx157300_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E157266157281_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E157266157281_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E157266157281_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E157266157281_)))))
                          (let () (declare (not safe)) (_E157266157281_)))))))
          (let ((_g158346_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx157250_))))
            (begin
              (let ((_g158347_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g158346_)
                           (##vector-length _g158346_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g158347_ 2)))
                    (error "Context expects 2 values" _g158347_)))
              (let ((_ssi-code157255_
                     (let () (declare (not safe)) (##vector-ref _g158346_ 0)))
                    (_phi-code157256_
                     (let () (declare (not safe)) (##vector-ref _g158346_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi157252_ _ssi-code157255_))
                  (let ((_threads157261_
                         (map (lambda (_code157258_)
                                (let ((__tmp158348
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi157253_
                                            _code157258_)))))
                                  (declare (not safe))
                                  (spawn __tmp158348)))
                              _phi-code157256_)))
                    (for-each gxc#join! _threads157261_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx157233_)
        (let* ((_path157235_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx157233_ '#f '".ssxi.ss")))
               (_code157237_
                (let ((__tmp158349
                       (##structure-ref
                        _ctx157233_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp158349)))
               (_idstr157239_
                (symbol->string
                 (##structure-ref _ctx157233_ '1 gx#expander-context::t '#f)))
               (_pkg157246_
                (let ((_$e157241_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr157239_ '#\/))))
                  (if _$e157241_
                      ((lambda (_x157244_)
                         (string->symbol
                          (substring _idstr157239_ '0 _x157244_)))
                       _$e157241_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path157235_))
          (let ((__tmp158350
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg157246_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg157246_))
                       '#!void)
                   (newline)
                   (pretty-print _code157237_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path157235_ __tmp158350)))))
    (define gxc#generate-meta-code
      (lambda (_ctx157226_)
        (let* ((_state157228_
                (let ((__obj158108
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj158108 _ctx157226_)
                  __obj158108))
               (_ssi-code157230_
                (let ((__tmp158351
                       (##structure-ref
                        _ctx157226_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp158351 _state157228_))))
          (values _ssi-code157230_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state157228_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx157219_)
        (let ((_lifts157221_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158354
                 (lambda ()
                   (let ((_code157224_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx157219_))))
                     (if (let ((__tmp158358 (unbox _lifts157221_)))
                           (declare (not safe))
                           (null? __tmp158358))
                         _code157224_
                         (let ((__tmp158355
                                (let ((__tmp158357
                                       (let ()
                                         (declare (not safe))
                                         (cons _code157224_ '())))
                                      (__tmp158356
                                       (reverse (unbox _lifts157221_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp158357 __tmp158356))))
                           (declare (not safe))
                           (cons 'begin __tmp158355))))))
                (__tmp158353
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp158352
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp158354
             gxc#current-compile-lift
             _lifts157221_
             gxc#current-compile-marks
             __tmp158353
             gxc#current-compile-identifiers
             __tmp158352)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx157215_)
        (let ((_modules157217_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158359
                 (##structure-ref _ctx157215_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp158359 _modules157217_))
          (reverse (unbox _modules157217_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path157198_ _code157199_ _phi?157200_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path157198_))
        (let ((__tmp158360
               (lambda ()
                 (pretty-print
                  (let ((__tmp158361
                         (let ((__tmp158368
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp158362
                                (let ((__tmp158367
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp158363
                                       (let ((__tmp158366
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp158364
                                              (let ((__tmp158365
                                                     (if _phi?157200_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp158365))))
                                         (declare (not safe))
                                         (cons __tmp158366 __tmp158364))))
                                  (declare (not safe))
                                  (cons __tmp158367 __tmp158363))))
                           (declare (not safe))
                           (cons __tmp158368 __tmp158362))))
                    (declare (not safe))
                    (cons 'declare __tmp158361)))
                 (pretty-print _code157199_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path157198_ __tmp158360))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path157198_ _phi?157200_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path157198_))))
    (define gxc#compile-scm-file__0
      (lambda (_path157206_ _code157207_)
        (let ((_phi?157209_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path157206_ _code157207_ _phi?157209_))))
    (define gxc#compile-scm-file
      (lambda _g158370_
        (let ((_g158369_ (let () (declare (not safe)) (##length _g158370_))))
          (cond ((let () (declare (not safe)) (##fx= _g158369_ 2))
                 (apply (lambda (_path157206_ _code157207_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path157206_
                             _code157207_)))
                        _g158370_))
                ((let () (declare (not safe)) (##fx= _g158369_ 3))
                 (apply (lambda (_path157211_ _code157212_ _phi?157213_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path157211_
                             _code157212_
                             _phi?157213_)))
                        _g158370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g158370_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?157099_)
        (let _lp157101_ ((_rest157103_ (gxc#current-compile-gsc-options))
                         (_opts157104_ '()))
          (let* ((_rest157105157125_ _rest157103_)
                 (_else157109157133_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157099_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158371
                               (let ((__tmp158372 (reverse _opts157104_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp158372))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp158371))
                        (reverse _opts157104_)))))
            (let ((_K157119157176_
                   (lambda (_rest157174_)
                     (let ()
                       (declare (not safe))
                       (_lp157101_ _rest157174_ _opts157104_))))
                  (_K157114157158_
                   (lambda (_rest157156_)
                     (let ()
                       (declare (not safe))
                       (_lp157101_ _rest157156_ _opts157104_))))
                  (_K157111157140_
                   (lambda (_rest157137_ _opt157138_)
                     (let ((__tmp158373
                            (let ()
                              (declare (not safe))
                              (cons _opt157138_ _opts157104_))))
                       (declare (not safe))
                       (_lp157101_ _rest157137_ __tmp158373)))))
              (if (let () (declare (not safe)) (##pair? _rest157105157125_))
                  (let ((_tl157121157181_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157105157125_)))
                        (_hd157120157179_
                         (let ()
                           (declare (not safe))
                           (##car _rest157105157125_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157120157179_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157121157181_))
                            (let* ((_tl157123157184_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157121157181_)))
                                   (_rest157187_ _tl157123157184_))
                              (declare (not safe))
                              (_K157119157176_ _rest157187_))
                            (let ((_opt157148_ _hd157120157179_)
                                  (_rest157150_ _tl157121157181_))
                              (let ()
                                (declare (not safe))
                                (_K157111157140_ _rest157150_ _opt157148_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157120157179_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157121157181_))
                                (let* ((_tl157118157166_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157121157181_)))
                                       (_rest157169_ _tl157118157166_))
                                  (declare (not safe))
                                  (_K157114157158_ _rest157169_))
                                (let ((_opt157148_ _hd157120157179_)
                                      (_rest157150_ _tl157121157181_))
                                  (let ()
                                    (declare (not safe))
                                    (_K157111157140_
                                     _rest157150_
                                     _opt157148_))))
                            (let ((_opt157148_ _hd157120157179_)
                                  (_rest157150_ _tl157121157181_))
                              (let ()
                                (declare (not safe))
                                (_K157111157140_ _rest157150_ _opt157148_))))))
                  (let () (declare (not safe)) (_else157109157133_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?157193_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?157193_))))
    (define gxc#gsc-link-options
      (lambda _g158375_
        (let ((_g158374_ (let () (declare (not safe)) (##length _g158375_))))
          (cond ((let () (declare (not safe)) (##fx= _g158374_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g158375_))
                ((let () (declare (not safe)) (##fx= _g158374_ 1))
                 (apply (lambda (_phi?157195_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?157195_)))
                        _g158375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g158375_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?157000_)
        (let _lp157002_ ((_rest157004_ (gxc#current-compile-gsc-options))
                         (_opts157005_ '()))
          (let* ((_rest157006157026_ _rest157004_)
                 (_else157010157034_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157000_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158376
                               (let ((__tmp158377 (reverse _opts157005_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp158377))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp158376))
                        (reverse _opts157005_)))))
            (let ((_K157020157073_
                   (lambda (_rest157070_ _opt157071_)
                     (let ((__tmp158378
                            (let ((__tmp158379
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts157005_))))
                              (declare (not safe))
                              (cons _opt157071_ __tmp158379))))
                       (declare (not safe))
                       (_lp157002_ _rest157070_ __tmp158378))))
                  (_K157015157054_
                   (lambda (_rest157052_)
                     (let ()
                       (declare (not safe))
                       (_lp157002_ _rest157052_ _opts157005_))))
                  (_K157012157040_
                   (lambda (_rest157038_)
                     (let ()
                       (declare (not safe))
                       (_lp157002_ _rest157038_ _opts157005_)))))
              (if (let () (declare (not safe)) (##pair? _rest157006157026_))
                  (let ((_tl157022157078_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157006157026_)))
                        (_hd157021157076_
                         (let ()
                           (declare (not safe))
                           (##car _rest157006157026_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157021157076_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157022157078_))
                            (let ((_tl157024157083_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl157022157078_)))
                                  (_hd157023157081_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl157022157078_))))
                              (let ((_opt157086_ _hd157023157081_)
                                    (_rest157088_ _tl157024157083_))
                                (let ()
                                  (declare (not safe))
                                  (_K157020157073_ _rest157088_ _opt157086_))))
                            (let ((_rest157046_ _tl157022157078_))
                              (declare (not safe))
                              (_K157012157040_ _rest157046_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157021157076_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157022157078_))
                                (let* ((_tl157019157062_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157022157078_)))
                                       (_rest157065_ _tl157019157062_))
                                  (declare (not safe))
                                  (_K157015157054_ _rest157065_))
                                (let ((_rest157046_ _tl157022157078_))
                                  (declare (not safe))
                                  (_K157012157040_ _rest157046_)))
                            (let ((_rest157046_ _tl157022157078_))
                              (declare (not safe))
                              (_K157012157040_ _rest157046_)))))
                  (let () (declare (not safe)) (_else157010157034_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?157094_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?157094_))))
    (define gxc#gsc-cc-options
      (lambda _g158381_
        (let ((_g158380_ (let () (declare (not safe)) (##length _g158381_))))
          (cond ((let () (declare (not safe)) (##fx= _g158380_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g158381_))
                ((let () (declare (not safe)) (##fx= _g158380_ 1))
                 (apply (lambda (_phi?157096_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?157096_)))
                        _g158381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g158381_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156995_)
        (let* ((_user-staticdir156997_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp158382
                (let ((__tmp158383
                       (string-append
                        '"-I "
                        _staticdir156995_
                        '" -I "
                        _user-staticdir156997_)))
                  (declare (not safe))
                  (cons __tmp158383 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp158382))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156907_ ((_rest156909_ (gxc#current-compile-gsc-options))
                         (_opts156910_ '()))
          (let* ((_rest156911156931_ _rest156909_)
                 (_else156915156939_ (lambda () _opts156910_)))
            (let ((_K156925156982_
                   (lambda (_rest156980_)
                     (let ()
                       (declare (not safe))
                       (_lp156907_ _rest156980_ _opts156910_))))
                  (_K156920156960_
                   (lambda (_rest156957_ _opt156958_)
                     (let ((__tmp158384
                            (append _opts156910_
                                    (let ((__tmp158385
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt156958_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp158385)))))
                       (declare (not safe))
                       (_lp156907_ _rest156957_ __tmp158384))))
                  (_K156917156945_
                   (lambda (_rest156943_)
                     (let ()
                       (declare (not safe))
                       (_lp156907_ _rest156943_ _opts156910_)))))
              (if (let () (declare (not safe)) (##pair? _rest156911156931_))
                  (let ((_tl156927156987_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156911156931_)))
                        (_hd156926156985_
                         (let ()
                           (declare (not safe))
                           (##car _rest156911156931_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156926156985_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156927156987_))
                            (let* ((_tl156929156990_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156927156987_)))
                                   (_rest156993_ _tl156929156990_))
                              (declare (not safe))
                              (_K156925156982_ _rest156993_))
                            (let ((_rest156951_ _tl156927156987_))
                              (declare (not safe))
                              (_K156917156945_ _rest156951_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156926156985_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156927156987_))
                                (let ((_tl156924156970_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156927156987_)))
                                      (_hd156923156968_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156927156987_))))
                                  (let ((_opt156973_ _hd156923156968_)
                                        (_rest156975_ _tl156924156970_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156920156960_
                                       _rest156975_
                                       _opt156973_))))
                                (let ((_rest156951_ _tl156927156987_))
                                  (declare (not safe))
                                  (_K156917156945_ _rest156951_)))
                            (let ((_rest156951_ _tl156927156987_))
                              (declare (not safe))
                              (_K156917156945_ _rest156951_)))))
                  (let () (declare (not safe)) (_else156915156939_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156904_)
        (let ((__tmp158386
               (let () (declare (not safe)) (string-empty? _str156904_))))
          (declare (not safe))
          (not __tmp158386))))
    (define gxc#gsc-compile-file
      (lambda (_path156872_ _phi?156873_)
        (letrec ((_gsc-link-path156875_
                  (lambda (_base-path156896_)
                    (let _lp156898_ ((_n156900_ '1))
                      (let ((_path156902_
                             (string-append
                              _base-path156896_
                              '".o"
                              (number->string _n156900_))))
                        (if (file-exists? _path156902_)
                            (let ((__tmp158387
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156900_ '1))))
                              (declare (not safe))
                              (_lp156898_ __tmp158387))
                            _path156902_))))))
          (let* ((_base-path156877_ (path-strip-extension _path156872_))
                 (_path-c156879_ (string-append _base-path156877_ '".c"))
                 (_path-o156881_ (string-append _base-path156877_ '".o"))
                 (_link-path156883_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156875_ _base-path156877_)))
                 (_link-path-c156885_ (string-append _link-path156883_ '".c"))
                 (_link-path-o156887_ (string-append _link-path156883_ '".o"))
                 (_gsc-link-opts156889_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156873_)))
                 (_gsc-cc-opts156891_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156873_)))
                 (_gcc-ld-opts156893_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp158394 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158388
                   (let ((__tmp158389
                          (let ((__tmp158390
                                 (let ((__tmp158391
                                        (let ((__tmp158392
                                               (let ((__tmp158393
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156872_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp158393
                                                         _gsc-link-opts156889_))))
                                          (declare (not safe))
                                          (cons _link-path-c156885_
                                                __tmp158392))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp158391))))
                            (declare (not safe))
                            (cons '"-flat" __tmp158390))))
                     (declare (not safe))
                     (cons '"-link" __tmp158389))))
              (declare (not safe))
              (gxc#invoke __tmp158394 __tmp158388 'stdout-redirection: '#t))
            (let ((__tmp158401 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158395
                   (let ((__tmp158396
                          (let ((__tmp158397
                                 (let ((__tmp158398
                                        (let ((__tmp158399
                                               (let ((__tmp158400
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156885_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156879_
                                                       __tmp158400))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp158399
                                                  _gsc-cc-opts156891_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp158398))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp158397))))
                     (declare (not safe))
                     (cons '"-obj" __tmp158396))))
              (declare (not safe))
              (gxc#invoke __tmp158401 __tmp158395 'stdout-redirection: '#t))
            (let ((__tmp158407 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp158402
                   (let ((__tmp158403
                          (let ((__tmp158404
                                 (let ((__tmp158405
                                        (let ((__tmp158406
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156887_
                                                       _gcc-ld-opts156893_))))
                                          (declare (not safe))
                                          (cons _path-o156881_ __tmp158406))))
                                   (declare (not safe))
                                   (cons _link-path156883_ __tmp158405))))
                            (declare (not safe))
                            (cons '"-o" __tmp158404))))
                     (declare (not safe))
                     (cons '"-shared" __tmp158403))))
              (declare (not safe))
              (gxc#invoke __tmp158407 __tmp158402))
            (for-each
             delete-file
             (let ((__tmp158408
                    (let ((__tmp158409
                           (let ((__tmp158410
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156887_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156885_ __tmp158410))))
                      (declare (not safe))
                      (cons _path-o156881_ __tmp158409))))
               (declare (not safe))
               (cons _path-c156879_ __tmp158408)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156843_ _n156844_ _ext156845_)
        (letrec ((_module-relative-path156847_
                  (lambda (_ctx156870_)
                    (path-strip-directory
                     (let ((__tmp158411
                            (##structure-ref
                             _ctx156870_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp158411)))))
                 (_module-source-directory156848_
                  (lambda (_ctx156866_)
                    (path-directory
                     (let ((_mpath156868_
                            (##structure-ref
                             _ctx156866_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156868_))
                           _mpath156868_
                           (let ()
                             (declare (not safe))
                             (last _mpath156868_)))))))
                 (_section-string156849_
                  (lambda (_n156864_)
                    (if (let () (declare (not safe)) (number? _n156864_))
                        (number->string _n156864_)
                        (if (let () (declare (not safe)) (symbol? _n156864_))
                            (symbol->string _n156864_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156864_))
                                _n156864_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156864_)))))))
                 (_file-name156850_
                  (lambda (_path156862_)
                    (if _n156844_
                        (string-append
                         _path156862_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156849_ _n156844_))
                         _ext156845_)
                        (string-append _path156862_ _ext156845_))))
                 (_file-path156851_
                  (lambda ()
                    (let ((_$e156857_ (gxc#current-compile-output-dir)))
                      (if _$e156857_
                          ((lambda (_outdir156860_)
                             (path-expand
                              (let ((__tmp158413
                                     (let ((__tmp158414
                                            (##structure-ref
                                             _ctx156843_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp158414))))
                                (declare (not safe))
                                (_file-name156850_ __tmp158413))
                              _outdir156860_))
                           _$e156857_)
                          (path-expand
                           (let ((__tmp158412
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156847_
                                     _ctx156843_))))
                             (declare (not safe))
                             (_file-name156850_ __tmp158412))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156848_
                              _ctx156843_))))))))
          (let ((_path156853_
                 (let () (declare (not safe)) (_file-path156851_))))
            (let ((__tmp158415
                   (lambda ()
                     (let ((__tmp158416 (path-directory _path156853_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158416)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158415))
            _path156853_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156825_)
        (letrec ((_file-name156827_
                  (lambda (_id156841_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156841_))
                     '".scm")))
                 (_file-path156828_
                  (lambda ()
                    (let* ((_file156834_
                            (let ((__tmp158417
                                   (##structure-ref
                                    _ctx156825_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156827_ __tmp158417)))
                           (_$e156836_ (gxc#current-compile-output-dir)))
                      (if _$e156836_
                          ((lambda (_outdir156839_)
                             (path-expand
                              _file156834_
                              (path-expand '"static" _outdir156839_)))
                           _$e156836_)
                          (path-expand _file156834_ '"static"))))))
          (let ((_path156830_
                 (let () (declare (not safe)) (_file-path156828_))))
            (let ((__tmp158418
                   (lambda ()
                     (let ((__tmp158419 (path-directory _path156830_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158419)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158418))
            _path156830_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156819_ _opts156820_)
        (let ((_$e156822_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156820_))))
          (if _$e156822_
              (values _$e156822_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156819_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156812_)
        (if (let () (declare (not safe)) (string? _idstr156812_))
            (let* ((_str156814_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156812_)))
                   (_strs156816_
                    (let ()
                      (declare (not safe))
                      (string-split _str156814_ '#\/))))
              (let () (declare (not safe)) (string-join _strs156816_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156812_))
                (let ((__tmp158420 (symbol->string _idstr156812_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp158420))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156812_))))))
    (define gxc#invoke__%
      (lambda (_g158421_
               _stdout-redirection156773156777_
               _stderr-redirection156774156779_
               _program156781_
               _args156782_)
        (let* ((_stdout-redirection156784_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection156773156777_ absent-value))
                    '#f
                    _stdout-redirection156773156777_))
               (_stderr-redirection156786_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection156774156779_ absent-value))
                    '#f
                    _stderr-redirection156774156779_)))
          (let ((__tmp158422
                 (let ()
                   (declare (not safe))
                   (cons _program156781_ _args156782_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp158422))
          (let* ((_proc156788_
                  (open-process
                   (let ((__tmp158423
                          (let ((__tmp158424
                                 (let ((__tmp158425
                                        (let ((__tmp158426
                                               (let ((__tmp158427
                                                      (let ((__tmp158428
                                                             (let ((__tmp158429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection156786_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp158429))))
                (declare (not safe))
                (cons _stdout-redirection156784_ __tmp158428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp158427))))
                                          (declare (not safe))
                                          (cons _args156782_ __tmp158426))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp158425))))
                            (declare (not safe))
                            (cons _program156781_ __tmp158424))))
                     (declare (not safe))
                     (cons 'path: __tmp158423))))
                 (_output156793_
                  (if (or _stdout-redirection156784_
                          _stderr-redirection156786_)
                      (read-line _proc156788_ '#f)
                      '#f)))
            (let ((_status156796_ (process-status _proc156788_)))
              (close-port _proc156788_)
              (if (let () (declare (not safe)) (zero? _status156796_))
                  '#!void
                  (begin
                    (display _output156793_)
                    (let ((__tmp158430
                           (let ()
                             (declare (not safe))
                             (cons _program156781_ _args156782_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp158430
                       _status156796_)))))))))
    (define gxc#invoke__@
      (lambda (_keys156772156801_ . _args156803_)
        (apply gxc#invoke__%
               _keys156772156801_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156772156801_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156772156801_
                  'stderr-redirection:
                  absent-value))
               _args156803_)))
    (define gxc#invoke
      (lambda _args156775156809_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156775156809_)))
    (define gxc#join!
      (lambda (_thread156766_)
        (let ((__tmp158432
               (lambda (_exn156768_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn156768_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn156768_)))
                     (raise _exn156768_))))
              (__tmp158431 (lambda () (thread-join! _thread156766_))))
          (declare (not safe))
          (with-catch __tmp158432 __tmp158431))))))
