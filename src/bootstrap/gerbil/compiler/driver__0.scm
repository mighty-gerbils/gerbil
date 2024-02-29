(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1709213456)
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
      (lambda (_path158025_ _fun158026_)
        (with-output-to-file
         (let ((__tmp158119
                (let ()
                  (declare (not safe))
                  (cons _path158025_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp158119))
         _fun158026_)))
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
      (lambda (_gerbil-libdir158020_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir158020_)))
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
      (lambda (_dir158018_) (delete-file-or-directory _dir158018_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157992_ _opts157993_)
        (if (let () (declare (not safe)) (string? _srcpath157992_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157992_)))
        (let ((_outdir157995_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157993_)))
              (_invoke-gsc?157996_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157993_)))
              (_gsc-options157997_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157993_)))
              (_keep-scm?157998_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157993_)))
              (_verbosity157999_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157993_)))
              (_optimize158000_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157993_)))
              (_debug158001_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157993_)))
              (_gen-ssxi158002_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157993_))))
          (if _outdir157995_
              (let ((__tmp158120
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157995_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158120))
              '#!void)
          (if _optimize158000_
              (let ((__tmp158121
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158121))
              '#!void)
          (let ((__tmp158125
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157992_))
                   (let ((__tmp158126
                          (let ((__tmp158127
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157992_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158127))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp158126))))
                (__tmp158124
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158122
                 (let ((__tmp158123
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157992_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp158123))))
            (declare (not safe))
            (call-with-parameters
             __tmp158125
             gxc#current-compile-output-dir
             _outdir157995_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157996_
             gxc#current-compile-gsc-options
             _gsc-options157997_
             gxc#current-compile-keep-scm
             _keep-scm?157998_
             gxc#current-compile-verbose
             _verbosity157999_
             gxc#current-compile-optimize
             _optimize158000_
             gxc#current-compile-debug
             _debug158001_
             gxc#current-compile-generate-ssxi
             _gen-ssxi158002_
             gxc#current-compile-timestamp
             __tmp158124
             gxc#current-compile-context
             __tmp158122
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath158011_)
        (let ((_opts158013_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath158011_ _opts158013_))))
    (define gxc#compile-module
      (lambda _g158129_
        (let ((_g158128_ (let () (declare (not safe)) (##length _g158129_))))
          (cond ((let () (declare (not safe)) (##fx= _g158128_ 1))
                 (apply (lambda (_srcpath158011_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath158011_)))
                        _g158129_))
                ((let () (declare (not safe)) (##fx= _g158128_ 2))
                 (apply (lambda (_srcpath158015_ _opts158016_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath158015_
                             _opts158016_)))
                        _g158129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g158129_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157968_ _opts157969_)
        (if (let () (declare (not safe)) (string? _srcpath157968_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157968_)))
        (let ((_outdir157971_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157969_)))
              (_invoke-gsc?157972_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157969_)))
              (_gsc-options157973_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157969_)))
              (_keep-scm?157974_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157969_)))
              (_verbosity157975_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157969_)))
              (_debug157976_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157969_))))
          (if _outdir157971_
              (let ((__tmp158130
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157971_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158130))
              '#!void)
          (let ((__tmp158134
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157968_))
                   (let ((__tmp158135
                          (let ((__tmp158136
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157968_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158136))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp158135
                      _opts157969_))))
                (__tmp158133
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158131
                 (let ((__tmp158132
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157968_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp158132))))
            (declare (not safe))
            (call-with-parameters
             __tmp158134
             gxc#current-compile-output-dir
             _outdir157971_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157972_
             gxc#current-compile-gsc-options
             _gsc-options157973_
             gxc#current-compile-keep-scm
             _keep-scm?157974_
             gxc#current-compile-verbose
             _verbosity157975_
             gxc#current-compile-debug
             _debug157976_
             gxc#current-compile-timestamp
             __tmp158133
             gxc#current-compile-context
             __tmp158131
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157984_)
        (let ((_opts157986_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157984_ _opts157986_))))
    (define gxc#compile-exe
      (lambda _g158138_
        (let ((_g158137_ (let () (declare (not safe)) (##length _g158138_))))
          (cond ((let () (declare (not safe)) (##fx= _g158137_ 1))
                 (apply (lambda (_srcpath157984_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157984_)))
                        _g158138_))
                ((let () (declare (not safe)) (##fx= _g158137_ 2))
                 (apply (lambda (_srcpath157988_ _opts157989_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157988_ _opts157989_)))
                        _g158138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g158138_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157964_ _opts157965_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157965_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157964_
               _opts157965_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157964_
               _opts157965_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157847_ _opts157848_)
        (letrec ((_generate-stub157850_
                  (lambda (_builtin-modules157960_)
                    (let ((_mod-main157962_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157847_ 'main))))
                      (write (let ((__tmp158139
                                    (let ((__tmp158140
                                           (let ((__tmp158141
                                                  (let ((__tmp158142
                                                         (let ((__tmp158144
                                                                (let ((__tmp158145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157960_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158145)))
                       (__tmp158143
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp158144 __tmp158143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp158142))))
                                             (declare (not safe))
                                             (cons __tmp158141 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp158140))))
                               (declare (not safe))
                               (cons 'define __tmp158139)))
                      (write (let ((__tmp158146
                                    (let ((__tmp158185
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158147
                                           (let ((__tmp158148
                                                  (let ((__tmp158149
                                                         (let ((__tmp158173
                                                                (let ((__tmp158174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158175
                                      (let ((__tmp158183
                                             (let ((__tmp158184
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp158184)))
                                            (__tmp158176
                                             (let ((__tmp158177
                                                    (let ((__tmp158178
                                                           (let ((__tmp158179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158180
                                 (let ((__tmp158181
                                        (let ((__tmp158182
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp158182 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp158181))))
                            (declare (not safe))
                            (cons __tmp158180 '()))))
                     (declare (not safe))
                     (cons _mod-main157962_ __tmp158179))))
              (declare (not safe))
              (cons 'apply __tmp158178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158177 '()))))
                                        (declare (not safe))
                                        (cons __tmp158183 __tmp158176))))
                                 (declare (not safe))
                                 (cons '() __tmp158175))))
                          (declare (not safe))
                          (cons 'lambda __tmp158174)))
                       (__tmp158150
                        (let ((__tmp158151
                               (let ((__tmp158152
                                      (let ((__tmp158153
                                             (let ((__tmp158164
                                                    (let ((__tmp158165
                                                           (let ((__tmp158166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158167
                                 (let ((__tmp158168
                                        (let ((__tmp158169
                                               (let ((__tmp158170
                                                      (let ((__tmp158171
                                                             (let ((__tmp158172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp158172 '()))))
                (declare (not safe))
                (cons 'force-output __tmp158171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp158170 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp158169))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp158168))))
                            (declare (not safe))
                            (cons __tmp158167 '()))))
                     (declare (not safe))
                     (cons 'void __tmp158166))))
              (declare (not safe))
              (cons 'with-catch __tmp158165)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp158154
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
                            (let ((__tmp158163
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp158163 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp158162))))
                (declare (not safe))
                (cons __tmp158161 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp158160))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp158159))))
                                   (declare (not safe))
                                   (cons __tmp158158 '()))))
                            (declare (not safe))
                            (cons 'void __tmp158157))))
                     (declare (not safe))
                     (cons 'with-catch __tmp158156))))
              (declare (not safe))
              (cons __tmp158155 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158164
                                                     __tmp158154))))
                                        (declare (not safe))
                                        (cons '() __tmp158153))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp158152))))
                          (declare (not safe))
                          (cons __tmp158151 '()))))
                   (declare (not safe))
                   (cons __tmp158173 __tmp158150))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp158149))))
                                             (declare (not safe))
                                             (cons __tmp158148 '()))))
                                      (declare (not safe))
                                      (cons __tmp158185 __tmp158147))))
                               (declare (not safe))
                               (cons 'define __tmp158146)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157851_
                  (lambda (_libgerbil157958_)
                    (call-with-input-file
                     (string-append _libgerbil157958_ '".ldd")
                     read)))
                 (_replace-extension157852_
                  (lambda (_path157955_ _ext157956_)
                    (string-append
                     (path-strip-extension _path157955_)
                     _ext157956_)))
                 (_not-exclude-module?157853_
                  (lambda (_ctx157951_)
                    (let ((_id-str157953_
                           (symbol->string
                            (##structure-ref
                             _ctx157951_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp158187
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157953_))))
                            (declare (not safe))
                            (not __tmp158187))
                          (let ((__tmp158186
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157953_))))
                            (declare (not safe))
                            (not __tmp158186))
                          '#f))))
                 (_not-file-empty?157854_
                  (lambda (_path157949_)
                    (let ((__tmp158188
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157949_))))
                      (declare (not safe))
                      (not __tmp158188))))
                 (_compile-stub157855_
                  (lambda (_output-scm157862_ _output-bin157863_)
                    (let* ((_gerbil-home157865_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157867_
                            (path-expand '"lib" _gerbil-home157865_))
                           (_gerbil-staticdir157869_
                            (path-expand '"static" _gerbil-libdir157867_))
                           (_gxlink157871_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157867_))
                           (_tmp157873_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157877_
                            (lambda (_f157875_)
                              (path-expand
                               (path-strip-directory _f157875_)
                               _tmp157873_)))
                           (_deps157879_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157847_)))
                           (_deps157881_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?157853_
                                      _deps157879_)))
                           (_src-deps-scm157883_
                            (map gxc#find-static-module-file _deps157881_))
                           (_src-deps-scm157885_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?157854_
                                      _src-deps-scm157883_)))
                           (_src-deps-scm157887_
                            (map path-expand _src-deps-scm157885_))
                           (_deps-scm157889_
                            (map _tmp-path157877_ _src-deps-scm157887_))
                           (_deps-c157895_
                            (map (lambda (_g157890157892_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157852_
                                      _g157890157892_
                                      '".c")))
                                 _deps-scm157889_))
                           (_deps-o157901_
                            (map (lambda (_g157896157898_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157852_
                                      _g157896157898_
                                      '".o")))
                                 _deps-scm157889_))
                           (_src-bin-scm157903_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157847_)))
                           (_src-bin-scm157905_
                            (path-expand _src-bin-scm157903_))
                           (_bin-scm157907_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157877_ _src-bin-scm157905_)))
                           (_bin-c157909_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157852_
                               _bin-scm157907_
                               '".c")))
                           (_bin-o157911_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157852_
                               _bin-scm157907_
                               '".o")))
                           (_output-bin157913_
                            (path-expand _output-bin157863_))
                           (_output-scm157915_
                            (path-expand _output-scm157862_))
                           (_output-c157917_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157852_
                               _output-scm157915_
                               '".c")))
                           (_output-o157919_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157852_
                               _output-scm157915_
                               '".o")))
                           (_output_-c157921_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157852_
                               _output-scm157915_
                               '"_.c")))
                           (_output_-o157923_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157852_
                               _output-scm157915_
                               '"_.o")))
                           (_gsc-link-opts157925_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157927_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157929_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157869_)))
                           (_output-ld-opts157931_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157933_
                            (path-expand '"libgerbil.a" _gerbil-libdir157867_))
                           (_libgerbil.so157935_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157867_))
                           (_libgerbil-ld-opts157937_
                            (if (file-exists? _libgerbil.so157935_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157851_
                                   _libgerbil.so157935_))
                                (if (file-exists? _libgerbil.a157933_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157851_
                                       _libgerbil.a157933_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157933_
                                       _libgerbil.so157935_)))))
                           (_rpath157939_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157867_)))
                           (_builtin-modules157943_
                            (map (lambda (_mod157941_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157941_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157847_ _deps157881_)))))
                      (let ((__tmp158189
                             (lambda ()
                               (let ((__tmp158190
                                      (path-directory _output-bin157913_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158190)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158189))
                      (let ((__tmp158191
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157850_
                                  _builtin-modules157943_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157915_
                         __tmp158191))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158192
                                   (lambda () (create-directory _tmp157873_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp158192))
                            (for-each
                             copy-file
                             _src-deps-scm157887_
                             _deps-scm157889_)
                            (copy-file _src-bin-scm157905_ _bin-scm157907_)
                            (let ((__tmp158200
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158193
                                   (let ((__tmp158194
                                          (let ((__tmp158195
                                                 (let ((__tmp158196
                                                        (let ((__tmp158197
                                                               (let ((__tmp158198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158199
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157915_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157907_ __tmp158199))))
                         (declare (not safe))
                         (foldr1 cons __tmp158198 _deps-scm157889_))))
                  (declare (not safe))
                  (foldr1 cons __tmp158197 _gsc-link-opts157925_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157871_
                                                         __tmp158196))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp158195))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158194))))
                              (declare (not safe))
                              (gxc#invoke __tmp158200 __tmp158193))
                            (let ((__tmp158208
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158201
                                   (let ((__tmp158202
                                          (let ((__tmp158203
                                                 (let ((__tmp158204
                                                        (let ((__tmp158205
                                                               (let ((__tmp158206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158207
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c157921_ '()))))
                                (declare (not safe))
                                (cons _output-c157917_ __tmp158207))))
                         (declare (not safe))
                         (cons _bin-c157909_ __tmp158206))))
                  (declare (not safe))
                  (foldr1 cons __tmp158205 _deps-c157895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158204
                                                           _gsc-static-opts157929_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158203
                                                    _gsc-cc-opts157927_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158202))))
                              (declare (not safe))
                              (gxc#invoke __tmp158208 __tmp158201))
                            (let ((__tmp158221
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158209
                                   (let ((__tmp158210
                                          (let ((__tmp158211
                                                 (let ((__tmp158212
                                                        (let ((__tmp158213
                                                               (let ((__tmp158214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158215
                                     (let ((__tmp158216
                                            (let ((__tmp158217
                                                   (let ((__tmp158218
                                                          (let ((__tmp158219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp158220
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157937_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp158220))))
                    (declare (not safe))
                    (cons _gerbil-libdir157867_ __tmp158219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp158218))))
                                              (declare (not safe))
                                              (cons _rpath157939_
                                                    __tmp158217))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp158216
                                               _output-ld-opts157931_))))
                                (declare (not safe))
                                (cons _output_-o157923_ __tmp158215))))
                         (declare (not safe))
                         (cons _output-o157919_ __tmp158214))))
                  (declare (not safe))
                  (cons _bin-o157911_ __tmp158213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158212
                                                           _deps-o157901_))))
                                            (declare (not safe))
                                            (cons _output-bin157913_
                                                  __tmp158211))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158210))))
                              (declare (not safe))
                              (gxc#invoke __tmp158221 __tmp158209))
                            (for-each
                             delete-file
                             (let ((__tmp158222
                                    (let ((__tmp158223
                                           (let ((__tmp158224
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157923_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157919_
                                                   __tmp158224))))
                                      (declare (not safe))
                                      (cons _output_-c157921_ __tmp158223))))
                               (declare (not safe))
                               (cons _output-c157917_ __tmp158222)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157873_)))
                          '#!void)))))
          (let* ((_output-bin157857_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157847_ _opts157848_)))
                 (_output-scm157859_
                  (string-append _output-bin157857_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157855_ _output-scm157859_ _output-bin157857_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157859_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx157672_ _opts157673_)
        (letrec ((_reset-declare157675_
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
                 (_generate-stub157676_
                  (lambda (_deps157838_)
                    (let ((_mod-main157840_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157672_ 'main)))
                          (_reset-decl157841_
                           (let ()
                             (declare (not safe))
                             (_reset-declare157675_)))
                          (_user-decl157842_
                           (let ()
                             (declare (not safe))
                             (_user-declare157677_))))
                      (for-each
                       (lambda (_dep157844_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157841_)
                         (newline)
                         (if _user-decl157842_
                             (begin (write _user-decl157842_) (newline))
                             '#!void)
                         (write (let ((__tmp158225
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157844_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp158225)))
                         (newline))
                       _deps157838_)
                      (write (let ((__tmp158226
                                    (let ((__tmp158239
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158227
                                           (let ((__tmp158235
                                                  (let ((__tmp158236
                                                         (let ((__tmp158237
                                                                (let ((__tmp158238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158238))))
                   (declare (not safe))
                   (cons __tmp158237 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp158236)))
                                                 (__tmp158228
                                                  (let ((__tmp158229
                                                         (let ((__tmp158230
                                                                (let ((__tmp158231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158232
                                      (let ((__tmp158233
                                             (let ((__tmp158234
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp158234 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp158233))))
                                 (declare (not safe))
                                 (cons __tmp158232 '()))))
                          (declare (not safe))
                          (cons _mod-main157840_ __tmp158231))))
                   (declare (not safe))
                   (cons 'apply __tmp158230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158229 '()))))
                                             (declare (not safe))
                                             (cons __tmp158235 __tmp158228))))
                                      (declare (not safe))
                                      (cons __tmp158239 __tmp158227))))
                               (declare (not safe))
                               (cons 'define __tmp158226)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare157677_
                  (lambda ()
                    (let* ((_gsc-opts157743_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts157673_)))
                           (_gsc-prelude157745_
                            (if _gsc-opts157743_
                                (member '"-prelude" _gsc-opts157743_)
                                '#f))
                           (_gsc-prelude157747_
                            (if _gsc-prelude157745_
                                (read (open-input-string
                                       (cadr _gsc-prelude157745_)))
                                '#f)))
                      (let _lp157750_ ((_rest157752_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude157747_ '())))
                                       (_user-decls157753_ '()))
                        (let* ((_rest157754157762_ _rest157752_)
                               (_else157756157770_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls157753_))
                                      '#f
                                      (let ((__tmp158240
                                             (reverse _user-decls157753_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp158240)))))
                               (_K157758157826_
                                (lambda (_rest157773_ _expr157774_)
                                  (let* ((_expr157775157787_ _expr157774_)
                                         (_else157778157795_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp157750_
                                               _rest157773_
                                               _user-decls157753_)))))
                                    (let ((_K157783157816_
                                           (lambda (_decls157814_)
                                             (let ((__tmp158241
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls157753_
                                                              _decls157814_))))
                                               (declare (not safe))
                                               (_lp157750_
                                                _rest157773_
                                                __tmp158241))))
                                          (_K157780157801_
                                           (lambda (_exprs157799_)
                                             (let ((__tmp158242
                                                    (append _exprs157799_
                                                            _rest157773_)))
                                               (declare (not safe))
                                               (_lp157750_
                                                __tmp158242
                                                _user-decls157753_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr157775157787_))
                                          (let ((_tl157785157821_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr157775157787_)))
                                                (_hd157784157819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr157775157787_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157784157819_
                                                         'declare))
                                                (let ((_decls157824_
                                                       _tl157785157821_))
                                                  (declare (not safe))
                                                  (_K157783157816_
                                                   _decls157824_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157784157819_
                                                             'begin))
                                                    (let ((_exprs157809_
                                                           _tl157785157821_))
                                                      (declare (not safe))
                                                      (_K157780157801_
                                                       _exprs157809_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else157778157795_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else157778157795_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest157754157762_))
                              (let ((_hd157759157829_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest157754157762_)))
                                    (_tl157760157831_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest157754157762_))))
                                (let* ((_expr157834_ _hd157759157829_)
                                       (_rest157836_ _tl157760157831_))
                                  (declare (not safe))
                                  (_K157758157826_ _rest157836_ _expr157834_)))
                              (let ()
                                (declare (not safe))
                                (_else157756157770_))))))))
                 (_compile-stub157678_
                  (lambda (_output-scm157685_ _output-bin157686_)
                    (let* ((_gerbil-home157688_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157690_
                            (path-expand '"lib" _gerbil-home157688_))
                           (_runtime157692_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp157694_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home157688_))
                           (_include-gambit-sharp157696_
                            (string-append
                             '"(include \""
                             _gambit-sharp157694_
                             '"\")"))
                           (_bin-scm157698_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157672_)))
                           (_deps157700_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157672_)))
                           (_deps157702_
                            (map gxc#find-static-module-file _deps157700_))
                           (_deps157707_
                            (let ((__tmp158243
                                   (lambda (_$obj157704_)
                                     (let ((__tmp158244
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj157704_))))
                                       (declare (not safe))
                                       (not __tmp158244)))))
                              (declare (not safe))
                              (filter __tmp158243 _deps157702_)))
                           (_deps157711_
                            (let ((__tmp158245
                                   (lambda (_f157709_)
                                     (let ((__tmp158246
                                            (member _f157709_
                                                    _runtime157692_)))
                                       (declare (not safe))
                                       (not __tmp158246)))))
                              (declare (not safe))
                              (filter __tmp158245 _deps157707_)))
                           (_output-base157713_
                            (string-append
                             (path-strip-extension _output-scm157685_)))
                           (_output-c157715_
                            (string-append _output-base157713_ '".c"))
                           (_output-o157717_
                            (string-append _output-base157713_ '".o"))
                           (_output-c_157719_
                            (string-append _output-base157713_ '"_.c"))
                           (_output-o_157721_
                            (string-append _output-base157713_ '"_.o"))
                           (_gsc-link-opts157723_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157725_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157727_
                            (let ((__tmp158247
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir157690_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp158247)))
                           (_output-ld-opts157729_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157731_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp158249
                                       (let ((__tmp158250
                                              (let ((__tmp158251
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp157696_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp158251))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp158250))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158249))
                                (let ((__tmp158248
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp157696_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158248))))
                           (_gsc-link-opts157733_
                            (append _gsc-link-opts157723_
                                    _gsc-gx-macros157731_))
                           (_rpath157735_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157690_)))
                           (_default-ld-options157737_
                            (let ((__tmp158252
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp158252))))
                      (let ((__tmp158253
                             (lambda ()
                               (let ((__tmp158254
                                      (path-directory _output-bin157686_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158254)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158253))
                      (let ((__tmp158255
                             (lambda ()
                               (let ((__tmp158256
                                      (let ((__tmp158257
                                             (let ((__tmp158258
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm157698_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp158258
                                                       _deps157711_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp158257
                                                _runtime157692_))))
                                 (declare (not safe))
                                 (_generate-stub157676_ __tmp158256)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157685_
                         __tmp158255))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158264
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158259
                                   (let ((__tmp158260
                                          (let ((__tmp158261
                                                 (let ((__tmp158262
                                                        (let ((__tmp158263
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm157685_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp158263 _gsc-link-opts157733_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_157719_
                                                         __tmp158262))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp158261))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158260))))
                              (declare (not safe))
                              (gxc#invoke __tmp158264 __tmp158259))
                            (let ((__tmp158270
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158265
                                   (let ((__tmp158266
                                          (let ((__tmp158267
                                                 (let ((__tmp158268
                                                        (let ((__tmp158269
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_157719_ '()))))
                  (declare (not safe))
                  (cons _output-c157715_ __tmp158269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158268
                                                           _gsc-static-opts157727_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158267
                                                    _gsc-cc-opts157725_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158266))))
                              (declare (not safe))
                              (gxc#invoke __tmp158270 __tmp158265))
                            (let ((__tmp158280
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158271
                                   (let ((__tmp158272
                                          (let ((__tmp158273
                                                 (let ((__tmp158274
                                                        (let ((__tmp158275
                                                               (let ((__tmp158276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158277
                                     (let ((__tmp158278
                                            (let ((__tmp158279
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options157737_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir157690_
                                                    __tmp158279))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp158278))))
                                (declare (not safe))
                                (cons _rpath157735_ __tmp158277))))
                         (declare (not safe))
                         (foldr1 cons __tmp158276 _output-ld-opts157729_))))
                  (declare (not safe))
                  (cons _output-o_157721_ __tmp158275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o157717_
                                                         __tmp158274))))
                                            (declare (not safe))
                                            (cons _output-bin157686_
                                                  __tmp158273))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158272))))
                              (declare (not safe))
                              (gxc#invoke __tmp158280 __tmp158271)))
                          '#!void)))))
          (let* ((_output-bin157680_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157672_ _opts157673_)))
                 (_output-scm157682_
                  (string-append _output-bin157680_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157678_ _output-scm157682_ _output-bin157680_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157682_))))))
    (define gxc#find-export-binding
      (lambda (_ctx157622_ _id157623_)
        (let ((_$e157669_
               (let ((__tmp158282
                      (lambda (_e157624157626_)
                        (let* ((_g157628157638_ _e157624157626_)
                               (_else157630157646_ (lambda () '#f))
                               (_K157632157650_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g157628157638_
                                 'gx#module-export::t))
                              (let* ((_e157633157653_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157628157638_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e157634157656_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157628157638_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e157635157659_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157628157638_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e157635157659_ '0))
                                    (let ((_e157636157662_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g157628157638_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g157664157666_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g157664157666_
                                                    _id157623_)))
                                           _e157636157662_)
                                          (let ()
                                            (declare (not safe))
                                            (_K157632157650_))
                                          (let ()
                                            (declare (not safe))
                                            (_else157630157646_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else157630157646_))))
                              (let ()
                                (declare (not safe))
                                (_else157630157646_))))))
                     (__tmp158281
                      (##structure-ref
                       _ctx157622_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp158282 __tmp158281))))
          (if _$e157669_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e157669_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx157614_ _id157615_)
        (let ((_$e157617_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx157614_ _id157615_))))
          (if _$e157617_
              ((lambda (_bind157620_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind157620_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id157615_)))
                 (##structure-ref _bind157620_ '1 gx#binding::t '#f))
               _$e157617_)
              (let ((__tmp158283
                     (##structure-ref
                      _ctx157614_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp158283
                 _id157615_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157501_)
        (letrec* ((_ht157503_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template157504_
                   (lambda (_in157566_ _phi157567_)
                     (let ((_iphi157569_
                            (fx+ _phi157567_
                                 (##direct-structure-ref
                                  _in157566_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports157570_
                            (##structure-ref
                             (##direct-structure-ref
                              _in157566_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp157572_ ((_rest157574_ _imports157570_)
                                        (_r157575_ '()))
                         (let* ((_rest157576157584_ _rest157574_)
                                (_else157578157592_ (lambda () _r157575_))
                                (_K157580157602_
                                 (lambda (_rest157595_ _in157596_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in157596_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi157569_))
                                           (let ((__tmp158290
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in157596_
                                                          _r157575_))))
                                             (declare (not safe))
                                             (_lp157572_
                                              _rest157595_
                                              __tmp158290))
                                           (let ()
                                             (declare (not safe))
                                             (_lp157572_
                                              _rest157595_
                                              _r157575_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in157596_
                                              'gx#module-import::t))
                                           (let ((_iphi157598_
                                                  (fx+ _phi157567_
                                                       (##direct-structure-ref
                                                        _in157596_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi157598_))
                                                 (let ((__tmp158288
                                                        (let ((__tmp158289
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in157596_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp158289 _r157575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp157572_
                                                    _rest157595_
                                                    __tmp158288))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp157572_
                                                    _rest157595_
                                                    _r157575_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in157596_
                                                  'gx#import-set::t))
                                               (let ((_xphi157600_
                                                      (fx+ _iphi157569_
                                                           (##direct-structure-ref
                                                            _in157596_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi157600_))
                                                     (let ((__tmp158286
                                                            (let ((__tmp158287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in157596_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp158287 _r157575_))))
               (declare (not safe))
               (_lp157572_ _rest157595_ __tmp158286))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi157600_)
                                                         (let ((__tmp158284
                                                                (let ((__tmp158285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template157504_
                                  _in157596_
                                  _iphi157569_))))
                          (declare (not safe))
                          (foldl1 cons _r157575_ __tmp158285))))
                   (declare (not safe))
                   (_lp157572_ _rest157595_ __tmp158284))
                 (let ()
                   (declare (not safe))
                   (_lp157572_ _rest157595_ _r157575_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp157572_
                                                  _rest157595_
                                                  _r157575_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest157576157584_))
                               (let ((_hd157581157605_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest157576157584_)))
                                     (_tl157582157607_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest157576157584_))))
                                 (let* ((_in157610_ _hd157581157605_)
                                        (_rest157612_ _tl157582157607_))
                                   (declare (not safe))
                                   (_K157580157602_ _rest157612_ _in157610_)))
                               (let ()
                                 (declare (not safe))
                                 (_else157578157592_))))))))
                  (_find-deps157505_
                   (lambda (_rest157512_ _deps157513_)
                     (let* ((_rest157514157522_ _rest157512_)
                            (_else157516157530_ (lambda () _deps157513_))
                            (_K157518157554_
                             (lambda (_rest157533_ _hd157534_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd157534_
                                      'gx#module-context::t))
                                   (let ((_id157536_
                                          (##structure-ref
                                           _hd157534_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports157537_
                                          (##structure-ref
                                           _hd157534_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht157503_ _id157536_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps157505_
                                            _rest157533_
                                            _deps157513_))
                                         (let ((_$e157539_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd157534_))))
                                           (if _$e157539_
                                               ((lambda (_pre157542_)
                                                  (let ((_xdeps157544_
                                                         (let ((__tmp158303
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre157542_ _imports157537_))))
                   (declare (not safe))
                   (_find-deps157505_ __tmp158303 _deps157513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht157503_
                                                       _id157536_
                                                       _hd157534_))
                                                    (let ((__tmp158304
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd157534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps157544_))))
              (declare (not safe))
              (_find-deps157505_ _rest157533_ __tmp158304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e157539_)
                                               (let ((_xdeps157546_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps157505_
                                                         _imports157537_
                                                         _deps157513_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht157503_
                                                    _id157536_
                                                    _hd157534_))
                                                 (let ((__tmp158302
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd157534_
                                                                _xdeps157546_))))
                                                   (declare (not safe))
                                                   (_find-deps157505_
                                                    _rest157533_
                                                    __tmp158302)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd157534_
                                          'gx#prelude-context::t))
                                       (let ((_id157548_
                                              (##structure-ref
                                               _hd157534_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht157503_
                                                _id157548_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps157505_
                                                _rest157533_
                                                _deps157513_))
                                             (let ((_xdeps157550_
                                                    (let ((__tmp158300
                                                           (##structure-ref
                                                            _hd157534_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps157505_
                                                       __tmp158300
                                                       _deps157513_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht157503_
                                                      _id157548_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps157505_
                                                      _rest157533_
                                                      _xdeps157550_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht157503_
                                                        _id157548_
                                                        _hd157534_))
                                                     (let ((__tmp158301
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd157534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps157550_))))
               (declare (not safe))
               (_find-deps157505_ _rest157533_ __tmp158301)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd157534_
                                              'gx#module-import::t))
                                           (if (let ((__tmp158299
                                                      (##direct-structure-ref
                                                       _hd157534_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp158299))
                                               (let ((__tmp158297
                                                      (let ((__tmp158298
                                                             (##direct-structure-ref
                                                              _hd157534_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158298
                                                              _rest157533_))))
                                                 (declare (not safe))
                                                 (_find-deps157505_
                                                  __tmp158297
                                                  _deps157513_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps157505_
                                                  _rest157533_
                                                  _deps157513_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd157534_
                                                  'gx#module-export::t))
                                               (let ((__tmp158295
                                                      (let ((__tmp158296
                                                             (##direct-structure-ref
                                                              _hd157534_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158296
                                                              _rest157533_))))
                                                 (declare (not safe))
                                                 (_find-deps157505_
                                                  __tmp158295
                                                  _deps157513_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd157534_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp158294
                                                              (##direct-structure-ref
                                                               _hd157534_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp158294))
                                                       (let ((__tmp158292
                                                              (let ((__tmp158293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd157534_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp158293 _rest157533_))))
                 (declare (not safe))
                 (_find-deps157505_ __tmp158292 _deps157513_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd157534_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps157552_
                           (let ()
                             (declare (not safe))
                             (_import-set-template157504_ _hd157534_ '0)))
                          (__tmp158291
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest157533_ _xdeps157552_))))
                     (declare (not safe))
                     (_find-deps157505_ __tmp158291 _deps157513_))
                   (let ()
                     (declare (not safe))
                     (_find-deps157505_ _rest157533_ _deps157513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd157534_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest157514157522_))
                           (let ((_hd157519157557_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest157514157522_)))
                                 (_tl157520157559_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest157514157522_))))
                             (let* ((_hd157562_ _hd157519157557_)
                                    (_rest157564_ _tl157520157559_))
                               (declare (not safe))
                               (_K157518157554_ _rest157564_ _hd157562_)))
                           (let ()
                             (declare (not safe))
                             (_else157516157530_)))))))
          (reverse (let ((__tmp158305
                          (let ((__tmp158306
                                 (let ((_$e157507_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx157501_))))
                                   (if _$e157507_
                                       ((lambda (_pre157510_)
                                          (let ((__tmp158307
                                                 (##structure-ref
                                                  _ctx157501_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre157510_ __tmp158307)))
                                        _$e157507_)
                                       (##structure-ref
                                        _ctx157501_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps157505_ __tmp158306 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp158305))))))
    (define gxc#find-static-module-file
      (lambda (_ctx157432_)
        (let* ((_context-id157434_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx157432_
                       'gx#module-context::t))
                    (##structure-ref _ctx157432_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx157432_)))
               (_scm157436_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id157434_))
                 '".scm"))
               (_dirs157438_ (gx#current-expander-module-library-path))
               (_dirs157444_
                (let ((_user-libpath157440_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath157440_
                      (let ((_user-libpath157442_
                             (path-expand '"lib" _user-libpath157440_)))
                        (if (member _user-libpath157442_ _dirs157438_)
                            _dirs157438_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath157442_ _dirs157438_))))
                      _dirs157438_)))
               (_dirs157453_
                (let ((_$e157446_ (gxc#current-compile-output-dir)))
                  (if _$e157446_
                      ((lambda (_g157448157450_)
                         (let ()
                           (declare (not safe))
                           (cons _g157448157450_ _dirs157444_)))
                       _$e157446_)
                      _dirs157444_)))
               (_dirs157459_
                (map (lambda (_g157454157456_)
                       (path-expand '"static" _g157454157456_))
                     _dirs157453_)))
          (let _lp157462_ ((_rest157464_ _dirs157459_))
            (let* ((_rest157465157473_ _rest157464_)
                   (_else157467157481_
                    (lambda ()
                      (let ((__tmp158308
                             (##structure-ref
                              _ctx157432_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp158308
                         _scm157436_))))
                   (_K157469157489_
                    (lambda (_rest157484_ _dir157485_)
                      (let ((_path157487_
                             (path-expand _scm157436_ _dir157485_)))
                        (if (file-exists? _path157487_)
                            _path157487_
                            (let ()
                              (declare (not safe))
                              (_lp157462_ _rest157484_)))))))
              (if (let () (declare (not safe)) (##pair? _rest157465157473_))
                  (let ((_hd157470157492_
                         (let ()
                           (declare (not safe))
                           (##car _rest157465157473_)))
                        (_tl157471157494_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157465157473_))))
                    (let* ((_dir157497_ _hd157470157492_)
                           (_rest157499_ _tl157471157494_))
                      (declare (not safe))
                      (_K157469157489_ _rest157499_ _dir157497_)))
                  (let () (declare (not safe)) (_else157467157481_))))))))
    (define gxc#file-empty?
      (lambda (_path157430_)
        (let ((__tmp158309 (file-info-size (file-info _path157430_ '#t))))
          (declare (not safe))
          (zero? __tmp158309))))
    (define gxc#compile-top-module
      (lambda (_ctx157419_)
        (let ((__tmp158313
               (lambda ()
                 (let ((__tmp158314
                        (##structure-ref
                         _ctx157419_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp158314))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp158315
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx157419_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp158315))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx157419_))
                 (if (let ((__tmp158318
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx157419_))))
                       (declare (not safe))
                       (null? __tmp158318))
                     (let* ((_thr1157424_
                             (let ((__tmp158316
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx157419_)))))
                               (declare (not safe))
                               (spawn __tmp158316)))
                            (_thr2157427_
                             (let ((__tmp158317
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx157419_)))))
                               (declare (not safe))
                               (spawn __tmp158317))))
                       (let () (declare (not safe)) (gxc#join! _thr1157424_))
                       (let () (declare (not safe)) (gxc#join! _thr2157427_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx157419_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx157419_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx157419_))
                     '#!void)))
              (__tmp158312
               (let ((__obj158117
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj158117)
                 __obj158117))
              (__tmp158311 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158310 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp158313
           gx#current-expander-context
           _ctx157419_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp158312
           gxc#current-compile-runtime-sections
           __tmp158311
           gxc#current-compile-runtime-names
           __tmp158310))))
    (define gxc#collect-bindings
      (lambda (_ctx157417_)
        (let ((__tmp158319
               (##structure-ref _ctx157417_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp158319))))
    (define gxc#compile-runtime-code
      (lambda (_ctx157363_)
        (letrec ((_compile1157365_
                  (lambda (_ctx157406_)
                    (let* ((_code157408_
                            (##structure-ref
                             _ctx157406_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt157412_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code157408_))
                                (let ((_idstr157410_
                                       (let ((__tmp158320
                                              (##structure-ref
                                               _ctx157406_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp158320))))
                                  (string-append _idstr157410_ '"__0"))
                                '#f)))
                      (if _rt157412_
                          (begin
                            (let ((__tmp158321
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp158321 _ctx157406_ _rt157412_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code157367_
                               _ctx157406_
                               _code157408_)))
                          (let ((_path157415_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx157406_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path157415_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code157368_
                         _ctx157406_
                         _code157408_
                         _rt157412_)))))
                 (_context-timestamp157366_
                  (lambda (_ctx157404_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx157404_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code157367_
                  (lambda (_ctx157386_ _code157387_)
                    (let* ((_lifts157389_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code157392_
                            (let ((__tmp158324
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code157387_))))
                                  (__tmp158323
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp158322
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158324
                               gx#current-expander-context
                               _ctx157386_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts157389_
                               gxc#current-compile-marks
                               __tmp158323
                               gxc#current-compile-identifiers
                               __tmp158322)))
                           (_runtime-code157394_
                            (if (let ((__tmp158328 (unbox _lifts157389_)))
                                  (declare (not safe))
                                  (null? __tmp158328))
                                _runtime-code157392_
                                (let ((__tmp158325
                                       (let ((__tmp158327
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code157392_
                                                      '())))
                                             (__tmp158326
                                              (reverse (unbox _lifts157389_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp158327
                                                 __tmp158326))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158325))))
                           (_runtime-code157396_
                            (let ((__tmp158329
                                   (let ((__tmp158331
                                          (let ((__tmp158332
                                                 (let ((__tmp158335
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp157366_
                                                           _ctx157386_)))
                                                       (__tmp158333
                                                        (let ((__tmp158334
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp158334
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp158335
                                                         __tmp158333))))
                                            (declare (not safe))
                                            (cons 'define __tmp158332)))
                                         (__tmp158330
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code157394_ '()))))
                                     (declare (not safe))
                                     (cons __tmp158331 __tmp158330))))
                              (declare (not safe))
                              (cons 'begin __tmp158329)))
                           (_scm0157398_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157386_
                               '0
                               '".scm"))))
                      (let ((_scms157401_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx157386_))))
                        (let ((__tmp158336
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0157398_
                                    _runtime-code157396_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp158336
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms157401_)
                            (delete-file _scms157401_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0157398_
                           '" => "
                           _scms157401_))
                        (copy-file _scm0157398_ _scms157401_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0157398_))))))
                 (_generate-loader-code157368_
                  (lambda (_ctx157375_ _code157376_ _rt157377_)
                    (let* ((_loader-code157380_
                            (let ((__tmp158337
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code157376_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158337
                               gx#current-expander-context
                               _ctx157375_)))
                           (_loader-code157382_
                            (if _rt157377_
                                (let ((__tmp158338
                                       (let ((__tmp158339
                                              (let ((__tmp158340
                                                     (let ((__tmp158341
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt157377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp158341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158340 '()))))
                                         (declare (not safe))
                                         (cons _loader-code157380_
                                               __tmp158339))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158338))
                                _loader-code157380_)))
                      (let ((__tmp158342
                             (lambda ()
                               (let ((__tmp158343
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157375_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp158343
                                  _loader-code157382_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp158342
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules157370_
                 (let ((__tmp158344
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx157363_))))
                   (declare (not safe))
                   (cons _ctx157363_ __tmp158344))))
            (for-each
             (lambda (_ctx157372_)
               (let ((__tmp158345
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1157365_ _ctx157372_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp158345
                  gxc#current-compile-decls
                  '())))
             _all-modules157370_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx157260_)
        (letrec ((_compile-ssi157262_
                  (lambda (_code157333_)
                    (let* ((_path157335_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157260_
                               '#f
                               '".ssi")))
                           (_prelude157346_
                            (let* ((_super157337_
                                    (##structure-ref
                                     _ctx157260_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e157339_
                                    (##structure-ref
                                     _super157337_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e157339_
                                  ((lambda (_g157341157343_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g157341157343_)))
                                   _$e157339_)
                                  ':<root>)))
                           (_ns157348_
                            (##structure-ref
                             _ctx157260_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr157350_
                            (symbol->string
                             (##structure-ref
                              _ctx157260_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg157357_
                            (let ((_$e157352_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr157350_ '#\/))))
                              (if _$e157352_
                                  ((lambda (_x157355_)
                                     (string->symbol
                                      (substring _idstr157350_ '0 _x157355_)))
                                   _$e157352_)
                                  '#f)))
                           (_rt157359_
                            (let ((__tmp158346
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp158346 _ctx157260_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path157335_))
                      (let ((__tmp158347
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude157346_))
                               (if _pkg157357_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg157357_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns157348_))
                               (newline)
                               (pretty-print _code157333_)
                               (if _rt157359_
                                   (pretty-print
                                    (let ((__tmp158348
                                           (let ((__tmp158352
                                                  (let ((__tmp158353
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp158353)))
                                                 (__tmp158349
                                                  (let ((__tmp158350
                                                         (let ((__tmp158351
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt157359_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp158351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158350 '()))))
                                             (declare (not safe))
                                             (cons __tmp158352 __tmp158349))))
                                      (declare (not safe))
                                      (cons '%#call __tmp158348)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path157335_
                         __tmp158347)))))
                 (_compile-phi157263_
                  (lambda (_part157273_)
                    (let* ((_part157274157287_ _part157273_)
                           (_E157276157291_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part157274157287_))))
                           (_K157277157302_
                            (lambda (_code157294_
                                     _n157295_
                                     _phi157296_
                                     _phi-ctx157297_)
                              (let* ((_code157300_
                                      (let ((__tmp158354
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code157294_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp158354
                                         gx#current-expander-context
                                         _phi-ctx157297_
                                         gx#current-expander-phi
                                         _phi157296_)))
                                     (__tmp158355
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157260_
                                         _n157295_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp158355
                                 _code157300_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part157274157287_))
                          (let ((_hd157278157305_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part157274157287_)))
                                (_tl157279157307_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part157274157287_))))
                            (let ((_phi-ctx157310_ _hd157278157305_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl157279157307_))
                                  (let ((_hd157280157312_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl157279157307_)))
                                        (_tl157281157314_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl157279157307_))))
                                    (let ((_phi157317_ _hd157280157312_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl157281157314_))
                                          (let ((_hd157282157319_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl157281157314_)))
                                                (_tl157283157321_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl157281157314_))))
                                            (let ((_n157324_ _hd157282157319_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl157283157321_))
                                                  (let ((_hd157284157326_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl157283157321_)))
                                                        (_tl157285157328_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl157283157321_))))
                                                    (let ((_code157331_
                                                           _hd157284157326_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl157285157328_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K157277157302_
                                                             _code157331_
                                                             _n157324_
                                                             _phi157317_
                                                             _phi-ctx157310_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E157276157291_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E157276157291_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E157276157291_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E157276157291_)))))
                          (let () (declare (not safe)) (_E157276157291_)))))))
          (let ((_g158356_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx157260_))))
            (begin
              (let ((_g158357_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g158356_)
                           (##vector-length _g158356_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g158357_ 2)))
                    (error "Context expects 2 values" _g158357_)))
              (let ((_ssi-code157265_
                     (let () (declare (not safe)) (##vector-ref _g158356_ 0)))
                    (_phi-code157266_
                     (let () (declare (not safe)) (##vector-ref _g158356_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi157262_ _ssi-code157265_))
                  (let ((_threads157271_
                         (map (lambda (_code157268_)
                                (let ((__tmp158358
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi157263_
                                            _code157268_)))))
                                  (declare (not safe))
                                  (spawn __tmp158358)))
                              _phi-code157266_)))
                    (for-each gxc#join! _threads157271_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx157243_)
        (let* ((_path157245_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx157243_ '#f '".ssxi.ss")))
               (_code157247_
                (let ((__tmp158359
                       (##structure-ref
                        _ctx157243_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp158359)))
               (_idstr157249_
                (symbol->string
                 (##structure-ref _ctx157243_ '1 gx#expander-context::t '#f)))
               (_pkg157256_
                (let ((_$e157251_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr157249_ '#\/))))
                  (if _$e157251_
                      ((lambda (_x157254_)
                         (string->symbol
                          (substring _idstr157249_ '0 _x157254_)))
                       _$e157251_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path157245_))
          (let ((__tmp158360
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg157256_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg157256_))
                       '#!void)
                   (newline)
                   (pretty-print _code157247_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path157245_ __tmp158360)))))
    (define gxc#generate-meta-code
      (lambda (_ctx157236_)
        (let* ((_state157238_
                (let ((__obj158118
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj158118 _ctx157236_)
                  __obj158118))
               (_ssi-code157240_
                (let ((__tmp158361
                       (##structure-ref
                        _ctx157236_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp158361 _state157238_))))
          (values _ssi-code157240_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state157238_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx157229_)
        (let ((_lifts157231_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158364
                 (lambda ()
                   (let ((_code157234_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx157229_))))
                     (if (let ((__tmp158368 (unbox _lifts157231_)))
                           (declare (not safe))
                           (null? __tmp158368))
                         _code157234_
                         (let ((__tmp158365
                                (let ((__tmp158367
                                       (let ()
                                         (declare (not safe))
                                         (cons _code157234_ '())))
                                      (__tmp158366
                                       (reverse (unbox _lifts157231_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp158367 __tmp158366))))
                           (declare (not safe))
                           (cons 'begin __tmp158365))))))
                (__tmp158363
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp158362
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp158364
             gxc#current-compile-lift
             _lifts157231_
             gxc#current-compile-marks
             __tmp158363
             gxc#current-compile-identifiers
             __tmp158362)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx157225_)
        (let ((_modules157227_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158369
                 (##structure-ref _ctx157225_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp158369 _modules157227_))
          (reverse (unbox _modules157227_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path157208_ _code157209_ _phi?157210_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path157208_))
        (let ((__tmp158370
               (lambda ()
                 (pretty-print
                  (let ((__tmp158371
                         (let ((__tmp158378
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp158372
                                (let ((__tmp158377
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp158373
                                       (let ((__tmp158376
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp158374
                                              (let ((__tmp158375
                                                     (if _phi?157210_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp158375))))
                                         (declare (not safe))
                                         (cons __tmp158376 __tmp158374))))
                                  (declare (not safe))
                                  (cons __tmp158377 __tmp158373))))
                           (declare (not safe))
                           (cons __tmp158378 __tmp158372))))
                    (declare (not safe))
                    (cons 'declare __tmp158371)))
                 (pretty-print _code157209_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path157208_ __tmp158370))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path157208_ _phi?157210_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path157208_))))
    (define gxc#compile-scm-file__0
      (lambda (_path157216_ _code157217_)
        (let ((_phi?157219_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path157216_ _code157217_ _phi?157219_))))
    (define gxc#compile-scm-file
      (lambda _g158380_
        (let ((_g158379_ (let () (declare (not safe)) (##length _g158380_))))
          (cond ((let () (declare (not safe)) (##fx= _g158379_ 2))
                 (apply (lambda (_path157216_ _code157217_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path157216_
                             _code157217_)))
                        _g158380_))
                ((let () (declare (not safe)) (##fx= _g158379_ 3))
                 (apply (lambda (_path157221_ _code157222_ _phi?157223_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path157221_
                             _code157222_
                             _phi?157223_)))
                        _g158380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g158380_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?157109_)
        (let _lp157111_ ((_rest157113_ (gxc#current-compile-gsc-options))
                         (_opts157114_ '()))
          (let* ((_rest157115157135_ _rest157113_)
                 (_else157119157143_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157109_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158381
                               (let ((__tmp158382 (reverse _opts157114_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp158382))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp158381))
                        (reverse _opts157114_)))))
            (let ((_K157129157186_
                   (lambda (_rest157184_)
                     (let ()
                       (declare (not safe))
                       (_lp157111_ _rest157184_ _opts157114_))))
                  (_K157124157168_
                   (lambda (_rest157166_)
                     (let ()
                       (declare (not safe))
                       (_lp157111_ _rest157166_ _opts157114_))))
                  (_K157121157150_
                   (lambda (_rest157147_ _opt157148_)
                     (let ((__tmp158383
                            (let ()
                              (declare (not safe))
                              (cons _opt157148_ _opts157114_))))
                       (declare (not safe))
                       (_lp157111_ _rest157147_ __tmp158383)))))
              (if (let () (declare (not safe)) (##pair? _rest157115157135_))
                  (let ((_tl157131157191_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157115157135_)))
                        (_hd157130157189_
                         (let ()
                           (declare (not safe))
                           (##car _rest157115157135_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157130157189_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157131157191_))
                            (let* ((_tl157133157194_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157131157191_)))
                                   (_rest157197_ _tl157133157194_))
                              (declare (not safe))
                              (_K157129157186_ _rest157197_))
                            (let ((_opt157158_ _hd157130157189_)
                                  (_rest157160_ _tl157131157191_))
                              (let ()
                                (declare (not safe))
                                (_K157121157150_ _rest157160_ _opt157158_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157130157189_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157131157191_))
                                (let* ((_tl157128157176_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157131157191_)))
                                       (_rest157179_ _tl157128157176_))
                                  (declare (not safe))
                                  (_K157124157168_ _rest157179_))
                                (let ((_opt157158_ _hd157130157189_)
                                      (_rest157160_ _tl157131157191_))
                                  (let ()
                                    (declare (not safe))
                                    (_K157121157150_
                                     _rest157160_
                                     _opt157158_))))
                            (let ((_opt157158_ _hd157130157189_)
                                  (_rest157160_ _tl157131157191_))
                              (let ()
                                (declare (not safe))
                                (_K157121157150_ _rest157160_ _opt157158_))))))
                  (let () (declare (not safe)) (_else157119157143_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?157203_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?157203_))))
    (define gxc#gsc-link-options
      (lambda _g158385_
        (let ((_g158384_ (let () (declare (not safe)) (##length _g158385_))))
          (cond ((let () (declare (not safe)) (##fx= _g158384_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g158385_))
                ((let () (declare (not safe)) (##fx= _g158384_ 1))
                 (apply (lambda (_phi?157205_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?157205_)))
                        _g158385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g158385_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?157010_)
        (let _lp157012_ ((_rest157014_ (gxc#current-compile-gsc-options))
                         (_opts157015_ '()))
          (let* ((_rest157016157036_ _rest157014_)
                 (_else157020157044_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157010_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158386
                               (let ((__tmp158387 (reverse _opts157015_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp158387))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp158386))
                        (reverse _opts157015_)))))
            (let ((_K157030157083_
                   (lambda (_rest157080_ _opt157081_)
                     (let ((__tmp158388
                            (let ((__tmp158389
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts157015_))))
                              (declare (not safe))
                              (cons _opt157081_ __tmp158389))))
                       (declare (not safe))
                       (_lp157012_ _rest157080_ __tmp158388))))
                  (_K157025157064_
                   (lambda (_rest157062_)
                     (let ()
                       (declare (not safe))
                       (_lp157012_ _rest157062_ _opts157015_))))
                  (_K157022157050_
                   (lambda (_rest157048_)
                     (let ()
                       (declare (not safe))
                       (_lp157012_ _rest157048_ _opts157015_)))))
              (if (let () (declare (not safe)) (##pair? _rest157016157036_))
                  (let ((_tl157032157088_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157016157036_)))
                        (_hd157031157086_
                         (let ()
                           (declare (not safe))
                           (##car _rest157016157036_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157031157086_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157032157088_))
                            (let ((_tl157034157093_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl157032157088_)))
                                  (_hd157033157091_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl157032157088_))))
                              (let ((_opt157096_ _hd157033157091_)
                                    (_rest157098_ _tl157034157093_))
                                (let ()
                                  (declare (not safe))
                                  (_K157030157083_ _rest157098_ _opt157096_))))
                            (let ((_rest157056_ _tl157032157088_))
                              (declare (not safe))
                              (_K157022157050_ _rest157056_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157031157086_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157032157088_))
                                (let* ((_tl157029157072_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157032157088_)))
                                       (_rest157075_ _tl157029157072_))
                                  (declare (not safe))
                                  (_K157025157064_ _rest157075_))
                                (let ((_rest157056_ _tl157032157088_))
                                  (declare (not safe))
                                  (_K157022157050_ _rest157056_)))
                            (let ((_rest157056_ _tl157032157088_))
                              (declare (not safe))
                              (_K157022157050_ _rest157056_)))))
                  (let () (declare (not safe)) (_else157020157044_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?157104_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?157104_))))
    (define gxc#gsc-cc-options
      (lambda _g158391_
        (let ((_g158390_ (let () (declare (not safe)) (##length _g158391_))))
          (cond ((let () (declare (not safe)) (##fx= _g158390_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g158391_))
                ((let () (declare (not safe)) (##fx= _g158390_ 1))
                 (apply (lambda (_phi?157106_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?157106_)))
                        _g158391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g158391_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir157005_)
        (let* ((_user-staticdir157007_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp158392
                (let ((__tmp158393
                       (string-append
                        '"-I "
                        _staticdir157005_
                        '" -I "
                        _user-staticdir157007_)))
                  (declare (not safe))
                  (cons __tmp158393 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp158392))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156917_ ((_rest156919_ (gxc#current-compile-gsc-options))
                         (_opts156920_ '()))
          (let* ((_rest156921156941_ _rest156919_)
                 (_else156925156949_ (lambda () _opts156920_)))
            (let ((_K156935156992_
                   (lambda (_rest156990_)
                     (let ()
                       (declare (not safe))
                       (_lp156917_ _rest156990_ _opts156920_))))
                  (_K156930156970_
                   (lambda (_rest156967_ _opt156968_)
                     (let ((__tmp158394
                            (append _opts156920_
                                    (let ((__tmp158395
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt156968_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp158395)))))
                       (declare (not safe))
                       (_lp156917_ _rest156967_ __tmp158394))))
                  (_K156927156955_
                   (lambda (_rest156953_)
                     (let ()
                       (declare (not safe))
                       (_lp156917_ _rest156953_ _opts156920_)))))
              (if (let () (declare (not safe)) (##pair? _rest156921156941_))
                  (let ((_tl156937156997_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156921156941_)))
                        (_hd156936156995_
                         (let ()
                           (declare (not safe))
                           (##car _rest156921156941_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156936156995_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156937156997_))
                            (let* ((_tl156939157000_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156937156997_)))
                                   (_rest157003_ _tl156939157000_))
                              (declare (not safe))
                              (_K156935156992_ _rest157003_))
                            (let ((_rest156961_ _tl156937156997_))
                              (declare (not safe))
                              (_K156927156955_ _rest156961_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156936156995_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156937156997_))
                                (let ((_tl156934156980_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156937156997_)))
                                      (_hd156933156978_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156937156997_))))
                                  (let ((_opt156983_ _hd156933156978_)
                                        (_rest156985_ _tl156934156980_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156930156970_
                                       _rest156985_
                                       _opt156983_))))
                                (let ((_rest156961_ _tl156937156997_))
                                  (declare (not safe))
                                  (_K156927156955_ _rest156961_)))
                            (let ((_rest156961_ _tl156937156997_))
                              (declare (not safe))
                              (_K156927156955_ _rest156961_)))))
                  (let () (declare (not safe)) (_else156925156949_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156914_)
        (let ((__tmp158396
               (let () (declare (not safe)) (string-empty? _str156914_))))
          (declare (not safe))
          (not __tmp158396))))
    (define gxc#gsc-compile-file
      (lambda (_path156882_ _phi?156883_)
        (letrec ((_gsc-link-path156885_
                  (lambda (_base-path156906_)
                    (let _lp156908_ ((_n156910_ '1))
                      (let ((_path156912_
                             (string-append
                              _base-path156906_
                              '".o"
                              (number->string _n156910_))))
                        (if (file-exists? _path156912_)
                            (let ((__tmp158397
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156910_ '1))))
                              (declare (not safe))
                              (_lp156908_ __tmp158397))
                            _path156912_))))))
          (let* ((_base-path156887_ (path-strip-extension _path156882_))
                 (_path-c156889_ (string-append _base-path156887_ '".c"))
                 (_path-o156891_ (string-append _base-path156887_ '".o"))
                 (_link-path156893_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156885_ _base-path156887_)))
                 (_link-path-c156895_ (string-append _link-path156893_ '".c"))
                 (_link-path-o156897_ (string-append _link-path156893_ '".o"))
                 (_gsc-link-opts156899_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156883_)))
                 (_gsc-cc-opts156901_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156883_)))
                 (_gcc-ld-opts156903_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp158404 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158398
                   (let ((__tmp158399
                          (let ((__tmp158400
                                 (let ((__tmp158401
                                        (let ((__tmp158402
                                               (let ((__tmp158403
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156882_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp158403
                                                         _gsc-link-opts156899_))))
                                          (declare (not safe))
                                          (cons _link-path-c156895_
                                                __tmp158402))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp158401))))
                            (declare (not safe))
                            (cons '"-flat" __tmp158400))))
                     (declare (not safe))
                     (cons '"-link" __tmp158399))))
              (declare (not safe))
              (gxc#invoke __tmp158404 __tmp158398 'stdout-redirection: '#t))
            (let ((__tmp158411 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158405
                   (let ((__tmp158406
                          (let ((__tmp158407
                                 (let ((__tmp158408
                                        (let ((__tmp158409
                                               (let ((__tmp158410
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156895_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156889_
                                                       __tmp158410))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp158409
                                                  _gsc-cc-opts156901_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp158408))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp158407))))
                     (declare (not safe))
                     (cons '"-obj" __tmp158406))))
              (declare (not safe))
              (gxc#invoke __tmp158411 __tmp158405 'stdout-redirection: '#t))
            (let ((__tmp158417 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp158412
                   (let ((__tmp158413
                          (let ((__tmp158414
                                 (let ((__tmp158415
                                        (let ((__tmp158416
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156897_
                                                       _gcc-ld-opts156903_))))
                                          (declare (not safe))
                                          (cons _path-o156891_ __tmp158416))))
                                   (declare (not safe))
                                   (cons _link-path156893_ __tmp158415))))
                            (declare (not safe))
                            (cons '"-o" __tmp158414))))
                     (declare (not safe))
                     (cons '"-shared" __tmp158413))))
              (declare (not safe))
              (gxc#invoke __tmp158417 __tmp158412))
            (for-each
             delete-file
             (let ((__tmp158418
                    (let ((__tmp158419
                           (let ((__tmp158420
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156897_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156895_ __tmp158420))))
                      (declare (not safe))
                      (cons _path-o156891_ __tmp158419))))
               (declare (not safe))
               (cons _path-c156889_ __tmp158418)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156853_ _n156854_ _ext156855_)
        (letrec ((_module-relative-path156857_
                  (lambda (_ctx156880_)
                    (path-strip-directory
                     (let ((__tmp158421
                            (##structure-ref
                             _ctx156880_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp158421)))))
                 (_module-source-directory156858_
                  (lambda (_ctx156876_)
                    (path-directory
                     (let ((_mpath156878_
                            (##structure-ref
                             _ctx156876_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156878_))
                           _mpath156878_
                           (let ()
                             (declare (not safe))
                             (last _mpath156878_)))))))
                 (_section-string156859_
                  (lambda (_n156874_)
                    (if (let () (declare (not safe)) (number? _n156874_))
                        (number->string _n156874_)
                        (if (let () (declare (not safe)) (symbol? _n156874_))
                            (symbol->string _n156874_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156874_))
                                _n156874_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156874_)))))))
                 (_file-name156860_
                  (lambda (_path156872_)
                    (if _n156854_
                        (string-append
                         _path156872_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156859_ _n156854_))
                         _ext156855_)
                        (string-append _path156872_ _ext156855_))))
                 (_file-path156861_
                  (lambda ()
                    (let ((_$e156867_ (gxc#current-compile-output-dir)))
                      (if _$e156867_
                          ((lambda (_outdir156870_)
                             (path-expand
                              (let ((__tmp158423
                                     (let ((__tmp158424
                                            (##structure-ref
                                             _ctx156853_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp158424))))
                                (declare (not safe))
                                (_file-name156860_ __tmp158423))
                              _outdir156870_))
                           _$e156867_)
                          (path-expand
                           (let ((__tmp158422
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156857_
                                     _ctx156853_))))
                             (declare (not safe))
                             (_file-name156860_ __tmp158422))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156858_
                              _ctx156853_))))))))
          (let ((_path156863_
                 (let () (declare (not safe)) (_file-path156861_))))
            (let ((__tmp158425
                   (lambda ()
                     (let ((__tmp158426 (path-directory _path156863_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158426)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158425))
            _path156863_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156835_)
        (letrec ((_file-name156837_
                  (lambda (_id156851_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156851_))
                     '".scm")))
                 (_file-path156838_
                  (lambda ()
                    (let* ((_file156844_
                            (let ((__tmp158427
                                   (##structure-ref
                                    _ctx156835_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156837_ __tmp158427)))
                           (_$e156846_ (gxc#current-compile-output-dir)))
                      (if _$e156846_
                          ((lambda (_outdir156849_)
                             (path-expand
                              _file156844_
                              (path-expand '"static" _outdir156849_)))
                           _$e156846_)
                          (path-expand _file156844_ '"static"))))))
          (let ((_path156840_
                 (let () (declare (not safe)) (_file-path156838_))))
            (let ((__tmp158428
                   (lambda ()
                     (let ((__tmp158429 (path-directory _path156840_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158429)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158428))
            _path156840_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156829_ _opts156830_)
        (let ((_$e156832_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156830_))))
          (if _$e156832_
              (values _$e156832_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156829_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156822_)
        (if (let () (declare (not safe)) (string? _idstr156822_))
            (let* ((_str156824_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156822_)))
                   (_strs156826_
                    (let ()
                      (declare (not safe))
                      (string-split _str156824_ '#\/))))
              (let () (declare (not safe)) (string-join _strs156826_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156822_))
                (let ((__tmp158430 (symbol->string _idstr156822_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp158430))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156822_))))))
    (define gxc#invoke__%
      (lambda (_g158431_
               _stdout-redirection156783156787_
               _stderr-redirection156784156789_
               _program156791_
               _args156792_)
        (let* ((_stdout-redirection156794_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection156783156787_ absent-value))
                    '#f
                    _stdout-redirection156783156787_))
               (_stderr-redirection156796_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection156784156789_ absent-value))
                    '#f
                    _stderr-redirection156784156789_)))
          (let ((__tmp158432
                 (let ()
                   (declare (not safe))
                   (cons _program156791_ _args156792_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp158432))
          (let* ((_proc156798_
                  (open-process
                   (let ((__tmp158433
                          (let ((__tmp158434
                                 (let ((__tmp158435
                                        (let ((__tmp158436
                                               (let ((__tmp158437
                                                      (let ((__tmp158438
                                                             (let ((__tmp158439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection156796_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp158439))))
                (declare (not safe))
                (cons _stdout-redirection156794_ __tmp158438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp158437))))
                                          (declare (not safe))
                                          (cons _args156792_ __tmp158436))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp158435))))
                            (declare (not safe))
                            (cons _program156791_ __tmp158434))))
                     (declare (not safe))
                     (cons 'path: __tmp158433))))
                 (_output156803_
                  (if (or _stdout-redirection156794_
                          _stderr-redirection156796_)
                      (read-line _proc156798_ '#f)
                      '#f)))
            (let ((_status156806_ (process-status _proc156798_)))
              (close-port _proc156798_)
              (if (let () (declare (not safe)) (zero? _status156806_))
                  '#!void
                  (begin
                    (display _output156803_)
                    (let ((__tmp158440
                           (let ()
                             (declare (not safe))
                             (cons _program156791_ _args156792_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp158440
                       _status156806_)))))))))
    (define gxc#invoke__@
      (lambda (_keys156782156811_ . _args156813_)
        (apply gxc#invoke__%
               _keys156782156811_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156782156811_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156782156811_
                  'stderr-redirection:
                  absent-value))
               _args156813_)))
    (define gxc#invoke
      (lambda _args156785156819_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156785156819_)))
    (define gxc#join!
      (lambda (_thread156776_)
        (let ((__tmp158442
               (lambda (_exn156778_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn156778_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn156778_)))
                     (raise _exn156778_))))
              (__tmp158441 (lambda () (thread-join! _thread156776_))))
          (declare (not safe))
          (with-catch __tmp158442 __tmp158441))))))
