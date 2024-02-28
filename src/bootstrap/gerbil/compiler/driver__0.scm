(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1709125259)
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
      (lambda (_path158005_ _fun158006_)
        (with-output-to-file
         (let ((__tmp158099
                (let ()
                  (declare (not safe))
                  (cons _path158005_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp158099))
         _fun158006_)))
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
      (lambda (_gerbil-libdir158000_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir158000_)))
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
      (lambda (_dir157998_) (delete-file-or-directory _dir157998_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157972_ _opts157973_)
        (if (let () (declare (not safe)) (string? _srcpath157972_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157972_)))
        (let ((_outdir157975_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157973_)))
              (_invoke-gsc?157976_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157973_)))
              (_gsc-options157977_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157973_)))
              (_keep-scm?157978_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157973_)))
              (_verbosity157979_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157973_)))
              (_optimize157980_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157973_)))
              (_debug157981_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157973_)))
              (_gen-ssxi157982_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157973_))))
          (if _outdir157975_
              (let ((__tmp158100
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157975_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158100))
              '#!void)
          (if _optimize157980_
              (let ((__tmp158101
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158101))
              '#!void)
          (let ((__tmp158105
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157972_))
                   (let ((__tmp158106
                          (let ((__tmp158107
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157972_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158107))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp158106))))
                (__tmp158104
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158102
                 (let ((__tmp158103
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157972_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp158103))))
            (declare (not safe))
            (call-with-parameters
             __tmp158105
             gxc#current-compile-output-dir
             _outdir157975_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157976_
             gxc#current-compile-gsc-options
             _gsc-options157977_
             gxc#current-compile-keep-scm
             _keep-scm?157978_
             gxc#current-compile-verbose
             _verbosity157979_
             gxc#current-compile-optimize
             _optimize157980_
             gxc#current-compile-debug
             _debug157981_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157982_
             gxc#current-compile-timestamp
             __tmp158104
             gxc#current-compile-context
             __tmp158102
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath157991_)
        (let ((_opts157993_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath157991_ _opts157993_))))
    (define gxc#compile-module
      (lambda _g158109_
        (let ((_g158108_ (let () (declare (not safe)) (##length _g158109_))))
          (cond ((let () (declare (not safe)) (##fx= _g158108_ 1))
                 (apply (lambda (_srcpath157991_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath157991_)))
                        _g158109_))
                ((let () (declare (not safe)) (##fx= _g158108_ 2))
                 (apply (lambda (_srcpath157995_ _opts157996_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath157995_
                             _opts157996_)))
                        _g158109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g158109_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157948_ _opts157949_)
        (if (let () (declare (not safe)) (string? _srcpath157948_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157948_)))
        (let ((_outdir157951_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157949_)))
              (_invoke-gsc?157952_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157949_)))
              (_gsc-options157953_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157949_)))
              (_keep-scm?157954_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157949_)))
              (_verbosity157955_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157949_)))
              (_debug157956_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157949_))))
          (if _outdir157951_
              (let ((__tmp158110
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157951_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158110))
              '#!void)
          (let ((__tmp158114
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157948_))
                   (let ((__tmp158115
                          (let ((__tmp158116
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157948_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158116))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp158115
                      _opts157949_))))
                (__tmp158113
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158111
                 (let ((__tmp158112
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157948_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp158112))))
            (declare (not safe))
            (call-with-parameters
             __tmp158114
             gxc#current-compile-output-dir
             _outdir157951_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157952_
             gxc#current-compile-gsc-options
             _gsc-options157953_
             gxc#current-compile-keep-scm
             _keep-scm?157954_
             gxc#current-compile-verbose
             _verbosity157955_
             gxc#current-compile-debug
             _debug157956_
             gxc#current-compile-timestamp
             __tmp158113
             gxc#current-compile-context
             __tmp158111
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157964_)
        (let ((_opts157966_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157964_ _opts157966_))))
    (define gxc#compile-exe
      (lambda _g158118_
        (let ((_g158117_ (let () (declare (not safe)) (##length _g158118_))))
          (cond ((let () (declare (not safe)) (##fx= _g158117_ 1))
                 (apply (lambda (_srcpath157964_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157964_)))
                        _g158118_))
                ((let () (declare (not safe)) (##fx= _g158117_ 2))
                 (apply (lambda (_srcpath157968_ _opts157969_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157968_ _opts157969_)))
                        _g158118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g158118_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157944_ _opts157945_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157945_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157944_
               _opts157945_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157944_
               _opts157945_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157827_ _opts157828_)
        (letrec ((_generate-stub157830_
                  (lambda (_builtin-modules157940_)
                    (let ((_mod-main157942_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157827_ 'main))))
                      (write (let ((__tmp158119
                                    (let ((__tmp158120
                                           (let ((__tmp158121
                                                  (let ((__tmp158122
                                                         (let ((__tmp158124
                                                                (let ((__tmp158125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157940_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158125)))
                       (__tmp158123
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp158124 __tmp158123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp158122))))
                                             (declare (not safe))
                                             (cons __tmp158121 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp158120))))
                               (declare (not safe))
                               (cons 'define __tmp158119)))
                      (write (let ((__tmp158126
                                    (let ((__tmp158165
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158127
                                           (let ((__tmp158128
                                                  (let ((__tmp158129
                                                         (let ((__tmp158153
                                                                (let ((__tmp158154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158155
                                      (let ((__tmp158163
                                             (let ((__tmp158164
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp158164)))
                                            (__tmp158156
                                             (let ((__tmp158157
                                                    (let ((__tmp158158
                                                           (let ((__tmp158159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158160
                                 (let ((__tmp158161
                                        (let ((__tmp158162
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp158162 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp158161))))
                            (declare (not safe))
                            (cons __tmp158160 '()))))
                     (declare (not safe))
                     (cons _mod-main157942_ __tmp158159))))
              (declare (not safe))
              (cons 'apply __tmp158158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158157 '()))))
                                        (declare (not safe))
                                        (cons __tmp158163 __tmp158156))))
                                 (declare (not safe))
                                 (cons '() __tmp158155))))
                          (declare (not safe))
                          (cons 'lambda __tmp158154)))
                       (__tmp158130
                        (let ((__tmp158131
                               (let ((__tmp158132
                                      (let ((__tmp158133
                                             (let ((__tmp158144
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
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp158152 '()))))
                (declare (not safe))
                (cons 'force-output __tmp158151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp158150 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp158149))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp158148))))
                            (declare (not safe))
                            (cons __tmp158147 '()))))
                     (declare (not safe))
                     (cons 'void __tmp158146))))
              (declare (not safe))
              (cons 'with-catch __tmp158145)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp158134
                                                    (let ((__tmp158135
                                                           (let ((__tmp158136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158137
                                 (let ((__tmp158138
                                        (let ((__tmp158139
                                               (let ((__tmp158140
                                                      (let ((__tmp158141
                                                             (let ((__tmp158142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp158143
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp158143 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp158142))))
                (declare (not safe))
                (cons __tmp158141 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp158140))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp158139))))
                                   (declare (not safe))
                                   (cons __tmp158138 '()))))
                            (declare (not safe))
                            (cons 'void __tmp158137))))
                     (declare (not safe))
                     (cons 'with-catch __tmp158136))))
              (declare (not safe))
              (cons __tmp158135 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158144
                                                     __tmp158134))))
                                        (declare (not safe))
                                        (cons '() __tmp158133))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp158132))))
                          (declare (not safe))
                          (cons __tmp158131 '()))))
                   (declare (not safe))
                   (cons __tmp158153 __tmp158130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp158129))))
                                             (declare (not safe))
                                             (cons __tmp158128 '()))))
                                      (declare (not safe))
                                      (cons __tmp158165 __tmp158127))))
                               (declare (not safe))
                               (cons 'define __tmp158126)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157831_
                  (lambda (_libgerbil157938_)
                    (call-with-input-file
                     (string-append _libgerbil157938_ '".ldd")
                     read)))
                 (_replace-extension157832_
                  (lambda (_path157935_ _ext157936_)
                    (string-append
                     (path-strip-extension _path157935_)
                     _ext157936_)))
                 (_not-exclude-module?157833_
                  (lambda (_ctx157931_)
                    (let ((_id-str157933_
                           (symbol->string
                            (##structure-ref
                             _ctx157931_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp158167
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157933_))))
                            (declare (not safe))
                            (not __tmp158167))
                          (let ((__tmp158166
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157933_))))
                            (declare (not safe))
                            (not __tmp158166))
                          '#f))))
                 (_not-file-empty?157834_
                  (lambda (_path157929_)
                    (let ((__tmp158168
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157929_))))
                      (declare (not safe))
                      (not __tmp158168))))
                 (_compile-stub157835_
                  (lambda (_output-scm157842_ _output-bin157843_)
                    (let* ((_gerbil-home157845_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157847_
                            (path-expand '"lib" _gerbil-home157845_))
                           (_gerbil-staticdir157849_
                            (path-expand '"static" _gerbil-libdir157847_))
                           (_gxlink157851_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157847_))
                           (_tmp157853_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157857_
                            (lambda (_f157855_)
                              (path-expand
                               (path-strip-directory _f157855_)
                               _tmp157853_)))
                           (_deps157859_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157827_)))
                           (_deps157861_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?157833_
                                      _deps157859_)))
                           (_src-deps-scm157863_
                            (map gxc#find-static-module-file _deps157861_))
                           (_src-deps-scm157865_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?157834_
                                      _src-deps-scm157863_)))
                           (_src-deps-scm157867_
                            (map path-expand _src-deps-scm157865_))
                           (_deps-scm157869_
                            (map _tmp-path157857_ _src-deps-scm157867_))
                           (_deps-c157875_
                            (map (lambda (_g157870157872_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157832_
                                      _g157870157872_
                                      '".c")))
                                 _deps-scm157869_))
                           (_deps-o157881_
                            (map (lambda (_g157876157878_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157832_
                                      _g157876157878_
                                      '".o")))
                                 _deps-scm157869_))
                           (_src-bin-scm157883_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157827_)))
                           (_src-bin-scm157885_
                            (path-expand _src-bin-scm157883_))
                           (_bin-scm157887_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157857_ _src-bin-scm157885_)))
                           (_bin-c157889_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157832_
                               _bin-scm157887_
                               '".c")))
                           (_bin-o157891_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157832_
                               _bin-scm157887_
                               '".o")))
                           (_output-bin157893_
                            (path-expand _output-bin157843_))
                           (_output-scm157895_
                            (path-expand _output-scm157842_))
                           (_output-c157897_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157832_
                               _output-scm157895_
                               '".c")))
                           (_output-o157899_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157832_
                               _output-scm157895_
                               '".o")))
                           (_output_-c157901_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157832_
                               _output-scm157895_
                               '"_.c")))
                           (_output_-o157903_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157832_
                               _output-scm157895_
                               '"_.o")))
                           (_gsc-link-opts157905_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157907_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157909_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157849_)))
                           (_output-ld-opts157911_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157913_
                            (path-expand '"libgerbil.a" _gerbil-libdir157847_))
                           (_libgerbil.so157915_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157847_))
                           (_libgerbil-ld-opts157917_
                            (if (file-exists? _libgerbil.so157915_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157831_
                                   _libgerbil.so157915_))
                                (if (file-exists? _libgerbil.a157913_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157831_
                                       _libgerbil.a157913_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157913_
                                       _libgerbil.so157915_)))))
                           (_rpath157919_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157847_)))
                           (_builtin-modules157923_
                            (map (lambda (_mod157921_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157921_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157827_ _deps157861_)))))
                      (let ((__tmp158169
                             (lambda ()
                               (let ((__tmp158170
                                      (path-directory _output-bin157893_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158170)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158169))
                      (let ((__tmp158171
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157830_
                                  _builtin-modules157923_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157895_
                         __tmp158171))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158172
                                   (lambda () (create-directory _tmp157853_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp158172))
                            (for-each
                             copy-file
                             _src-deps-scm157867_
                             _deps-scm157869_)
                            (copy-file _src-bin-scm157885_ _bin-scm157887_)
                            (let ((__tmp158180
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158173
                                   (let ((__tmp158174
                                          (let ((__tmp158175
                                                 (let ((__tmp158176
                                                        (let ((__tmp158177
                                                               (let ((__tmp158178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158179
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157895_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157887_ __tmp158179))))
                         (declare (not safe))
                         (foldr1 cons __tmp158178 _deps-scm157869_))))
                  (declare (not safe))
                  (foldr1 cons __tmp158177 _gsc-link-opts157905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157851_
                                                         __tmp158176))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp158175))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158174))))
                              (declare (not safe))
                              (gxc#invoke __tmp158180 __tmp158173))
                            (let ((__tmp158188
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158181
                                   (let ((__tmp158182
                                          (let ((__tmp158183
                                                 (let ((__tmp158184
                                                        (let ((__tmp158185
                                                               (let ((__tmp158186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158187
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c157901_ '()))))
                                (declare (not safe))
                                (cons _output-c157897_ __tmp158187))))
                         (declare (not safe))
                         (cons _bin-c157889_ __tmp158186))))
                  (declare (not safe))
                  (foldr1 cons __tmp158185 _deps-c157875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158184
                                                           _gsc-static-opts157909_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158183
                                                    _gsc-cc-opts157907_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158182))))
                              (declare (not safe))
                              (gxc#invoke __tmp158188 __tmp158181))
                            (let ((__tmp158201
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158189
                                   (let ((__tmp158190
                                          (let ((__tmp158191
                                                 (let ((__tmp158192
                                                        (let ((__tmp158193
                                                               (let ((__tmp158194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158195
                                     (let ((__tmp158196
                                            (let ((__tmp158197
                                                   (let ((__tmp158198
                                                          (let ((__tmp158199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp158200
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157917_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp158200))))
                    (declare (not safe))
                    (cons _gerbil-libdir157847_ __tmp158199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp158198))))
                                              (declare (not safe))
                                              (cons _rpath157919_
                                                    __tmp158197))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp158196
                                               _output-ld-opts157911_))))
                                (declare (not safe))
                                (cons _output_-o157903_ __tmp158195))))
                         (declare (not safe))
                         (cons _output-o157899_ __tmp158194))))
                  (declare (not safe))
                  (cons _bin-o157891_ __tmp158193))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158192
                                                           _deps-o157881_))))
                                            (declare (not safe))
                                            (cons _output-bin157893_
                                                  __tmp158191))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158190))))
                              (declare (not safe))
                              (gxc#invoke __tmp158201 __tmp158189))
                            (for-each
                             delete-file
                             (let ((__tmp158202
                                    (let ((__tmp158203
                                           (let ((__tmp158204
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157903_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157899_
                                                   __tmp158204))))
                                      (declare (not safe))
                                      (cons _output_-c157901_ __tmp158203))))
                               (declare (not safe))
                               (cons _output-c157897_ __tmp158202)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157853_)))
                          '#!void)))))
          (let* ((_output-bin157837_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157827_ _opts157828_)))
                 (_output-scm157839_
                  (string-append _output-bin157837_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157835_ _output-scm157839_ _output-bin157837_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157839_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx157652_ _opts157653_)
        (letrec ((_reset-declare157655_
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
                 (_generate-stub157656_
                  (lambda (_deps157818_)
                    (let ((_mod-main157820_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157652_ 'main)))
                          (_reset-decl157821_
                           (let ()
                             (declare (not safe))
                             (_reset-declare157655_)))
                          (_user-decl157822_
                           (let ()
                             (declare (not safe))
                             (_user-declare157657_))))
                      (for-each
                       (lambda (_dep157824_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157821_)
                         (newline)
                         (if _user-decl157822_
                             (begin (write _user-decl157822_) (newline))
                             '#!void)
                         (write (let ((__tmp158205
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157824_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp158205)))
                         (newline))
                       _deps157818_)
                      (write (let ((__tmp158206
                                    (let ((__tmp158219
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158207
                                           (let ((__tmp158215
                                                  (let ((__tmp158216
                                                         (let ((__tmp158217
                                                                (let ((__tmp158218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158218))))
                   (declare (not safe))
                   (cons __tmp158217 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp158216)))
                                                 (__tmp158208
                                                  (let ((__tmp158209
                                                         (let ((__tmp158210
                                                                (let ((__tmp158211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158212
                                      (let ((__tmp158213
                                             (let ((__tmp158214
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp158214 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp158213))))
                                 (declare (not safe))
                                 (cons __tmp158212 '()))))
                          (declare (not safe))
                          (cons _mod-main157820_ __tmp158211))))
                   (declare (not safe))
                   (cons 'apply __tmp158210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158209 '()))))
                                             (declare (not safe))
                                             (cons __tmp158215 __tmp158208))))
                                      (declare (not safe))
                                      (cons __tmp158219 __tmp158207))))
                               (declare (not safe))
                               (cons 'define __tmp158206)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare157657_
                  (lambda ()
                    (let* ((_gsc-opts157723_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts157653_)))
                           (_gsc-prelude157725_
                            (if _gsc-opts157723_
                                (member '"-prelude" _gsc-opts157723_)
                                '#f))
                           (_gsc-prelude157727_
                            (if _gsc-prelude157725_
                                (read (open-input-string
                                       (cadr _gsc-prelude157725_)))
                                '#f)))
                      (let _lp157730_ ((_rest157732_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude157727_ '())))
                                       (_user-decls157733_ '()))
                        (let* ((_rest157734157742_ _rest157732_)
                               (_else157736157750_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls157733_))
                                      '#f
                                      (let ((__tmp158220
                                             (reverse _user-decls157733_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp158220)))))
                               (_K157738157806_
                                (lambda (_rest157753_ _expr157754_)
                                  (let* ((_expr157755157767_ _expr157754_)
                                         (_else157758157775_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp157730_
                                               _rest157753_
                                               _user-decls157733_)))))
                                    (let ((_K157763157796_
                                           (lambda (_decls157794_)
                                             (let ((__tmp158221
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls157733_
                                                              _decls157794_))))
                                               (declare (not safe))
                                               (_lp157730_
                                                _rest157753_
                                                __tmp158221))))
                                          (_K157760157781_
                                           (lambda (_exprs157779_)
                                             (let ((__tmp158222
                                                    (append _exprs157779_
                                                            _rest157753_)))
                                               (declare (not safe))
                                               (_lp157730_
                                                __tmp158222
                                                _user-decls157733_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr157755157767_))
                                          (let ((_tl157765157801_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr157755157767_)))
                                                (_hd157764157799_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr157755157767_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157764157799_
                                                         'declare))
                                                (let ((_decls157804_
                                                       _tl157765157801_))
                                                  (declare (not safe))
                                                  (_K157763157796_
                                                   _decls157804_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157764157799_
                                                             'begin))
                                                    (let ((_exprs157789_
                                                           _tl157765157801_))
                                                      (declare (not safe))
                                                      (_K157760157781_
                                                       _exprs157789_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else157758157775_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else157758157775_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest157734157742_))
                              (let ((_hd157739157809_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest157734157742_)))
                                    (_tl157740157811_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest157734157742_))))
                                (let* ((_expr157814_ _hd157739157809_)
                                       (_rest157816_ _tl157740157811_))
                                  (declare (not safe))
                                  (_K157738157806_ _rest157816_ _expr157814_)))
                              (let ()
                                (declare (not safe))
                                (_else157736157750_))))))))
                 (_compile-stub157658_
                  (lambda (_output-scm157665_ _output-bin157666_)
                    (let* ((_gerbil-home157668_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157670_
                            (path-expand '"lib" _gerbil-home157668_))
                           (_runtime157672_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp157674_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home157668_))
                           (_include-gambit-sharp157676_
                            (string-append
                             '"(include \""
                             _gambit-sharp157674_
                             '"\")"))
                           (_bin-scm157678_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157652_)))
                           (_deps157680_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157652_)))
                           (_deps157682_
                            (map gxc#find-static-module-file _deps157680_))
                           (_deps157687_
                            (let ((__tmp158223
                                   (lambda (_$obj157684_)
                                     (let ((__tmp158224
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj157684_))))
                                       (declare (not safe))
                                       (not __tmp158224)))))
                              (declare (not safe))
                              (filter __tmp158223 _deps157682_)))
                           (_deps157691_
                            (let ((__tmp158225
                                   (lambda (_f157689_)
                                     (let ((__tmp158226
                                            (member _f157689_
                                                    _runtime157672_)))
                                       (declare (not safe))
                                       (not __tmp158226)))))
                              (declare (not safe))
                              (filter __tmp158225 _deps157687_)))
                           (_output-base157693_
                            (string-append
                             (path-strip-extension _output-scm157665_)))
                           (_output-c157695_
                            (string-append _output-base157693_ '".c"))
                           (_output-o157697_
                            (string-append _output-base157693_ '".o"))
                           (_output-c_157699_
                            (string-append _output-base157693_ '"_.c"))
                           (_output-o_157701_
                            (string-append _output-base157693_ '"_.o"))
                           (_gsc-link-opts157703_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157705_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157707_
                            (let ((__tmp158227
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir157670_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp158227)))
                           (_output-ld-opts157709_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157711_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp158229
                                       (let ((__tmp158230
                                              (let ((__tmp158231
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp157676_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp158231))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp158230))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158229))
                                (let ((__tmp158228
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp157676_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158228))))
                           (_gsc-link-opts157713_
                            (append _gsc-link-opts157703_
                                    _gsc-gx-macros157711_))
                           (_rpath157715_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157670_)))
                           (_default-ld-options157717_
                            (let ((__tmp158232
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp158232))))
                      (let ((__tmp158233
                             (lambda ()
                               (let ((__tmp158234
                                      (path-directory _output-bin157666_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158234)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158233))
                      (let ((__tmp158235
                             (lambda ()
                               (let ((__tmp158236
                                      (let ((__tmp158237
                                             (let ((__tmp158238
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm157678_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp158238
                                                       _deps157691_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp158237
                                                _runtime157672_))))
                                 (declare (not safe))
                                 (_generate-stub157656_ __tmp158236)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157665_
                         __tmp158235))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158244
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158239
                                   (let ((__tmp158240
                                          (let ((__tmp158241
                                                 (let ((__tmp158242
                                                        (let ((__tmp158243
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm157665_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp158243 _gsc-link-opts157713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_157699_
                                                         __tmp158242))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp158241))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158240))))
                              (declare (not safe))
                              (gxc#invoke __tmp158244 __tmp158239))
                            (let ((__tmp158250
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158245
                                   (let ((__tmp158246
                                          (let ((__tmp158247
                                                 (let ((__tmp158248
                                                        (let ((__tmp158249
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_157699_ '()))))
                  (declare (not safe))
                  (cons _output-c157695_ __tmp158249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158248
                                                           _gsc-static-opts157707_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158247
                                                    _gsc-cc-opts157705_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158246))))
                              (declare (not safe))
                              (gxc#invoke __tmp158250 __tmp158245))
                            (let ((__tmp158260
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158251
                                   (let ((__tmp158252
                                          (let ((__tmp158253
                                                 (let ((__tmp158254
                                                        (let ((__tmp158255
                                                               (let ((__tmp158256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158257
                                     (let ((__tmp158258
                                            (let ((__tmp158259
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options157717_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir157670_
                                                    __tmp158259))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp158258))))
                                (declare (not safe))
                                (cons _rpath157715_ __tmp158257))))
                         (declare (not safe))
                         (foldr1 cons __tmp158256 _output-ld-opts157709_))))
                  (declare (not safe))
                  (cons _output-o_157701_ __tmp158255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o157697_
                                                         __tmp158254))))
                                            (declare (not safe))
                                            (cons _output-bin157666_
                                                  __tmp158253))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158252))))
                              (declare (not safe))
                              (gxc#invoke __tmp158260 __tmp158251)))
                          '#!void)))))
          (let* ((_output-bin157660_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157652_ _opts157653_)))
                 (_output-scm157662_
                  (string-append _output-bin157660_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157658_ _output-scm157662_ _output-bin157660_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157662_))))))
    (define gxc#find-export-binding
      (lambda (_ctx157602_ _id157603_)
        (let ((_$e157649_
               (let ((__tmp158262
                      (lambda (_e157604157606_)
                        (let* ((_g157608157618_ _e157604157606_)
                               (_else157610157626_ (lambda () '#f))
                               (_K157612157630_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g157608157618_
                                 'gx#module-export::t))
                              (let* ((_e157613157633_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157608157618_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e157614157636_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157608157618_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e157615157639_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157608157618_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e157615157639_ '0))
                                    (let ((_e157616157642_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g157608157618_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g157644157646_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g157644157646_
                                                    _id157603_)))
                                           _e157616157642_)
                                          (let ()
                                            (declare (not safe))
                                            (_K157612157630_))
                                          (let ()
                                            (declare (not safe))
                                            (_else157610157626_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else157610157626_))))
                              (let ()
                                (declare (not safe))
                                (_else157610157626_))))))
                     (__tmp158261
                      (##structure-ref
                       _ctx157602_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp158262 __tmp158261))))
          (if _$e157649_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e157649_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx157594_ _id157595_)
        (let ((_$e157597_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx157594_ _id157595_))))
          (if _$e157597_
              ((lambda (_bind157600_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind157600_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id157595_)))
                 (##structure-ref _bind157600_ '1 gx#binding::t '#f))
               _$e157597_)
              (let ((__tmp158263
                     (##structure-ref
                      _ctx157594_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp158263
                 _id157595_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157481_)
        (letrec* ((_ht157483_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template157484_
                   (lambda (_in157546_ _phi157547_)
                     (let ((_iphi157549_
                            (fx+ _phi157547_
                                 (##direct-structure-ref
                                  _in157546_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports157550_
                            (##structure-ref
                             (##direct-structure-ref
                              _in157546_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp157552_ ((_rest157554_ _imports157550_)
                                        (_r157555_ '()))
                         (let* ((_rest157556157564_ _rest157554_)
                                (_else157558157572_ (lambda () _r157555_))
                                (_K157560157582_
                                 (lambda (_rest157575_ _in157576_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in157576_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi157549_))
                                           (let ((__tmp158270
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in157576_
                                                          _r157555_))))
                                             (declare (not safe))
                                             (_lp157552_
                                              _rest157575_
                                              __tmp158270))
                                           (let ()
                                             (declare (not safe))
                                             (_lp157552_
                                              _rest157575_
                                              _r157555_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in157576_
                                              'gx#module-import::t))
                                           (let ((_iphi157578_
                                                  (fx+ _phi157547_
                                                       (##direct-structure-ref
                                                        _in157576_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi157578_))
                                                 (let ((__tmp158268
                                                        (let ((__tmp158269
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in157576_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp158269 _r157555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp157552_
                                                    _rest157575_
                                                    __tmp158268))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp157552_
                                                    _rest157575_
                                                    _r157555_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in157576_
                                                  'gx#import-set::t))
                                               (let ((_xphi157580_
                                                      (fx+ _iphi157549_
                                                           (##direct-structure-ref
                                                            _in157576_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi157580_))
                                                     (let ((__tmp158266
                                                            (let ((__tmp158267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in157576_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp158267 _r157555_))))
               (declare (not safe))
               (_lp157552_ _rest157575_ __tmp158266))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi157580_)
                                                         (let ((__tmp158264
                                                                (let ((__tmp158265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template157484_
                                  _in157576_
                                  _iphi157549_))))
                          (declare (not safe))
                          (foldl1 cons _r157555_ __tmp158265))))
                   (declare (not safe))
                   (_lp157552_ _rest157575_ __tmp158264))
                 (let ()
                   (declare (not safe))
                   (_lp157552_ _rest157575_ _r157555_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp157552_
                                                  _rest157575_
                                                  _r157555_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest157556157564_))
                               (let ((_hd157561157585_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest157556157564_)))
                                     (_tl157562157587_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest157556157564_))))
                                 (let* ((_in157590_ _hd157561157585_)
                                        (_rest157592_ _tl157562157587_))
                                   (declare (not safe))
                                   (_K157560157582_ _rest157592_ _in157590_)))
                               (let ()
                                 (declare (not safe))
                                 (_else157558157572_))))))))
                  (_find-deps157485_
                   (lambda (_rest157492_ _deps157493_)
                     (let* ((_rest157494157502_ _rest157492_)
                            (_else157496157510_ (lambda () _deps157493_))
                            (_K157498157534_
                             (lambda (_rest157513_ _hd157514_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd157514_
                                      'gx#module-context::t))
                                   (let ((_id157516_
                                          (##structure-ref
                                           _hd157514_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports157517_
                                          (##structure-ref
                                           _hd157514_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht157483_ _id157516_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps157485_
                                            _rest157513_
                                            _deps157493_))
                                         (let ((_$e157519_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd157514_))))
                                           (if _$e157519_
                                               ((lambda (_pre157522_)
                                                  (let ((_xdeps157524_
                                                         (let ((__tmp158283
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre157522_ _imports157517_))))
                   (declare (not safe))
                   (_find-deps157485_ __tmp158283 _deps157493_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht157483_
                                                       _id157516_
                                                       _hd157514_))
                                                    (let ((__tmp158284
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd157514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps157524_))))
              (declare (not safe))
              (_find-deps157485_ _rest157513_ __tmp158284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e157519_)
                                               (let ((_xdeps157526_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps157485_
                                                         _imports157517_
                                                         _deps157493_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht157483_
                                                    _id157516_
                                                    _hd157514_))
                                                 (let ((__tmp158282
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd157514_
                                                                _xdeps157526_))))
                                                   (declare (not safe))
                                                   (_find-deps157485_
                                                    _rest157513_
                                                    __tmp158282)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd157514_
                                          'gx#prelude-context::t))
                                       (let ((_id157528_
                                              (##structure-ref
                                               _hd157514_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht157483_
                                                _id157528_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps157485_
                                                _rest157513_
                                                _deps157493_))
                                             (let ((_xdeps157530_
                                                    (let ((__tmp158280
                                                           (##structure-ref
                                                            _hd157514_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps157485_
                                                       __tmp158280
                                                       _deps157493_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht157483_
                                                      _id157528_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps157485_
                                                      _rest157513_
                                                      _xdeps157530_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht157483_
                                                        _id157528_
                                                        _hd157514_))
                                                     (let ((__tmp158281
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd157514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps157530_))))
               (declare (not safe))
               (_find-deps157485_ _rest157513_ __tmp158281)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd157514_
                                              'gx#module-import::t))
                                           (if (let ((__tmp158279
                                                      (##direct-structure-ref
                                                       _hd157514_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp158279))
                                               (let ((__tmp158277
                                                      (let ((__tmp158278
                                                             (##direct-structure-ref
                                                              _hd157514_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158278
                                                              _rest157513_))))
                                                 (declare (not safe))
                                                 (_find-deps157485_
                                                  __tmp158277
                                                  _deps157493_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps157485_
                                                  _rest157513_
                                                  _deps157493_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd157514_
                                                  'gx#module-export::t))
                                               (let ((__tmp158275
                                                      (let ((__tmp158276
                                                             (##direct-structure-ref
                                                              _hd157514_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158276
                                                              _rest157513_))))
                                                 (declare (not safe))
                                                 (_find-deps157485_
                                                  __tmp158275
                                                  _deps157493_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd157514_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp158274
                                                              (##direct-structure-ref
                                                               _hd157514_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp158274))
                                                       (let ((__tmp158272
                                                              (let ((__tmp158273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd157514_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp158273 _rest157513_))))
                 (declare (not safe))
                 (_find-deps157485_ __tmp158272 _deps157493_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd157514_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps157532_
                           (let ()
                             (declare (not safe))
                             (_import-set-template157484_ _hd157514_ '0)))
                          (__tmp158271
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest157513_ _xdeps157532_))))
                     (declare (not safe))
                     (_find-deps157485_ __tmp158271 _deps157493_))
                   (let ()
                     (declare (not safe))
                     (_find-deps157485_ _rest157513_ _deps157493_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd157514_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest157494157502_))
                           (let ((_hd157499157537_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest157494157502_)))
                                 (_tl157500157539_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest157494157502_))))
                             (let* ((_hd157542_ _hd157499157537_)
                                    (_rest157544_ _tl157500157539_))
                               (declare (not safe))
                               (_K157498157534_ _rest157544_ _hd157542_)))
                           (let ()
                             (declare (not safe))
                             (_else157496157510_)))))))
          (reverse (let ((__tmp158285
                          (let ((__tmp158286
                                 (let ((_$e157487_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx157481_))))
                                   (if _$e157487_
                                       ((lambda (_pre157490_)
                                          (let ((__tmp158287
                                                 (##structure-ref
                                                  _ctx157481_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre157490_ __tmp158287)))
                                        _$e157487_)
                                       (##structure-ref
                                        _ctx157481_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps157485_ __tmp158286 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp158285))))))
    (define gxc#find-static-module-file
      (lambda (_ctx157412_)
        (let* ((_context-id157414_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx157412_
                       'gx#module-context::t))
                    (##structure-ref _ctx157412_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx157412_)))
               (_scm157416_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id157414_))
                 '".scm"))
               (_dirs157418_ (gx#current-expander-module-library-path))
               (_dirs157424_
                (let ((_user-libpath157420_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath157420_
                      (let ((_user-libpath157422_
                             (path-expand '"lib" _user-libpath157420_)))
                        (if (member _user-libpath157422_ _dirs157418_)
                            _dirs157418_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath157422_ _dirs157418_))))
                      _dirs157418_)))
               (_dirs157433_
                (let ((_$e157426_ (gxc#current-compile-output-dir)))
                  (if _$e157426_
                      ((lambda (_g157428157430_)
                         (let ()
                           (declare (not safe))
                           (cons _g157428157430_ _dirs157424_)))
                       _$e157426_)
                      _dirs157424_)))
               (_dirs157439_
                (map (lambda (_g157434157436_)
                       (path-expand '"static" _g157434157436_))
                     _dirs157433_)))
          (let _lp157442_ ((_rest157444_ _dirs157439_))
            (let* ((_rest157445157453_ _rest157444_)
                   (_else157447157461_
                    (lambda ()
                      (let ((__tmp158288
                             (##structure-ref
                              _ctx157412_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp158288
                         _scm157416_))))
                   (_K157449157469_
                    (lambda (_rest157464_ _dir157465_)
                      (let ((_path157467_
                             (path-expand _scm157416_ _dir157465_)))
                        (if (file-exists? _path157467_)
                            _path157467_
                            (let ()
                              (declare (not safe))
                              (_lp157442_ _rest157464_)))))))
              (if (let () (declare (not safe)) (##pair? _rest157445157453_))
                  (let ((_hd157450157472_
                         (let ()
                           (declare (not safe))
                           (##car _rest157445157453_)))
                        (_tl157451157474_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157445157453_))))
                    (let* ((_dir157477_ _hd157450157472_)
                           (_rest157479_ _tl157451157474_))
                      (declare (not safe))
                      (_K157449157469_ _rest157479_ _dir157477_)))
                  (let () (declare (not safe)) (_else157447157461_))))))))
    (define gxc#file-empty?
      (lambda (_path157410_)
        (let ((__tmp158289 (file-info-size (file-info _path157410_ '#t))))
          (declare (not safe))
          (zero? __tmp158289))))
    (define gxc#compile-top-module
      (lambda (_ctx157399_)
        (let ((__tmp158293
               (lambda ()
                 (let ((__tmp158294
                        (##structure-ref
                         _ctx157399_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp158294))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp158295
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx157399_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp158295))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx157399_))
                 (if (let ((__tmp158298
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx157399_))))
                       (declare (not safe))
                       (null? __tmp158298))
                     (let* ((_thr1157404_
                             (let ((__tmp158296
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx157399_)))))
                               (declare (not safe))
                               (spawn __tmp158296)))
                            (_thr2157407_
                             (let ((__tmp158297
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx157399_)))))
                               (declare (not safe))
                               (spawn __tmp158297))))
                       (let () (declare (not safe)) (gxc#join! _thr1157404_))
                       (let () (declare (not safe)) (gxc#join! _thr2157407_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx157399_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx157399_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx157399_))
                     '#!void)))
              (__tmp158292
               (let ((__obj158097
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj158097)
                 __obj158097))
              (__tmp158291 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158290 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp158293
           gx#current-expander-context
           _ctx157399_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp158292
           gxc#current-compile-runtime-sections
           __tmp158291
           gxc#current-compile-runtime-names
           __tmp158290))))
    (define gxc#collect-bindings
      (lambda (_ctx157397_)
        (let ((__tmp158299
               (##structure-ref _ctx157397_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp158299))))
    (define gxc#compile-runtime-code
      (lambda (_ctx157343_)
        (letrec ((_compile1157345_
                  (lambda (_ctx157386_)
                    (let* ((_code157388_
                            (##structure-ref
                             _ctx157386_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt157392_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code157388_))
                                (let ((_idstr157390_
                                       (let ((__tmp158300
                                              (##structure-ref
                                               _ctx157386_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp158300))))
                                  (string-append _idstr157390_ '"__0"))
                                '#f)))
                      (if _rt157392_
                          (begin
                            (let ((__tmp158301
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp158301 _ctx157386_ _rt157392_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code157347_
                               _ctx157386_
                               _code157388_)))
                          (let ((_path157395_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx157386_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path157395_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code157348_
                         _ctx157386_
                         _code157388_
                         _rt157392_)))))
                 (_context-timestamp157346_
                  (lambda (_ctx157384_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx157384_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code157347_
                  (lambda (_ctx157366_ _code157367_)
                    (let* ((_lifts157369_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code157372_
                            (let ((__tmp158304
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code157367_))))
                                  (__tmp158303
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp158302
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158304
                               gx#current-expander-context
                               _ctx157366_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts157369_
                               gxc#current-compile-marks
                               __tmp158303
                               gxc#current-compile-identifiers
                               __tmp158302)))
                           (_runtime-code157374_
                            (if (let ((__tmp158308 (unbox _lifts157369_)))
                                  (declare (not safe))
                                  (null? __tmp158308))
                                _runtime-code157372_
                                (let ((__tmp158305
                                       (let ((__tmp158307
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code157372_
                                                      '())))
                                             (__tmp158306
                                              (reverse (unbox _lifts157369_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp158307
                                                 __tmp158306))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158305))))
                           (_runtime-code157376_
                            (let ((__tmp158309
                                   (let ((__tmp158311
                                          (let ((__tmp158312
                                                 (let ((__tmp158315
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp157346_
                                                           _ctx157366_)))
                                                       (__tmp158313
                                                        (let ((__tmp158314
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp158314
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp158315
                                                         __tmp158313))))
                                            (declare (not safe))
                                            (cons 'define __tmp158312)))
                                         (__tmp158310
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code157374_ '()))))
                                     (declare (not safe))
                                     (cons __tmp158311 __tmp158310))))
                              (declare (not safe))
                              (cons 'begin __tmp158309)))
                           (_scm0157378_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157366_
                               '0
                               '".scm"))))
                      (let ((_scms157381_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx157366_))))
                        (let ((__tmp158316
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0157378_
                                    _runtime-code157376_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp158316
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms157381_)
                            (delete-file _scms157381_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0157378_
                           '" => "
                           _scms157381_))
                        (copy-file _scm0157378_ _scms157381_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0157378_))))))
                 (_generate-loader-code157348_
                  (lambda (_ctx157355_ _code157356_ _rt157357_)
                    (let* ((_loader-code157360_
                            (let ((__tmp158317
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code157356_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158317
                               gx#current-expander-context
                               _ctx157355_)))
                           (_loader-code157362_
                            (if _rt157357_
                                (let ((__tmp158318
                                       (let ((__tmp158319
                                              (let ((__tmp158320
                                                     (let ((__tmp158321
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt157357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp158321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158320 '()))))
                                         (declare (not safe))
                                         (cons _loader-code157360_
                                               __tmp158319))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158318))
                                _loader-code157360_)))
                      (let ((__tmp158322
                             (lambda ()
                               (let ((__tmp158323
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157355_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp158323
                                  _loader-code157362_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp158322
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules157350_
                 (let ((__tmp158324
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx157343_))))
                   (declare (not safe))
                   (cons _ctx157343_ __tmp158324))))
            (for-each
             (lambda (_ctx157352_)
               (let ((__tmp158325
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1157345_ _ctx157352_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp158325
                  gxc#current-compile-decls
                  '())))
             _all-modules157350_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx157240_)
        (letrec ((_compile-ssi157242_
                  (lambda (_code157313_)
                    (let* ((_path157315_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157240_
                               '#f
                               '".ssi")))
                           (_prelude157326_
                            (let* ((_super157317_
                                    (##structure-ref
                                     _ctx157240_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e157319_
                                    (##structure-ref
                                     _super157317_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e157319_
                                  ((lambda (_g157321157323_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g157321157323_)))
                                   _$e157319_)
                                  ':<root>)))
                           (_ns157328_
                            (##structure-ref
                             _ctx157240_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr157330_
                            (symbol->string
                             (##structure-ref
                              _ctx157240_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg157337_
                            (let ((_$e157332_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr157330_ '#\/))))
                              (if _$e157332_
                                  ((lambda (_x157335_)
                                     (string->symbol
                                      (substring _idstr157330_ '0 _x157335_)))
                                   _$e157332_)
                                  '#f)))
                           (_rt157339_
                            (let ((__tmp158326
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp158326 _ctx157240_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path157315_))
                      (let ((__tmp158327
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude157326_))
                               (if _pkg157337_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg157337_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns157328_))
                               (newline)
                               (pretty-print _code157313_)
                               (if _rt157339_
                                   (pretty-print
                                    (let ((__tmp158328
                                           (let ((__tmp158332
                                                  (let ((__tmp158333
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp158333)))
                                                 (__tmp158329
                                                  (let ((__tmp158330
                                                         (let ((__tmp158331
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt157339_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp158331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158330 '()))))
                                             (declare (not safe))
                                             (cons __tmp158332 __tmp158329))))
                                      (declare (not safe))
                                      (cons '%#call __tmp158328)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path157315_
                         __tmp158327)))))
                 (_compile-phi157243_
                  (lambda (_part157253_)
                    (let* ((_part157254157267_ _part157253_)
                           (_E157256157271_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part157254157267_))))
                           (_K157257157282_
                            (lambda (_code157274_
                                     _n157275_
                                     _phi157276_
                                     _phi-ctx157277_)
                              (let* ((_code157280_
                                      (let ((__tmp158334
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code157274_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp158334
                                         gx#current-expander-context
                                         _phi-ctx157277_
                                         gx#current-expander-phi
                                         _phi157276_)))
                                     (__tmp158335
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157240_
                                         _n157275_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp158335
                                 _code157280_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part157254157267_))
                          (let ((_hd157258157285_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part157254157267_)))
                                (_tl157259157287_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part157254157267_))))
                            (let ((_phi-ctx157290_ _hd157258157285_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl157259157287_))
                                  (let ((_hd157260157292_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl157259157287_)))
                                        (_tl157261157294_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl157259157287_))))
                                    (let ((_phi157297_ _hd157260157292_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl157261157294_))
                                          (let ((_hd157262157299_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl157261157294_)))
                                                (_tl157263157301_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl157261157294_))))
                                            (let ((_n157304_ _hd157262157299_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl157263157301_))
                                                  (let ((_hd157264157306_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl157263157301_)))
                                                        (_tl157265157308_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl157263157301_))))
                                                    (let ((_code157311_
                                                           _hd157264157306_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl157265157308_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K157257157282_
                                                             _code157311_
                                                             _n157304_
                                                             _phi157297_
                                                             _phi-ctx157290_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E157256157271_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E157256157271_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E157256157271_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E157256157271_)))))
                          (let () (declare (not safe)) (_E157256157271_)))))))
          (let ((_g158336_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx157240_))))
            (begin
              (let ((_g158337_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g158336_)
                           (##vector-length _g158336_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g158337_ 2)))
                    (error "Context expects 2 values" _g158337_)))
              (let ((_ssi-code157245_
                     (let () (declare (not safe)) (##vector-ref _g158336_ 0)))
                    (_phi-code157246_
                     (let () (declare (not safe)) (##vector-ref _g158336_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi157242_ _ssi-code157245_))
                  (let ((_threads157251_
                         (map (lambda (_code157248_)
                                (let ((__tmp158338
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi157243_
                                            _code157248_)))))
                                  (declare (not safe))
                                  (spawn __tmp158338)))
                              _phi-code157246_)))
                    (for-each gxc#join! _threads157251_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx157223_)
        (let* ((_path157225_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx157223_ '#f '".ssxi.ss")))
               (_code157227_
                (let ((__tmp158339
                       (##structure-ref
                        _ctx157223_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp158339)))
               (_idstr157229_
                (symbol->string
                 (##structure-ref _ctx157223_ '1 gx#expander-context::t '#f)))
               (_pkg157236_
                (let ((_$e157231_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr157229_ '#\/))))
                  (if _$e157231_
                      ((lambda (_x157234_)
                         (string->symbol
                          (substring _idstr157229_ '0 _x157234_)))
                       _$e157231_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path157225_))
          (let ((__tmp158340
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg157236_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg157236_))
                       '#!void)
                   (newline)
                   (pretty-print _code157227_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path157225_ __tmp158340)))))
    (define gxc#generate-meta-code
      (lambda (_ctx157216_)
        (let* ((_state157218_
                (let ((__obj158098
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj158098 _ctx157216_)
                  __obj158098))
               (_ssi-code157220_
                (let ((__tmp158341
                       (##structure-ref
                        _ctx157216_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp158341 _state157218_))))
          (values _ssi-code157220_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state157218_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx157209_)
        (let ((_lifts157211_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158344
                 (lambda ()
                   (let ((_code157214_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx157209_))))
                     (if (let ((__tmp158348 (unbox _lifts157211_)))
                           (declare (not safe))
                           (null? __tmp158348))
                         _code157214_
                         (let ((__tmp158345
                                (let ((__tmp158347
                                       (let ()
                                         (declare (not safe))
                                         (cons _code157214_ '())))
                                      (__tmp158346
                                       (reverse (unbox _lifts157211_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp158347 __tmp158346))))
                           (declare (not safe))
                           (cons 'begin __tmp158345))))))
                (__tmp158343
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp158342
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp158344
             gxc#current-compile-lift
             _lifts157211_
             gxc#current-compile-marks
             __tmp158343
             gxc#current-compile-identifiers
             __tmp158342)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx157205_)
        (let ((_modules157207_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158349
                 (##structure-ref _ctx157205_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp158349 _modules157207_))
          (reverse (unbox _modules157207_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path157188_ _code157189_ _phi?157190_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path157188_))
        (let ((__tmp158350
               (lambda ()
                 (pretty-print
                  (let ((__tmp158351
                         (let ((__tmp158358
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp158352
                                (let ((__tmp158357
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp158353
                                       (let ((__tmp158356
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp158354
                                              (let ((__tmp158355
                                                     (if _phi?157190_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp158355))))
                                         (declare (not safe))
                                         (cons __tmp158356 __tmp158354))))
                                  (declare (not safe))
                                  (cons __tmp158357 __tmp158353))))
                           (declare (not safe))
                           (cons __tmp158358 __tmp158352))))
                    (declare (not safe))
                    (cons 'declare __tmp158351)))
                 (pretty-print _code157189_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path157188_ __tmp158350))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path157188_ _phi?157190_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path157188_))))
    (define gxc#compile-scm-file__0
      (lambda (_path157196_ _code157197_)
        (let ((_phi?157199_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path157196_ _code157197_ _phi?157199_))))
    (define gxc#compile-scm-file
      (lambda _g158360_
        (let ((_g158359_ (let () (declare (not safe)) (##length _g158360_))))
          (cond ((let () (declare (not safe)) (##fx= _g158359_ 2))
                 (apply (lambda (_path157196_ _code157197_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path157196_
                             _code157197_)))
                        _g158360_))
                ((let () (declare (not safe)) (##fx= _g158359_ 3))
                 (apply (lambda (_path157201_ _code157202_ _phi?157203_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path157201_
                             _code157202_
                             _phi?157203_)))
                        _g158360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g158360_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?157089_)
        (let _lp157091_ ((_rest157093_ (gxc#current-compile-gsc-options))
                         (_opts157094_ '()))
          (let* ((_rest157095157115_ _rest157093_)
                 (_else157099157123_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157089_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158361
                               (let ((__tmp158362 (reverse _opts157094_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp158362))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp158361))
                        (reverse _opts157094_)))))
            (let ((_K157109157166_
                   (lambda (_rest157164_)
                     (let ()
                       (declare (not safe))
                       (_lp157091_ _rest157164_ _opts157094_))))
                  (_K157104157148_
                   (lambda (_rest157146_)
                     (let ()
                       (declare (not safe))
                       (_lp157091_ _rest157146_ _opts157094_))))
                  (_K157101157130_
                   (lambda (_rest157127_ _opt157128_)
                     (let ((__tmp158363
                            (let ()
                              (declare (not safe))
                              (cons _opt157128_ _opts157094_))))
                       (declare (not safe))
                       (_lp157091_ _rest157127_ __tmp158363)))))
              (if (let () (declare (not safe)) (##pair? _rest157095157115_))
                  (let ((_tl157111157171_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157095157115_)))
                        (_hd157110157169_
                         (let ()
                           (declare (not safe))
                           (##car _rest157095157115_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157110157169_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157111157171_))
                            (let* ((_tl157113157174_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157111157171_)))
                                   (_rest157177_ _tl157113157174_))
                              (declare (not safe))
                              (_K157109157166_ _rest157177_))
                            (let ((_opt157138_ _hd157110157169_)
                                  (_rest157140_ _tl157111157171_))
                              (let ()
                                (declare (not safe))
                                (_K157101157130_ _rest157140_ _opt157138_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157110157169_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157111157171_))
                                (let* ((_tl157108157156_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157111157171_)))
                                       (_rest157159_ _tl157108157156_))
                                  (declare (not safe))
                                  (_K157104157148_ _rest157159_))
                                (let ((_opt157138_ _hd157110157169_)
                                      (_rest157140_ _tl157111157171_))
                                  (let ()
                                    (declare (not safe))
                                    (_K157101157130_
                                     _rest157140_
                                     _opt157138_))))
                            (let ((_opt157138_ _hd157110157169_)
                                  (_rest157140_ _tl157111157171_))
                              (let ()
                                (declare (not safe))
                                (_K157101157130_ _rest157140_ _opt157138_))))))
                  (let () (declare (not safe)) (_else157099157123_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?157183_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?157183_))))
    (define gxc#gsc-link-options
      (lambda _g158365_
        (let ((_g158364_ (let () (declare (not safe)) (##length _g158365_))))
          (cond ((let () (declare (not safe)) (##fx= _g158364_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g158365_))
                ((let () (declare (not safe)) (##fx= _g158364_ 1))
                 (apply (lambda (_phi?157185_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?157185_)))
                        _g158365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g158365_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?156990_)
        (let _lp156992_ ((_rest156994_ (gxc#current-compile-gsc-options))
                         (_opts156995_ '()))
          (let* ((_rest156996157016_ _rest156994_)
                 (_else157000157024_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156990_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158366
                               (let ((__tmp158367 (reverse _opts156995_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp158367))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp158366))
                        (reverse _opts156995_)))))
            (let ((_K157010157063_
                   (lambda (_rest157060_ _opt157061_)
                     (let ((__tmp158368
                            (let ((__tmp158369
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts156995_))))
                              (declare (not safe))
                              (cons _opt157061_ __tmp158369))))
                       (declare (not safe))
                       (_lp156992_ _rest157060_ __tmp158368))))
                  (_K157005157044_
                   (lambda (_rest157042_)
                     (let ()
                       (declare (not safe))
                       (_lp156992_ _rest157042_ _opts156995_))))
                  (_K157002157030_
                   (lambda (_rest157028_)
                     (let ()
                       (declare (not safe))
                       (_lp156992_ _rest157028_ _opts156995_)))))
              (if (let () (declare (not safe)) (##pair? _rest156996157016_))
                  (let ((_tl157012157068_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156996157016_)))
                        (_hd157011157066_
                         (let ()
                           (declare (not safe))
                           (##car _rest156996157016_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157011157066_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157012157068_))
                            (let ((_tl157014157073_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl157012157068_)))
                                  (_hd157013157071_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl157012157068_))))
                              (let ((_opt157076_ _hd157013157071_)
                                    (_rest157078_ _tl157014157073_))
                                (let ()
                                  (declare (not safe))
                                  (_K157010157063_ _rest157078_ _opt157076_))))
                            (let ((_rest157036_ _tl157012157068_))
                              (declare (not safe))
                              (_K157002157030_ _rest157036_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157011157066_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157012157068_))
                                (let* ((_tl157009157052_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157012157068_)))
                                       (_rest157055_ _tl157009157052_))
                                  (declare (not safe))
                                  (_K157005157044_ _rest157055_))
                                (let ((_rest157036_ _tl157012157068_))
                                  (declare (not safe))
                                  (_K157002157030_ _rest157036_)))
                            (let ((_rest157036_ _tl157012157068_))
                              (declare (not safe))
                              (_K157002157030_ _rest157036_)))))
                  (let () (declare (not safe)) (_else157000157024_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?157084_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?157084_))))
    (define gxc#gsc-cc-options
      (lambda _g158371_
        (let ((_g158370_ (let () (declare (not safe)) (##length _g158371_))))
          (cond ((let () (declare (not safe)) (##fx= _g158370_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g158371_))
                ((let () (declare (not safe)) (##fx= _g158370_ 1))
                 (apply (lambda (_phi?157086_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?157086_)))
                        _g158371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g158371_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156985_)
        (let* ((_user-staticdir156987_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp158372
                (let ((__tmp158373
                       (string-append
                        '"-I "
                        _staticdir156985_
                        '" -I "
                        _user-staticdir156987_)))
                  (declare (not safe))
                  (cons __tmp158373 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp158372))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156897_ ((_rest156899_ (gxc#current-compile-gsc-options))
                         (_opts156900_ '()))
          (let* ((_rest156901156921_ _rest156899_)
                 (_else156905156929_ (lambda () _opts156900_)))
            (let ((_K156915156972_
                   (lambda (_rest156970_)
                     (let ()
                       (declare (not safe))
                       (_lp156897_ _rest156970_ _opts156900_))))
                  (_K156910156950_
                   (lambda (_rest156947_ _opt156948_)
                     (let ((__tmp158374
                            (append _opts156900_
                                    (let ((__tmp158375
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt156948_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp158375)))))
                       (declare (not safe))
                       (_lp156897_ _rest156947_ __tmp158374))))
                  (_K156907156935_
                   (lambda (_rest156933_)
                     (let ()
                       (declare (not safe))
                       (_lp156897_ _rest156933_ _opts156900_)))))
              (if (let () (declare (not safe)) (##pair? _rest156901156921_))
                  (let ((_tl156917156977_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156901156921_)))
                        (_hd156916156975_
                         (let ()
                           (declare (not safe))
                           (##car _rest156901156921_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156916156975_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156917156977_))
                            (let* ((_tl156919156980_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156917156977_)))
                                   (_rest156983_ _tl156919156980_))
                              (declare (not safe))
                              (_K156915156972_ _rest156983_))
                            (let ((_rest156941_ _tl156917156977_))
                              (declare (not safe))
                              (_K156907156935_ _rest156941_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156916156975_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156917156977_))
                                (let ((_tl156914156960_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156917156977_)))
                                      (_hd156913156958_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156917156977_))))
                                  (let ((_opt156963_ _hd156913156958_)
                                        (_rest156965_ _tl156914156960_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156910156950_
                                       _rest156965_
                                       _opt156963_))))
                                (let ((_rest156941_ _tl156917156977_))
                                  (declare (not safe))
                                  (_K156907156935_ _rest156941_)))
                            (let ((_rest156941_ _tl156917156977_))
                              (declare (not safe))
                              (_K156907156935_ _rest156941_)))))
                  (let () (declare (not safe)) (_else156905156929_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156894_)
        (let ((__tmp158376
               (let () (declare (not safe)) (string-empty? _str156894_))))
          (declare (not safe))
          (not __tmp158376))))
    (define gxc#gsc-compile-file
      (lambda (_path156862_ _phi?156863_)
        (letrec ((_gsc-link-path156865_
                  (lambda (_base-path156886_)
                    (let _lp156888_ ((_n156890_ '1))
                      (let ((_path156892_
                             (string-append
                              _base-path156886_
                              '".o"
                              (number->string _n156890_))))
                        (if (file-exists? _path156892_)
                            (let ((__tmp158377
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156890_ '1))))
                              (declare (not safe))
                              (_lp156888_ __tmp158377))
                            _path156892_))))))
          (let* ((_base-path156867_ (path-strip-extension _path156862_))
                 (_path-c156869_ (string-append _base-path156867_ '".c"))
                 (_path-o156871_ (string-append _base-path156867_ '".o"))
                 (_link-path156873_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156865_ _base-path156867_)))
                 (_link-path-c156875_ (string-append _link-path156873_ '".c"))
                 (_link-path-o156877_ (string-append _link-path156873_ '".o"))
                 (_gsc-link-opts156879_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156863_)))
                 (_gsc-cc-opts156881_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156863_)))
                 (_gcc-ld-opts156883_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp158384 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158378
                   (let ((__tmp158379
                          (let ((__tmp158380
                                 (let ((__tmp158381
                                        (let ((__tmp158382
                                               (let ((__tmp158383
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156862_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp158383
                                                         _gsc-link-opts156879_))))
                                          (declare (not safe))
                                          (cons _link-path-c156875_
                                                __tmp158382))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp158381))))
                            (declare (not safe))
                            (cons '"-flat" __tmp158380))))
                     (declare (not safe))
                     (cons '"-link" __tmp158379))))
              (declare (not safe))
              (gxc#invoke __tmp158384 __tmp158378 'stdout-redirection: '#t))
            (let ((__tmp158391 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158385
                   (let ((__tmp158386
                          (let ((__tmp158387
                                 (let ((__tmp158388
                                        (let ((__tmp158389
                                               (let ((__tmp158390
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156875_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156869_
                                                       __tmp158390))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp158389
                                                  _gsc-cc-opts156881_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp158388))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp158387))))
                     (declare (not safe))
                     (cons '"-obj" __tmp158386))))
              (declare (not safe))
              (gxc#invoke __tmp158391 __tmp158385 'stdout-redirection: '#t))
            (let ((__tmp158397 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp158392
                   (let ((__tmp158393
                          (let ((__tmp158394
                                 (let ((__tmp158395
                                        (let ((__tmp158396
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156877_
                                                       _gcc-ld-opts156883_))))
                                          (declare (not safe))
                                          (cons _path-o156871_ __tmp158396))))
                                   (declare (not safe))
                                   (cons _link-path156873_ __tmp158395))))
                            (declare (not safe))
                            (cons '"-o" __tmp158394))))
                     (declare (not safe))
                     (cons '"-shared" __tmp158393))))
              (declare (not safe))
              (gxc#invoke __tmp158397 __tmp158392))
            (for-each
             delete-file
             (let ((__tmp158398
                    (let ((__tmp158399
                           (let ((__tmp158400
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156877_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156875_ __tmp158400))))
                      (declare (not safe))
                      (cons _path-o156871_ __tmp158399))))
               (declare (not safe))
               (cons _path-c156869_ __tmp158398)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156833_ _n156834_ _ext156835_)
        (letrec ((_module-relative-path156837_
                  (lambda (_ctx156860_)
                    (path-strip-directory
                     (let ((__tmp158401
                            (##structure-ref
                             _ctx156860_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp158401)))))
                 (_module-source-directory156838_
                  (lambda (_ctx156856_)
                    (path-directory
                     (let ((_mpath156858_
                            (##structure-ref
                             _ctx156856_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156858_))
                           _mpath156858_
                           (let ()
                             (declare (not safe))
                             (last _mpath156858_)))))))
                 (_section-string156839_
                  (lambda (_n156854_)
                    (if (let () (declare (not safe)) (number? _n156854_))
                        (number->string _n156854_)
                        (if (let () (declare (not safe)) (symbol? _n156854_))
                            (symbol->string _n156854_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156854_))
                                _n156854_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156854_)))))))
                 (_file-name156840_
                  (lambda (_path156852_)
                    (if _n156834_
                        (string-append
                         _path156852_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156839_ _n156834_))
                         _ext156835_)
                        (string-append _path156852_ _ext156835_))))
                 (_file-path156841_
                  (lambda ()
                    (let ((_$e156847_ (gxc#current-compile-output-dir)))
                      (if _$e156847_
                          ((lambda (_outdir156850_)
                             (path-expand
                              (let ((__tmp158403
                                     (let ((__tmp158404
                                            (##structure-ref
                                             _ctx156833_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp158404))))
                                (declare (not safe))
                                (_file-name156840_ __tmp158403))
                              _outdir156850_))
                           _$e156847_)
                          (path-expand
                           (let ((__tmp158402
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156837_
                                     _ctx156833_))))
                             (declare (not safe))
                             (_file-name156840_ __tmp158402))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156838_
                              _ctx156833_))))))))
          (let ((_path156843_
                 (let () (declare (not safe)) (_file-path156841_))))
            (let ((__tmp158405
                   (lambda ()
                     (let ((__tmp158406 (path-directory _path156843_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158406)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158405))
            _path156843_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156815_)
        (letrec ((_file-name156817_
                  (lambda (_id156831_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156831_))
                     '".scm")))
                 (_file-path156818_
                  (lambda ()
                    (let* ((_file156824_
                            (let ((__tmp158407
                                   (##structure-ref
                                    _ctx156815_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156817_ __tmp158407)))
                           (_$e156826_ (gxc#current-compile-output-dir)))
                      (if _$e156826_
                          ((lambda (_outdir156829_)
                             (path-expand
                              _file156824_
                              (path-expand '"static" _outdir156829_)))
                           _$e156826_)
                          (path-expand _file156824_ '"static"))))))
          (let ((_path156820_
                 (let () (declare (not safe)) (_file-path156818_))))
            (let ((__tmp158408
                   (lambda ()
                     (let ((__tmp158409 (path-directory _path156820_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158409)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158408))
            _path156820_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156809_ _opts156810_)
        (let ((_$e156812_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156810_))))
          (if _$e156812_
              (values _$e156812_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156809_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156802_)
        (if (let () (declare (not safe)) (string? _idstr156802_))
            (let* ((_str156804_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156802_)))
                   (_strs156806_
                    (let ()
                      (declare (not safe))
                      (string-split _str156804_ '#\/))))
              (let () (declare (not safe)) (string-join _strs156806_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156802_))
                (let ((__tmp158410 (symbol->string _idstr156802_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp158410))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156802_))))))
    (define gxc#invoke__%
      (lambda (_g158411_
               _stdout-redirection156763156767_
               _stderr-redirection156764156769_
               _program156771_
               _args156772_)
        (let* ((_stdout-redirection156774_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection156763156767_ absent-value))
                    '#f
                    _stdout-redirection156763156767_))
               (_stderr-redirection156776_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection156764156769_ absent-value))
                    '#f
                    _stderr-redirection156764156769_)))
          (let ((__tmp158412
                 (let ()
                   (declare (not safe))
                   (cons _program156771_ _args156772_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp158412))
          (let* ((_proc156778_
                  (open-process
                   (let ((__tmp158413
                          (let ((__tmp158414
                                 (let ((__tmp158415
                                        (let ((__tmp158416
                                               (let ((__tmp158417
                                                      (let ((__tmp158418
                                                             (let ((__tmp158419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection156776_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp158419))))
                (declare (not safe))
                (cons _stdout-redirection156774_ __tmp158418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp158417))))
                                          (declare (not safe))
                                          (cons _args156772_ __tmp158416))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp158415))))
                            (declare (not safe))
                            (cons _program156771_ __tmp158414))))
                     (declare (not safe))
                     (cons 'path: __tmp158413))))
                 (_output156783_
                  (if (or _stdout-redirection156774_
                          _stderr-redirection156776_)
                      (read-line _proc156778_ '#f)
                      '#f)))
            (let ((_status156786_ (process-status _proc156778_)))
              (close-port _proc156778_)
              (if (let () (declare (not safe)) (zero? _status156786_))
                  '#!void
                  (begin
                    (display _output156783_)
                    (let ((__tmp158420
                           (let ()
                             (declare (not safe))
                             (cons _program156771_ _args156772_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp158420
                       _status156786_)))))))))
    (define gxc#invoke__@
      (lambda (_keys156762156791_ . _args156793_)
        (apply gxc#invoke__%
               _keys156762156791_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156762156791_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156762156791_
                  'stderr-redirection:
                  absent-value))
               _args156793_)))
    (define gxc#invoke
      (lambda _args156765156799_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156765156799_)))
    (define gxc#join!
      (lambda (_thread156756_)
        (let ((__tmp158422
               (lambda (_exn156758_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn156758_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn156758_)))
                     (raise _exn156758_))))
              (__tmp158421 (lambda () (thread-join! _thread156756_))))
          (declare (not safe))
          (with-catch __tmp158422 __tmp158421))))))
