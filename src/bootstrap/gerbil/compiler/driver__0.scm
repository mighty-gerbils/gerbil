(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1709375803)
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
      (lambda (_path158017_ _fun158018_)
        (with-output-to-file
         (let ((__tmp158111
                (let ()
                  (declare (not safe))
                  (cons _path158017_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp158111))
         _fun158018_)))
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
      (lambda (_gerbil-libdir158012_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir158012_)))
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
      (lambda (_dir158010_) (delete-file-or-directory _dir158010_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157984_ _opts157985_)
        (if (let () (declare (not safe)) (string? _srcpath157984_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157984_)))
        (let ((_outdir157987_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157985_)))
              (_invoke-gsc?157988_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157985_)))
              (_gsc-options157989_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157985_)))
              (_keep-scm?157990_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157985_)))
              (_verbosity157991_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157985_)))
              (_optimize157992_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157985_)))
              (_debug157993_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157985_)))
              (_gen-ssxi157994_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157985_))))
          (if _outdir157987_
              (let ((__tmp158112
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157987_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158112))
              '#!void)
          (if _optimize157992_
              (let ((__tmp158113
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158113))
              '#!void)
          (let ((__tmp158117
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157984_))
                   (let ((__tmp158118
                          (let ((__tmp158119
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157984_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158119))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp158118))))
                (__tmp158116
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158114
                 (let ((__tmp158115
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157984_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp158115))))
            (declare (not safe))
            (call-with-parameters
             __tmp158117
             gxc#current-compile-output-dir
             _outdir157987_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157988_
             gxc#current-compile-gsc-options
             _gsc-options157989_
             gxc#current-compile-keep-scm
             _keep-scm?157990_
             gxc#current-compile-verbose
             _verbosity157991_
             gxc#current-compile-optimize
             _optimize157992_
             gxc#current-compile-debug
             _debug157993_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157994_
             gxc#current-compile-timestamp
             __tmp158116
             gxc#current-compile-context
             __tmp158114
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath158003_)
        (let ((_opts158005_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath158003_ _opts158005_))))
    (define gxc#compile-module
      (lambda _g158121_
        (let ((_g158120_ (let () (declare (not safe)) (##length _g158121_))))
          (cond ((let () (declare (not safe)) (##fx= _g158120_ 1))
                 (apply (lambda (_srcpath158003_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath158003_)))
                        _g158121_))
                ((let () (declare (not safe)) (##fx= _g158120_ 2))
                 (apply (lambda (_srcpath158007_ _opts158008_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath158007_
                             _opts158008_)))
                        _g158121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g158121_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157960_ _opts157961_)
        (if (let () (declare (not safe)) (string? _srcpath157960_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157960_)))
        (let ((_outdir157963_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157961_)))
              (_invoke-gsc?157964_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157961_)))
              (_gsc-options157965_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157961_)))
              (_keep-scm?157966_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157961_)))
              (_verbosity157967_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157961_)))
              (_debug157968_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157961_))))
          (if _outdir157963_
              (let ((__tmp158122
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157963_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158122))
              '#!void)
          (let ((__tmp158126
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157960_))
                   (let ((__tmp158127
                          (let ((__tmp158128
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157960_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158128))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp158127
                      _opts157961_))))
                (__tmp158125
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158123
                 (let ((__tmp158124
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157960_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp158124))))
            (declare (not safe))
            (call-with-parameters
             __tmp158126
             gxc#current-compile-output-dir
             _outdir157963_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157964_
             gxc#current-compile-gsc-options
             _gsc-options157965_
             gxc#current-compile-keep-scm
             _keep-scm?157966_
             gxc#current-compile-verbose
             _verbosity157967_
             gxc#current-compile-debug
             _debug157968_
             gxc#current-compile-timestamp
             __tmp158125
             gxc#current-compile-context
             __tmp158123
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157976_)
        (let ((_opts157978_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157976_ _opts157978_))))
    (define gxc#compile-exe
      (lambda _g158130_
        (let ((_g158129_ (let () (declare (not safe)) (##length _g158130_))))
          (cond ((let () (declare (not safe)) (##fx= _g158129_ 1))
                 (apply (lambda (_srcpath157976_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157976_)))
                        _g158130_))
                ((let () (declare (not safe)) (##fx= _g158129_ 2))
                 (apply (lambda (_srcpath157980_ _opts157981_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157980_ _opts157981_)))
                        _g158130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g158130_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157956_ _opts157957_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157957_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157956_
               _opts157957_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157956_
               _opts157957_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157839_ _opts157840_)
        (letrec ((_generate-stub157842_
                  (lambda (_builtin-modules157952_)
                    (let ((_mod-main157954_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157839_ 'main))))
                      (write (let ((__tmp158131
                                    (let ((__tmp158132
                                           (let ((__tmp158133
                                                  (let ((__tmp158134
                                                         (let ((__tmp158136
                                                                (let ((__tmp158137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157952_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158137)))
                       (__tmp158135
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp158136 __tmp158135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp158134))))
                                             (declare (not safe))
                                             (cons __tmp158133 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp158132))))
                               (declare (not safe))
                               (cons 'define __tmp158131)))
                      (write (let ((__tmp158138
                                    (let ((__tmp158177
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158139
                                           (let ((__tmp158140
                                                  (let ((__tmp158141
                                                         (let ((__tmp158165
                                                                (let ((__tmp158166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158167
                                      (let ((__tmp158175
                                             (let ((__tmp158176
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp158176)))
                                            (__tmp158168
                                             (let ((__tmp158169
                                                    (let ((__tmp158170
                                                           (let ((__tmp158171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158172
                                 (let ((__tmp158173
                                        (let ((__tmp158174
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp158174 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp158173))))
                            (declare (not safe))
                            (cons __tmp158172 '()))))
                     (declare (not safe))
                     (cons _mod-main157954_ __tmp158171))))
              (declare (not safe))
              (cons 'apply __tmp158170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158169 '()))))
                                        (declare (not safe))
                                        (cons __tmp158175 __tmp158168))))
                                 (declare (not safe))
                                 (cons '() __tmp158167))))
                          (declare (not safe))
                          (cons 'lambda __tmp158166)))
                       (__tmp158142
                        (let ((__tmp158143
                               (let ((__tmp158144
                                      (let ((__tmp158145
                                             (let ((__tmp158156
                                                    (let ((__tmp158157
                                                           (let ((__tmp158158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158159
                                 (let ((__tmp158160
                                        (let ((__tmp158161
                                               (let ((__tmp158162
                                                      (let ((__tmp158163
                                                             (let ((__tmp158164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp158164 '()))))
                (declare (not safe))
                (cons 'force-output __tmp158163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp158162 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp158161))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp158160))))
                            (declare (not safe))
                            (cons __tmp158159 '()))))
                     (declare (not safe))
                     (cons 'void __tmp158158))))
              (declare (not safe))
              (cons 'with-catch __tmp158157)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp158146
                                                    (let ((__tmp158147
                                                           (let ((__tmp158148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158149
                                 (let ((__tmp158150
                                        (let ((__tmp158151
                                               (let ((__tmp158152
                                                      (let ((__tmp158153
                                                             (let ((__tmp158154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp158155
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp158155 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp158154))))
                (declare (not safe))
                (cons __tmp158153 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp158152))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp158151))))
                                   (declare (not safe))
                                   (cons __tmp158150 '()))))
                            (declare (not safe))
                            (cons 'void __tmp158149))))
                     (declare (not safe))
                     (cons 'with-catch __tmp158148))))
              (declare (not safe))
              (cons __tmp158147 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158156
                                                     __tmp158146))))
                                        (declare (not safe))
                                        (cons '() __tmp158145))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp158144))))
                          (declare (not safe))
                          (cons __tmp158143 '()))))
                   (declare (not safe))
                   (cons __tmp158165 __tmp158142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp158141))))
                                             (declare (not safe))
                                             (cons __tmp158140 '()))))
                                      (declare (not safe))
                                      (cons __tmp158177 __tmp158139))))
                               (declare (not safe))
                               (cons 'define __tmp158138)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157843_
                  (lambda (_libgerbil157950_)
                    (call-with-input-file
                     (string-append _libgerbil157950_ '".ldd")
                     read)))
                 (_replace-extension157844_
                  (lambda (_path157947_ _ext157948_)
                    (string-append
                     (path-strip-extension _path157947_)
                     _ext157948_)))
                 (_not-exclude-module?157845_
                  (lambda (_ctx157943_)
                    (let ((_id-str157945_
                           (symbol->string
                            (##structure-ref
                             _ctx157943_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp158179
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157945_))))
                            (declare (not safe))
                            (not __tmp158179))
                          (let ((__tmp158178
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157945_))))
                            (declare (not safe))
                            (not __tmp158178))
                          '#f))))
                 (_not-file-empty?157846_
                  (lambda (_path157941_)
                    (let ((__tmp158180
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157941_))))
                      (declare (not safe))
                      (not __tmp158180))))
                 (_compile-stub157847_
                  (lambda (_output-scm157854_ _output-bin157855_)
                    (let* ((_gerbil-home157857_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157859_
                            (path-expand '"lib" _gerbil-home157857_))
                           (_gerbil-staticdir157861_
                            (path-expand '"static" _gerbil-libdir157859_))
                           (_gxlink157863_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157859_))
                           (_tmp157865_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157869_
                            (lambda (_f157867_)
                              (path-expand
                               (path-strip-directory _f157867_)
                               _tmp157865_)))
                           (_deps157871_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157839_)))
                           (_deps157873_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?157845_
                                      _deps157871_)))
                           (_src-deps-scm157875_
                            (map gxc#find-static-module-file _deps157873_))
                           (_src-deps-scm157877_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?157846_
                                      _src-deps-scm157875_)))
                           (_src-deps-scm157879_
                            (map path-expand _src-deps-scm157877_))
                           (_deps-scm157881_
                            (map _tmp-path157869_ _src-deps-scm157879_))
                           (_deps-c157887_
                            (map (lambda (_g157882157884_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157844_
                                      _g157882157884_
                                      '".c")))
                                 _deps-scm157881_))
                           (_deps-o157893_
                            (map (lambda (_g157888157890_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157844_
                                      _g157888157890_
                                      '".o")))
                                 _deps-scm157881_))
                           (_src-bin-scm157895_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157839_)))
                           (_src-bin-scm157897_
                            (path-expand _src-bin-scm157895_))
                           (_bin-scm157899_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157869_ _src-bin-scm157897_)))
                           (_bin-c157901_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157844_
                               _bin-scm157899_
                               '".c")))
                           (_bin-o157903_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157844_
                               _bin-scm157899_
                               '".o")))
                           (_output-bin157905_
                            (path-expand _output-bin157855_))
                           (_output-scm157907_
                            (path-expand _output-scm157854_))
                           (_output-c157909_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157844_
                               _output-scm157907_
                               '".c")))
                           (_output-o157911_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157844_
                               _output-scm157907_
                               '".o")))
                           (_output_-c157913_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157844_
                               _output-scm157907_
                               '"_.c")))
                           (_output_-o157915_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157844_
                               _output-scm157907_
                               '"_.o")))
                           (_gsc-link-opts157917_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157919_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157921_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157861_)))
                           (_output-ld-opts157923_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157925_
                            (path-expand '"libgerbil.a" _gerbil-libdir157859_))
                           (_libgerbil.so157927_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157859_))
                           (_libgerbil-ld-opts157929_
                            (if (file-exists? _libgerbil.so157927_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157843_
                                   _libgerbil.so157927_))
                                (if (file-exists? _libgerbil.a157925_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157843_
                                       _libgerbil.a157925_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157925_
                                       _libgerbil.so157927_)))))
                           (_rpath157931_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157859_)))
                           (_builtin-modules157935_
                            (map (lambda (_mod157933_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157933_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157839_ _deps157873_)))))
                      (let ((__tmp158181
                             (lambda ()
                               (let ((__tmp158182
                                      (path-directory _output-bin157905_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158182)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158181))
                      (let ((__tmp158183
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157842_
                                  _builtin-modules157935_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157907_
                         __tmp158183))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158184
                                   (lambda () (create-directory _tmp157865_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp158184))
                            (for-each
                             copy-file
                             _src-deps-scm157879_
                             _deps-scm157881_)
                            (copy-file _src-bin-scm157897_ _bin-scm157899_)
                            (let ((__tmp158192
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158185
                                   (let ((__tmp158186
                                          (let ((__tmp158187
                                                 (let ((__tmp158188
                                                        (let ((__tmp158189
                                                               (let ((__tmp158190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158191
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157907_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157899_ __tmp158191))))
                         (declare (not safe))
                         (foldr1 cons __tmp158190 _deps-scm157881_))))
                  (declare (not safe))
                  (foldr1 cons __tmp158189 _gsc-link-opts157917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157863_
                                                         __tmp158188))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp158187))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158186))))
                              (declare (not safe))
                              (gxc#invoke __tmp158192 __tmp158185))
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
                                       (cons _output_-c157913_ '()))))
                                (declare (not safe))
                                (cons _output-c157909_ __tmp158199))))
                         (declare (not safe))
                         (cons _bin-c157901_ __tmp158198))))
                  (declare (not safe))
                  (foldr1 cons __tmp158197 _deps-c157887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158196
                                                           _gsc-static-opts157921_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158195
                                                    _gsc-cc-opts157919_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158194))))
                              (declare (not safe))
                              (gxc#invoke __tmp158200 __tmp158193))
                            (let ((__tmp158213
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158201
                                   (let ((__tmp158202
                                          (let ((__tmp158203
                                                 (let ((__tmp158204
                                                        (let ((__tmp158205
                                                               (let ((__tmp158206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158207
                                     (let ((__tmp158208
                                            (let ((__tmp158209
                                                   (let ((__tmp158210
                                                          (let ((__tmp158211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp158212
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157929_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp158212))))
                    (declare (not safe))
                    (cons _gerbil-libdir157859_ __tmp158211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp158210))))
                                              (declare (not safe))
                                              (cons _rpath157931_
                                                    __tmp158209))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp158208
                                               _output-ld-opts157923_))))
                                (declare (not safe))
                                (cons _output_-o157915_ __tmp158207))))
                         (declare (not safe))
                         (cons _output-o157911_ __tmp158206))))
                  (declare (not safe))
                  (cons _bin-o157903_ __tmp158205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158204
                                                           _deps-o157893_))))
                                            (declare (not safe))
                                            (cons _output-bin157905_
                                                  __tmp158203))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158202))))
                              (declare (not safe))
                              (gxc#invoke __tmp158213 __tmp158201))
                            (for-each
                             delete-file
                             (let ((__tmp158214
                                    (let ((__tmp158215
                                           (let ((__tmp158216
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157915_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157911_
                                                   __tmp158216))))
                                      (declare (not safe))
                                      (cons _output_-c157913_ __tmp158215))))
                               (declare (not safe))
                               (cons _output-c157909_ __tmp158214)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157865_)))
                          '#!void)))))
          (let* ((_output-bin157849_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157839_ _opts157840_)))
                 (_output-scm157851_
                  (string-append _output-bin157849_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157847_ _output-scm157851_ _output-bin157849_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157851_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx157664_ _opts157665_)
        (letrec ((_reset-declare157667_
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
                 (_generate-stub157668_
                  (lambda (_deps157830_)
                    (let ((_mod-main157832_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157664_ 'main)))
                          (_reset-decl157833_
                           (let ()
                             (declare (not safe))
                             (_reset-declare157667_)))
                          (_user-decl157834_
                           (let ()
                             (declare (not safe))
                             (_user-declare157669_))))
                      (for-each
                       (lambda (_dep157836_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157833_)
                         (newline)
                         (if _user-decl157834_
                             (begin (write _user-decl157834_) (newline))
                             '#!void)
                         (write (let ((__tmp158217
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157836_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp158217)))
                         (newline))
                       _deps157830_)
                      (write (let ((__tmp158218
                                    (let ((__tmp158231
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158219
                                           (let ((__tmp158227
                                                  (let ((__tmp158228
                                                         (let ((__tmp158229
                                                                (let ((__tmp158230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158230))))
                   (declare (not safe))
                   (cons __tmp158229 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp158228)))
                                                 (__tmp158220
                                                  (let ((__tmp158221
                                                         (let ((__tmp158222
                                                                (let ((__tmp158223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158224
                                      (let ((__tmp158225
                                             (let ((__tmp158226
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp158226 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp158225))))
                                 (declare (not safe))
                                 (cons __tmp158224 '()))))
                          (declare (not safe))
                          (cons _mod-main157832_ __tmp158223))))
                   (declare (not safe))
                   (cons 'apply __tmp158222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158221 '()))))
                                             (declare (not safe))
                                             (cons __tmp158227 __tmp158220))))
                                      (declare (not safe))
                                      (cons __tmp158231 __tmp158219))))
                               (declare (not safe))
                               (cons 'define __tmp158218)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare157669_
                  (lambda ()
                    (let* ((_gsc-opts157735_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts157665_)))
                           (_gsc-prelude157737_
                            (if _gsc-opts157735_
                                (member '"-prelude" _gsc-opts157735_)
                                '#f))
                           (_gsc-prelude157739_
                            (if _gsc-prelude157737_
                                (read (open-input-string
                                       (cadr _gsc-prelude157737_)))
                                '#f)))
                      (let _lp157742_ ((_rest157744_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude157739_ '())))
                                       (_user-decls157745_ '()))
                        (let* ((_rest157746157754_ _rest157744_)
                               (_else157748157762_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls157745_))
                                      '#f
                                      (let ((__tmp158232
                                             (reverse _user-decls157745_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp158232)))))
                               (_K157750157818_
                                (lambda (_rest157765_ _expr157766_)
                                  (let* ((_expr157767157779_ _expr157766_)
                                         (_else157770157787_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp157742_
                                               _rest157765_
                                               _user-decls157745_)))))
                                    (let ((_K157775157808_
                                           (lambda (_decls157806_)
                                             (let ((__tmp158233
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls157745_
                                                              _decls157806_))))
                                               (declare (not safe))
                                               (_lp157742_
                                                _rest157765_
                                                __tmp158233))))
                                          (_K157772157793_
                                           (lambda (_exprs157791_)
                                             (let ((__tmp158234
                                                    (append _exprs157791_
                                                            _rest157765_)))
                                               (declare (not safe))
                                               (_lp157742_
                                                __tmp158234
                                                _user-decls157745_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr157767157779_))
                                          (let ((_tl157777157813_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr157767157779_)))
                                                (_hd157776157811_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr157767157779_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157776157811_
                                                         'declare))
                                                (let ((_decls157816_
                                                       _tl157777157813_))
                                                  (declare (not safe))
                                                  (_K157775157808_
                                                   _decls157816_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157776157811_
                                                             'begin))
                                                    (let ((_exprs157801_
                                                           _tl157777157813_))
                                                      (declare (not safe))
                                                      (_K157772157793_
                                                       _exprs157801_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else157770157787_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else157770157787_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest157746157754_))
                              (let ((_hd157751157821_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest157746157754_)))
                                    (_tl157752157823_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest157746157754_))))
                                (let* ((_expr157826_ _hd157751157821_)
                                       (_rest157828_ _tl157752157823_))
                                  (declare (not safe))
                                  (_K157750157818_ _rest157828_ _expr157826_)))
                              (let ()
                                (declare (not safe))
                                (_else157748157762_))))))))
                 (_compile-stub157670_
                  (lambda (_output-scm157677_ _output-bin157678_)
                    (let* ((_gerbil-home157680_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157682_
                            (path-expand '"lib" _gerbil-home157680_))
                           (_runtime157684_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp157686_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home157680_))
                           (_include-gambit-sharp157688_
                            (string-append
                             '"(include \""
                             _gambit-sharp157686_
                             '"\")"))
                           (_bin-scm157690_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157664_)))
                           (_deps157692_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157664_)))
                           (_deps157694_
                            (map gxc#find-static-module-file _deps157692_))
                           (_deps157699_
                            (let ((__tmp158235
                                   (lambda (_$obj157696_)
                                     (let ((__tmp158236
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj157696_))))
                                       (declare (not safe))
                                       (not __tmp158236)))))
                              (declare (not safe))
                              (filter __tmp158235 _deps157694_)))
                           (_deps157703_
                            (let ((__tmp158237
                                   (lambda (_f157701_)
                                     (let ((__tmp158238
                                            (member _f157701_
                                                    _runtime157684_)))
                                       (declare (not safe))
                                       (not __tmp158238)))))
                              (declare (not safe))
                              (filter __tmp158237 _deps157699_)))
                           (_output-base157705_
                            (string-append
                             (path-strip-extension _output-scm157677_)))
                           (_output-c157707_
                            (string-append _output-base157705_ '".c"))
                           (_output-o157709_
                            (string-append _output-base157705_ '".o"))
                           (_output-c_157711_
                            (string-append _output-base157705_ '"_.c"))
                           (_output-o_157713_
                            (string-append _output-base157705_ '"_.o"))
                           (_gsc-link-opts157715_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157717_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157719_
                            (let ((__tmp158239
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir157682_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp158239)))
                           (_output-ld-opts157721_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157723_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp158241
                                       (let ((__tmp158242
                                              (let ((__tmp158243
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp157688_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp158243))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp158242))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158241))
                                (let ((__tmp158240
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp157688_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158240))))
                           (_gsc-link-opts157725_
                            (append _gsc-link-opts157715_
                                    _gsc-gx-macros157723_))
                           (_rpath157727_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157682_)))
                           (_default-ld-options157729_
                            (let ((__tmp158244
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp158244))))
                      (let ((__tmp158245
                             (lambda ()
                               (let ((__tmp158246
                                      (path-directory _output-bin157678_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158246)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158245))
                      (let ((__tmp158247
                             (lambda ()
                               (let ((__tmp158248
                                      (let ((__tmp158249
                                             (let ((__tmp158250
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm157690_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp158250
                                                       _deps157703_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp158249
                                                _runtime157684_))))
                                 (declare (not safe))
                                 (_generate-stub157668_ __tmp158248)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157677_
                         __tmp158247))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158256
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158251
                                   (let ((__tmp158252
                                          (let ((__tmp158253
                                                 (let ((__tmp158254
                                                        (let ((__tmp158255
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm157677_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp158255 _gsc-link-opts157725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_157711_
                                                         __tmp158254))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp158253))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158252))))
                              (declare (not safe))
                              (gxc#invoke __tmp158256 __tmp158251))
                            (let ((__tmp158262
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158257
                                   (let ((__tmp158258
                                          (let ((__tmp158259
                                                 (let ((__tmp158260
                                                        (let ((__tmp158261
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_157711_ '()))))
                  (declare (not safe))
                  (cons _output-c157707_ __tmp158261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158260
                                                           _gsc-static-opts157719_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158259
                                                    _gsc-cc-opts157717_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158258))))
                              (declare (not safe))
                              (gxc#invoke __tmp158262 __tmp158257))
                            (let ((__tmp158272
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158263
                                   (let ((__tmp158264
                                          (let ((__tmp158265
                                                 (let ((__tmp158266
                                                        (let ((__tmp158267
                                                               (let ((__tmp158268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158269
                                     (let ((__tmp158270
                                            (let ((__tmp158271
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options157729_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir157682_
                                                    __tmp158271))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp158270))))
                                (declare (not safe))
                                (cons _rpath157727_ __tmp158269))))
                         (declare (not safe))
                         (foldr1 cons __tmp158268 _output-ld-opts157721_))))
                  (declare (not safe))
                  (cons _output-o_157713_ __tmp158267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o157709_
                                                         __tmp158266))))
                                            (declare (not safe))
                                            (cons _output-bin157678_
                                                  __tmp158265))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158264))))
                              (declare (not safe))
                              (gxc#invoke __tmp158272 __tmp158263)))
                          '#!void)))))
          (let* ((_output-bin157672_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157664_ _opts157665_)))
                 (_output-scm157674_
                  (string-append _output-bin157672_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157670_ _output-scm157674_ _output-bin157672_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157674_))))))
    (define gxc#find-export-binding
      (lambda (_ctx157614_ _id157615_)
        (let ((_$e157661_
               (let ((__tmp158274
                      (lambda (_e157616157618_)
                        (let* ((_g157620157630_ _e157616157618_)
                               (_else157622157638_ (lambda () '#f))
                               (_K157624157642_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g157620157630_
                                 'gx#module-export::t))
                              (let* ((_e157625157645_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157620157630_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e157626157648_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157620157630_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e157627157651_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157620157630_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e157627157651_ '0))
                                    (let ((_e157628157654_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g157620157630_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g157656157658_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g157656157658_
                                                    _id157615_)))
                                           _e157628157654_)
                                          (let ()
                                            (declare (not safe))
                                            (_K157624157642_))
                                          (let ()
                                            (declare (not safe))
                                            (_else157622157638_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else157622157638_))))
                              (let ()
                                (declare (not safe))
                                (_else157622157638_))))))
                     (__tmp158273
                      (##structure-ref
                       _ctx157614_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp158274 __tmp158273))))
          (if _$e157661_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e157661_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx157606_ _id157607_)
        (let ((_$e157609_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx157606_ _id157607_))))
          (if _$e157609_
              ((lambda (_bind157612_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind157612_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id157607_)))
                 (##structure-ref _bind157612_ '1 gx#binding::t '#f))
               _$e157609_)
              (let ((__tmp158275
                     (##structure-ref
                      _ctx157606_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp158275
                 _id157607_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157493_)
        (letrec* ((_ht157495_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template157496_
                   (lambda (_in157558_ _phi157559_)
                     (let ((_iphi157561_
                            (fx+ _phi157559_
                                 (##direct-structure-ref
                                  _in157558_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports157562_
                            (##structure-ref
                             (##direct-structure-ref
                              _in157558_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp157564_ ((_rest157566_ _imports157562_)
                                        (_r157567_ '()))
                         (let* ((_rest157568157576_ _rest157566_)
                                (_else157570157584_ (lambda () _r157567_))
                                (_K157572157594_
                                 (lambda (_rest157587_ _in157588_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in157588_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi157561_))
                                           (let ((__tmp158282
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in157588_
                                                          _r157567_))))
                                             (declare (not safe))
                                             (_lp157564_
                                              _rest157587_
                                              __tmp158282))
                                           (let ()
                                             (declare (not safe))
                                             (_lp157564_
                                              _rest157587_
                                              _r157567_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in157588_
                                              'gx#module-import::t))
                                           (let ((_iphi157590_
                                                  (fx+ _phi157559_
                                                       (##direct-structure-ref
                                                        _in157588_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi157590_))
                                                 (let ((__tmp158280
                                                        (let ((__tmp158281
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in157588_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp158281 _r157567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp157564_
                                                    _rest157587_
                                                    __tmp158280))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp157564_
                                                    _rest157587_
                                                    _r157567_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in157588_
                                                  'gx#import-set::t))
                                               (let ((_xphi157592_
                                                      (fx+ _iphi157561_
                                                           (##direct-structure-ref
                                                            _in157588_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi157592_))
                                                     (let ((__tmp158278
                                                            (let ((__tmp158279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in157588_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp158279 _r157567_))))
               (declare (not safe))
               (_lp157564_ _rest157587_ __tmp158278))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi157592_)
                                                         (let ((__tmp158276
                                                                (let ((__tmp158277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template157496_
                                  _in157588_
                                  _iphi157561_))))
                          (declare (not safe))
                          (foldl1 cons _r157567_ __tmp158277))))
                   (declare (not safe))
                   (_lp157564_ _rest157587_ __tmp158276))
                 (let ()
                   (declare (not safe))
                   (_lp157564_ _rest157587_ _r157567_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp157564_
                                                  _rest157587_
                                                  _r157567_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest157568157576_))
                               (let ((_hd157573157597_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest157568157576_)))
                                     (_tl157574157599_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest157568157576_))))
                                 (let* ((_in157602_ _hd157573157597_)
                                        (_rest157604_ _tl157574157599_))
                                   (declare (not safe))
                                   (_K157572157594_ _rest157604_ _in157602_)))
                               (let ()
                                 (declare (not safe))
                                 (_else157570157584_))))))))
                  (_find-deps157497_
                   (lambda (_rest157504_ _deps157505_)
                     (let* ((_rest157506157514_ _rest157504_)
                            (_else157508157522_ (lambda () _deps157505_))
                            (_K157510157546_
                             (lambda (_rest157525_ _hd157526_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd157526_
                                      'gx#module-context::t))
                                   (let ((_id157528_
                                          (##structure-ref
                                           _hd157526_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports157529_
                                          (##structure-ref
                                           _hd157526_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht157495_ _id157528_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps157497_
                                            _rest157525_
                                            _deps157505_))
                                         (let ((_$e157531_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd157526_))))
                                           (if _$e157531_
                                               ((lambda (_pre157534_)
                                                  (let ((_xdeps157536_
                                                         (let ((__tmp158295
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre157534_ _imports157529_))))
                   (declare (not safe))
                   (_find-deps157497_ __tmp158295 _deps157505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht157495_
                                                       _id157528_
                                                       _hd157526_))
                                                    (let ((__tmp158296
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd157526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps157536_))))
              (declare (not safe))
              (_find-deps157497_ _rest157525_ __tmp158296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e157531_)
                                               (let ((_xdeps157538_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps157497_
                                                         _imports157529_
                                                         _deps157505_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht157495_
                                                    _id157528_
                                                    _hd157526_))
                                                 (let ((__tmp158294
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd157526_
                                                                _xdeps157538_))))
                                                   (declare (not safe))
                                                   (_find-deps157497_
                                                    _rest157525_
                                                    __tmp158294)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd157526_
                                          'gx#prelude-context::t))
                                       (let ((_id157540_
                                              (##structure-ref
                                               _hd157526_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht157495_
                                                _id157540_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps157497_
                                                _rest157525_
                                                _deps157505_))
                                             (let ((_xdeps157542_
                                                    (let ((__tmp158292
                                                           (##structure-ref
                                                            _hd157526_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps157497_
                                                       __tmp158292
                                                       _deps157505_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht157495_
                                                      _id157540_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps157497_
                                                      _rest157525_
                                                      _xdeps157542_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht157495_
                                                        _id157540_
                                                        _hd157526_))
                                                     (let ((__tmp158293
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd157526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps157542_))))
               (declare (not safe))
               (_find-deps157497_ _rest157525_ __tmp158293)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd157526_
                                              'gx#module-import::t))
                                           (if (let ((__tmp158291
                                                      (##direct-structure-ref
                                                       _hd157526_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp158291))
                                               (let ((__tmp158289
                                                      (let ((__tmp158290
                                                             (##direct-structure-ref
                                                              _hd157526_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158290
                                                              _rest157525_))))
                                                 (declare (not safe))
                                                 (_find-deps157497_
                                                  __tmp158289
                                                  _deps157505_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps157497_
                                                  _rest157525_
                                                  _deps157505_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd157526_
                                                  'gx#module-export::t))
                                               (let ((__tmp158287
                                                      (let ((__tmp158288
                                                             (##direct-structure-ref
                                                              _hd157526_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158288
                                                              _rest157525_))))
                                                 (declare (not safe))
                                                 (_find-deps157497_
                                                  __tmp158287
                                                  _deps157505_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd157526_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp158286
                                                              (##direct-structure-ref
                                                               _hd157526_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp158286))
                                                       (let ((__tmp158284
                                                              (let ((__tmp158285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd157526_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp158285 _rest157525_))))
                 (declare (not safe))
                 (_find-deps157497_ __tmp158284 _deps157505_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd157526_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps157544_
                           (let ()
                             (declare (not safe))
                             (_import-set-template157496_ _hd157526_ '0)))
                          (__tmp158283
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest157525_ _xdeps157544_))))
                     (declare (not safe))
                     (_find-deps157497_ __tmp158283 _deps157505_))
                   (let ()
                     (declare (not safe))
                     (_find-deps157497_ _rest157525_ _deps157505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd157526_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest157506157514_))
                           (let ((_hd157511157549_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest157506157514_)))
                                 (_tl157512157551_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest157506157514_))))
                             (let* ((_hd157554_ _hd157511157549_)
                                    (_rest157556_ _tl157512157551_))
                               (declare (not safe))
                               (_K157510157546_ _rest157556_ _hd157554_)))
                           (let ()
                             (declare (not safe))
                             (_else157508157522_)))))))
          (reverse (let ((__tmp158297
                          (let ((__tmp158298
                                 (let ((_$e157499_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx157493_))))
                                   (if _$e157499_
                                       ((lambda (_pre157502_)
                                          (let ((__tmp158299
                                                 (##structure-ref
                                                  _ctx157493_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre157502_ __tmp158299)))
                                        _$e157499_)
                                       (##structure-ref
                                        _ctx157493_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps157497_ __tmp158298 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp158297))))))
    (define gxc#find-static-module-file
      (lambda (_ctx157424_)
        (let* ((_context-id157426_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx157424_
                       'gx#module-context::t))
                    (##structure-ref _ctx157424_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx157424_)))
               (_scm157428_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id157426_))
                 '".scm"))
               (_dirs157430_ (gx#current-expander-module-library-path))
               (_dirs157436_
                (let ((_user-libpath157432_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath157432_
                      (let ((_user-libpath157434_
                             (path-expand '"lib" _user-libpath157432_)))
                        (if (member _user-libpath157434_ _dirs157430_)
                            _dirs157430_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath157434_ _dirs157430_))))
                      _dirs157430_)))
               (_dirs157445_
                (let ((_$e157438_ (gxc#current-compile-output-dir)))
                  (if _$e157438_
                      ((lambda (_g157440157442_)
                         (let ()
                           (declare (not safe))
                           (cons _g157440157442_ _dirs157436_)))
                       _$e157438_)
                      _dirs157436_)))
               (_dirs157451_
                (map (lambda (_g157446157448_)
                       (path-expand '"static" _g157446157448_))
                     _dirs157445_)))
          (let _lp157454_ ((_rest157456_ _dirs157451_))
            (let* ((_rest157457157465_ _rest157456_)
                   (_else157459157473_
                    (lambda ()
                      (let ((__tmp158300
                             (##structure-ref
                              _ctx157424_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp158300
                         _scm157428_))))
                   (_K157461157481_
                    (lambda (_rest157476_ _dir157477_)
                      (let ((_path157479_
                             (path-expand _scm157428_ _dir157477_)))
                        (if (file-exists? _path157479_)
                            _path157479_
                            (let ()
                              (declare (not safe))
                              (_lp157454_ _rest157476_)))))))
              (if (let () (declare (not safe)) (##pair? _rest157457157465_))
                  (let ((_hd157462157484_
                         (let ()
                           (declare (not safe))
                           (##car _rest157457157465_)))
                        (_tl157463157486_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157457157465_))))
                    (let* ((_dir157489_ _hd157462157484_)
                           (_rest157491_ _tl157463157486_))
                      (declare (not safe))
                      (_K157461157481_ _rest157491_ _dir157489_)))
                  (let () (declare (not safe)) (_else157459157473_))))))))
    (define gxc#file-empty?
      (lambda (_path157422_)
        (let ((__tmp158301 (file-info-size (file-info _path157422_ '#t))))
          (declare (not safe))
          (zero? __tmp158301))))
    (define gxc#compile-top-module
      (lambda (_ctx157411_)
        (let ((__tmp158305
               (lambda ()
                 (let ((__tmp158306
                        (##structure-ref
                         _ctx157411_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp158306))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp158307
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx157411_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp158307))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx157411_))
                 (if (let ((__tmp158310
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx157411_))))
                       (declare (not safe))
                       (null? __tmp158310))
                     (let* ((_thr1157416_
                             (let ((__tmp158308
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx157411_)))))
                               (declare (not safe))
                               (spawn __tmp158308)))
                            (_thr2157419_
                             (let ((__tmp158309
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx157411_)))))
                               (declare (not safe))
                               (spawn __tmp158309))))
                       (let () (declare (not safe)) (gxc#join! _thr1157416_))
                       (let () (declare (not safe)) (gxc#join! _thr2157419_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx157411_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx157411_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx157411_))
                     '#!void)))
              (__tmp158304
               (let ((__obj158109
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj158109)
                 __obj158109))
              (__tmp158303 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158302 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp158305
           gx#current-expander-context
           _ctx157411_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp158304
           gxc#current-compile-runtime-sections
           __tmp158303
           gxc#current-compile-runtime-names
           __tmp158302))))
    (define gxc#collect-bindings
      (lambda (_ctx157409_)
        (let ((__tmp158311
               (##structure-ref _ctx157409_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp158311))))
    (define gxc#compile-runtime-code
      (lambda (_ctx157355_)
        (letrec ((_compile1157357_
                  (lambda (_ctx157398_)
                    (let* ((_code157400_
                            (##structure-ref
                             _ctx157398_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt157404_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code157400_))
                                (let ((_idstr157402_
                                       (let ((__tmp158312
                                              (##structure-ref
                                               _ctx157398_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp158312))))
                                  (string-append _idstr157402_ '"__0"))
                                '#f)))
                      (if _rt157404_
                          (begin
                            (let ((__tmp158313
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp158313 _ctx157398_ _rt157404_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code157359_
                               _ctx157398_
                               _code157400_)))
                          (let ((_path157407_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx157398_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path157407_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code157360_
                         _ctx157398_
                         _code157400_
                         _rt157404_)))))
                 (_context-timestamp157358_
                  (lambda (_ctx157396_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx157396_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code157359_
                  (lambda (_ctx157378_ _code157379_)
                    (let* ((_lifts157381_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code157384_
                            (let ((__tmp158316
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code157379_))))
                                  (__tmp158315
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp158314
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158316
                               gx#current-expander-context
                               _ctx157378_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts157381_
                               gxc#current-compile-marks
                               __tmp158315
                               gxc#current-compile-identifiers
                               __tmp158314)))
                           (_runtime-code157386_
                            (if (let ((__tmp158320 (unbox _lifts157381_)))
                                  (declare (not safe))
                                  (null? __tmp158320))
                                _runtime-code157384_
                                (let ((__tmp158317
                                       (let ((__tmp158319
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code157384_
                                                      '())))
                                             (__tmp158318
                                              (reverse (unbox _lifts157381_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp158319
                                                 __tmp158318))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158317))))
                           (_runtime-code157388_
                            (let ((__tmp158321
                                   (let ((__tmp158323
                                          (let ((__tmp158324
                                                 (let ((__tmp158327
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp157358_
                                                           _ctx157378_)))
                                                       (__tmp158325
                                                        (let ((__tmp158326
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp158326
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp158327
                                                         __tmp158325))))
                                            (declare (not safe))
                                            (cons 'define __tmp158324)))
                                         (__tmp158322
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code157386_ '()))))
                                     (declare (not safe))
                                     (cons __tmp158323 __tmp158322))))
                              (declare (not safe))
                              (cons 'begin __tmp158321)))
                           (_scm0157390_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157378_
                               '0
                               '".scm"))))
                      (let ((_scms157393_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx157378_))))
                        (let ((__tmp158328
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0157390_
                                    _runtime-code157388_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp158328
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms157393_)
                            (delete-file _scms157393_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0157390_
                           '" => "
                           _scms157393_))
                        (copy-file _scm0157390_ _scms157393_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0157390_))))))
                 (_generate-loader-code157360_
                  (lambda (_ctx157367_ _code157368_ _rt157369_)
                    (let* ((_loader-code157372_
                            (let ((__tmp158329
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code157368_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158329
                               gx#current-expander-context
                               _ctx157367_)))
                           (_loader-code157374_
                            (if _rt157369_
                                (let ((__tmp158330
                                       (let ((__tmp158331
                                              (let ((__tmp158332
                                                     (let ((__tmp158333
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt157369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp158333))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158332 '()))))
                                         (declare (not safe))
                                         (cons _loader-code157372_
                                               __tmp158331))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158330))
                                _loader-code157372_)))
                      (let ((__tmp158334
                             (lambda ()
                               (let ((__tmp158335
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157367_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp158335
                                  _loader-code157374_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp158334
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules157362_
                 (let ((__tmp158336
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx157355_))))
                   (declare (not safe))
                   (cons _ctx157355_ __tmp158336))))
            (for-each
             (lambda (_ctx157364_)
               (let ((__tmp158337
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1157357_ _ctx157364_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp158337
                  gxc#current-compile-decls
                  '())))
             _all-modules157362_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx157252_)
        (letrec ((_compile-ssi157254_
                  (lambda (_code157325_)
                    (let* ((_path157327_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157252_
                               '#f
                               '".ssi")))
                           (_prelude157338_
                            (let* ((_super157329_
                                    (##structure-ref
                                     _ctx157252_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e157331_
                                    (##structure-ref
                                     _super157329_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e157331_
                                  ((lambda (_g157333157335_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g157333157335_)))
                                   _$e157331_)
                                  ':<root>)))
                           (_ns157340_
                            (##structure-ref
                             _ctx157252_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr157342_
                            (symbol->string
                             (##structure-ref
                              _ctx157252_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg157349_
                            (let ((_$e157344_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr157342_ '#\/))))
                              (if _$e157344_
                                  ((lambda (_x157347_)
                                     (string->symbol
                                      (substring _idstr157342_ '0 _x157347_)))
                                   _$e157344_)
                                  '#f)))
                           (_rt157351_
                            (let ((__tmp158338
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp158338 _ctx157252_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path157327_))
                      (let ((__tmp158339
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude157338_))
                               (if _pkg157349_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg157349_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns157340_))
                               (newline)
                               (pretty-print _code157325_)
                               (if _rt157351_
                                   (pretty-print
                                    (let ((__tmp158340
                                           (let ((__tmp158344
                                                  (let ((__tmp158345
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp158345)))
                                                 (__tmp158341
                                                  (let ((__tmp158342
                                                         (let ((__tmp158343
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt157351_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp158343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158342 '()))))
                                             (declare (not safe))
                                             (cons __tmp158344 __tmp158341))))
                                      (declare (not safe))
                                      (cons '%#call __tmp158340)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path157327_
                         __tmp158339)))))
                 (_compile-phi157255_
                  (lambda (_part157265_)
                    (let* ((_part157266157279_ _part157265_)
                           (_E157268157283_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part157266157279_))))
                           (_K157269157294_
                            (lambda (_code157286_
                                     _n157287_
                                     _phi157288_
                                     _phi-ctx157289_)
                              (let* ((_code157292_
                                      (let ((__tmp158346
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code157286_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp158346
                                         gx#current-expander-context
                                         _phi-ctx157289_
                                         gx#current-expander-phi
                                         _phi157288_)))
                                     (__tmp158347
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157252_
                                         _n157287_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp158347
                                 _code157292_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part157266157279_))
                          (let ((_hd157270157297_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part157266157279_)))
                                (_tl157271157299_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part157266157279_))))
                            (let ((_phi-ctx157302_ _hd157270157297_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl157271157299_))
                                  (let ((_hd157272157304_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl157271157299_)))
                                        (_tl157273157306_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl157271157299_))))
                                    (let ((_phi157309_ _hd157272157304_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl157273157306_))
                                          (let ((_hd157274157311_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl157273157306_)))
                                                (_tl157275157313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl157273157306_))))
                                            (let ((_n157316_ _hd157274157311_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl157275157313_))
                                                  (let ((_hd157276157318_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl157275157313_)))
                                                        (_tl157277157320_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl157275157313_))))
                                                    (let ((_code157323_
                                                           _hd157276157318_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl157277157320_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K157269157294_
                                                             _code157323_
                                                             _n157316_
                                                             _phi157309_
                                                             _phi-ctx157302_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E157268157283_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E157268157283_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E157268157283_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E157268157283_)))))
                          (let () (declare (not safe)) (_E157268157283_)))))))
          (let ((_g158348_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx157252_))))
            (begin
              (let ((_g158349_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g158348_)
                           (##vector-length _g158348_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g158349_ 2)))
                    (error "Context expects 2 values" _g158349_)))
              (let ((_ssi-code157257_
                     (let () (declare (not safe)) (##vector-ref _g158348_ 0)))
                    (_phi-code157258_
                     (let () (declare (not safe)) (##vector-ref _g158348_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi157254_ _ssi-code157257_))
                  (let ((_threads157263_
                         (map (lambda (_code157260_)
                                (let ((__tmp158350
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi157255_
                                            _code157260_)))))
                                  (declare (not safe))
                                  (spawn __tmp158350)))
                              _phi-code157258_)))
                    (for-each gxc#join! _threads157263_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx157235_)
        (let* ((_path157237_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx157235_ '#f '".ssxi.ss")))
               (_code157239_
                (let ((__tmp158351
                       (##structure-ref
                        _ctx157235_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp158351)))
               (_idstr157241_
                (symbol->string
                 (##structure-ref _ctx157235_ '1 gx#expander-context::t '#f)))
               (_pkg157248_
                (let ((_$e157243_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr157241_ '#\/))))
                  (if _$e157243_
                      ((lambda (_x157246_)
                         (string->symbol
                          (substring _idstr157241_ '0 _x157246_)))
                       _$e157243_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path157237_))
          (let ((__tmp158352
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg157248_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg157248_))
                       '#!void)
                   (newline)
                   (pretty-print _code157239_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path157237_ __tmp158352)))))
    (define gxc#generate-meta-code
      (lambda (_ctx157228_)
        (let* ((_state157230_
                (let ((__obj158110
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj158110 _ctx157228_)
                  __obj158110))
               (_ssi-code157232_
                (let ((__tmp158353
                       (##structure-ref
                        _ctx157228_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp158353 _state157230_))))
          (values _ssi-code157232_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state157230_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx157221_)
        (let ((_lifts157223_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158356
                 (lambda ()
                   (let ((_code157226_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx157221_))))
                     (if (let ((__tmp158360 (unbox _lifts157223_)))
                           (declare (not safe))
                           (null? __tmp158360))
                         _code157226_
                         (let ((__tmp158357
                                (let ((__tmp158359
                                       (let ()
                                         (declare (not safe))
                                         (cons _code157226_ '())))
                                      (__tmp158358
                                       (reverse (unbox _lifts157223_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp158359 __tmp158358))))
                           (declare (not safe))
                           (cons 'begin __tmp158357))))))
                (__tmp158355
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp158354
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp158356
             gxc#current-compile-lift
             _lifts157223_
             gxc#current-compile-marks
             __tmp158355
             gxc#current-compile-identifiers
             __tmp158354)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx157217_)
        (let ((_modules157219_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158361
                 (##structure-ref _ctx157217_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp158361 _modules157219_))
          (reverse (unbox _modules157219_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path157200_ _code157201_ _phi?157202_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path157200_))
        (let ((__tmp158362
               (lambda ()
                 (pretty-print
                  (let ((__tmp158363
                         (let ((__tmp158370
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp158364
                                (let ((__tmp158369
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp158365
                                       (let ((__tmp158368
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp158366
                                              (let ((__tmp158367
                                                     (if _phi?157202_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp158367))))
                                         (declare (not safe))
                                         (cons __tmp158368 __tmp158366))))
                                  (declare (not safe))
                                  (cons __tmp158369 __tmp158365))))
                           (declare (not safe))
                           (cons __tmp158370 __tmp158364))))
                    (declare (not safe))
                    (cons 'declare __tmp158363)))
                 (pretty-print _code157201_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path157200_ __tmp158362))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path157200_ _phi?157202_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path157200_))))
    (define gxc#compile-scm-file__0
      (lambda (_path157208_ _code157209_)
        (let ((_phi?157211_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path157208_ _code157209_ _phi?157211_))))
    (define gxc#compile-scm-file
      (lambda _g158372_
        (let ((_g158371_ (let () (declare (not safe)) (##length _g158372_))))
          (cond ((let () (declare (not safe)) (##fx= _g158371_ 2))
                 (apply (lambda (_path157208_ _code157209_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path157208_
                             _code157209_)))
                        _g158372_))
                ((let () (declare (not safe)) (##fx= _g158371_ 3))
                 (apply (lambda (_path157213_ _code157214_ _phi?157215_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path157213_
                             _code157214_
                             _phi?157215_)))
                        _g158372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g158372_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?157101_)
        (let _lp157103_ ((_rest157105_ (gxc#current-compile-gsc-options))
                         (_opts157106_ '()))
          (let* ((_rest157107157127_ _rest157105_)
                 (_else157111157135_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157101_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158373
                               (let ((__tmp158374 (reverse _opts157106_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp158374))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp158373))
                        (reverse _opts157106_)))))
            (let ((_K157121157178_
                   (lambda (_rest157176_)
                     (let ()
                       (declare (not safe))
                       (_lp157103_ _rest157176_ _opts157106_))))
                  (_K157116157160_
                   (lambda (_rest157158_)
                     (let ()
                       (declare (not safe))
                       (_lp157103_ _rest157158_ _opts157106_))))
                  (_K157113157142_
                   (lambda (_rest157139_ _opt157140_)
                     (let ((__tmp158375
                            (let ()
                              (declare (not safe))
                              (cons _opt157140_ _opts157106_))))
                       (declare (not safe))
                       (_lp157103_ _rest157139_ __tmp158375)))))
              (if (let () (declare (not safe)) (##pair? _rest157107157127_))
                  (let ((_tl157123157183_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157107157127_)))
                        (_hd157122157181_
                         (let ()
                           (declare (not safe))
                           (##car _rest157107157127_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157122157181_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157123157183_))
                            (let* ((_tl157125157186_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157123157183_)))
                                   (_rest157189_ _tl157125157186_))
                              (declare (not safe))
                              (_K157121157178_ _rest157189_))
                            (let ((_opt157150_ _hd157122157181_)
                                  (_rest157152_ _tl157123157183_))
                              (let ()
                                (declare (not safe))
                                (_K157113157142_ _rest157152_ _opt157150_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157122157181_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157123157183_))
                                (let* ((_tl157120157168_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157123157183_)))
                                       (_rest157171_ _tl157120157168_))
                                  (declare (not safe))
                                  (_K157116157160_ _rest157171_))
                                (let ((_opt157150_ _hd157122157181_)
                                      (_rest157152_ _tl157123157183_))
                                  (let ()
                                    (declare (not safe))
                                    (_K157113157142_
                                     _rest157152_
                                     _opt157150_))))
                            (let ((_opt157150_ _hd157122157181_)
                                  (_rest157152_ _tl157123157183_))
                              (let ()
                                (declare (not safe))
                                (_K157113157142_ _rest157152_ _opt157150_))))))
                  (let () (declare (not safe)) (_else157111157135_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?157195_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?157195_))))
    (define gxc#gsc-link-options
      (lambda _g158377_
        (let ((_g158376_ (let () (declare (not safe)) (##length _g158377_))))
          (cond ((let () (declare (not safe)) (##fx= _g158376_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g158377_))
                ((let () (declare (not safe)) (##fx= _g158376_ 1))
                 (apply (lambda (_phi?157197_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?157197_)))
                        _g158377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g158377_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?157002_)
        (let _lp157004_ ((_rest157006_ (gxc#current-compile-gsc-options))
                         (_opts157007_ '()))
          (let* ((_rest157008157028_ _rest157006_)
                 (_else157012157036_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157002_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158378
                               (let ((__tmp158379 (reverse _opts157007_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp158379))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp158378))
                        (reverse _opts157007_)))))
            (let ((_K157022157075_
                   (lambda (_rest157072_ _opt157073_)
                     (let ((__tmp158380
                            (let ((__tmp158381
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts157007_))))
                              (declare (not safe))
                              (cons _opt157073_ __tmp158381))))
                       (declare (not safe))
                       (_lp157004_ _rest157072_ __tmp158380))))
                  (_K157017157056_
                   (lambda (_rest157054_)
                     (let ()
                       (declare (not safe))
                       (_lp157004_ _rest157054_ _opts157007_))))
                  (_K157014157042_
                   (lambda (_rest157040_)
                     (let ()
                       (declare (not safe))
                       (_lp157004_ _rest157040_ _opts157007_)))))
              (if (let () (declare (not safe)) (##pair? _rest157008157028_))
                  (let ((_tl157024157080_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157008157028_)))
                        (_hd157023157078_
                         (let ()
                           (declare (not safe))
                           (##car _rest157008157028_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157023157078_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157024157080_))
                            (let ((_tl157026157085_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl157024157080_)))
                                  (_hd157025157083_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl157024157080_))))
                              (let ((_opt157088_ _hd157025157083_)
                                    (_rest157090_ _tl157026157085_))
                                (let ()
                                  (declare (not safe))
                                  (_K157022157075_ _rest157090_ _opt157088_))))
                            (let ((_rest157048_ _tl157024157080_))
                              (declare (not safe))
                              (_K157014157042_ _rest157048_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157023157078_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157024157080_))
                                (let* ((_tl157021157064_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157024157080_)))
                                       (_rest157067_ _tl157021157064_))
                                  (declare (not safe))
                                  (_K157017157056_ _rest157067_))
                                (let ((_rest157048_ _tl157024157080_))
                                  (declare (not safe))
                                  (_K157014157042_ _rest157048_)))
                            (let ((_rest157048_ _tl157024157080_))
                              (declare (not safe))
                              (_K157014157042_ _rest157048_)))))
                  (let () (declare (not safe)) (_else157012157036_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?157096_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?157096_))))
    (define gxc#gsc-cc-options
      (lambda _g158383_
        (let ((_g158382_ (let () (declare (not safe)) (##length _g158383_))))
          (cond ((let () (declare (not safe)) (##fx= _g158382_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g158383_))
                ((let () (declare (not safe)) (##fx= _g158382_ 1))
                 (apply (lambda (_phi?157098_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?157098_)))
                        _g158383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g158383_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156997_)
        (let* ((_user-staticdir156999_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp158384
                (let ((__tmp158385
                       (string-append
                        '"-I "
                        _staticdir156997_
                        '" -I "
                        _user-staticdir156999_)))
                  (declare (not safe))
                  (cons __tmp158385 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp158384))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156909_ ((_rest156911_ (gxc#current-compile-gsc-options))
                         (_opts156912_ '()))
          (let* ((_rest156913156933_ _rest156911_)
                 (_else156917156941_ (lambda () _opts156912_)))
            (let ((_K156927156984_
                   (lambda (_rest156982_)
                     (let ()
                       (declare (not safe))
                       (_lp156909_ _rest156982_ _opts156912_))))
                  (_K156922156962_
                   (lambda (_rest156959_ _opt156960_)
                     (let ((__tmp158386
                            (append _opts156912_
                                    (let ((__tmp158387
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt156960_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp158387)))))
                       (declare (not safe))
                       (_lp156909_ _rest156959_ __tmp158386))))
                  (_K156919156947_
                   (lambda (_rest156945_)
                     (let ()
                       (declare (not safe))
                       (_lp156909_ _rest156945_ _opts156912_)))))
              (if (let () (declare (not safe)) (##pair? _rest156913156933_))
                  (let ((_tl156929156989_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156913156933_)))
                        (_hd156928156987_
                         (let ()
                           (declare (not safe))
                           (##car _rest156913156933_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156928156987_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156929156989_))
                            (let* ((_tl156931156992_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156929156989_)))
                                   (_rest156995_ _tl156931156992_))
                              (declare (not safe))
                              (_K156927156984_ _rest156995_))
                            (let ((_rest156953_ _tl156929156989_))
                              (declare (not safe))
                              (_K156919156947_ _rest156953_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156928156987_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156929156989_))
                                (let ((_tl156926156972_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156929156989_)))
                                      (_hd156925156970_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156929156989_))))
                                  (let ((_opt156975_ _hd156925156970_)
                                        (_rest156977_ _tl156926156972_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156922156962_
                                       _rest156977_
                                       _opt156975_))))
                                (let ((_rest156953_ _tl156929156989_))
                                  (declare (not safe))
                                  (_K156919156947_ _rest156953_)))
                            (let ((_rest156953_ _tl156929156989_))
                              (declare (not safe))
                              (_K156919156947_ _rest156953_)))))
                  (let () (declare (not safe)) (_else156917156941_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156906_)
        (let ((__tmp158388
               (let () (declare (not safe)) (string-empty? _str156906_))))
          (declare (not safe))
          (not __tmp158388))))
    (define gxc#gsc-compile-file
      (lambda (_path156874_ _phi?156875_)
        (letrec ((_gsc-link-path156877_
                  (lambda (_base-path156898_)
                    (let _lp156900_ ((_n156902_ '1))
                      (let ((_path156904_
                             (string-append
                              _base-path156898_
                              '".o"
                              (number->string _n156902_))))
                        (if (file-exists? _path156904_)
                            (let ((__tmp158389
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156902_ '1))))
                              (declare (not safe))
                              (_lp156900_ __tmp158389))
                            _path156904_))))))
          (let* ((_base-path156879_ (path-strip-extension _path156874_))
                 (_path-c156881_ (string-append _base-path156879_ '".c"))
                 (_path-o156883_ (string-append _base-path156879_ '".o"))
                 (_link-path156885_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156877_ _base-path156879_)))
                 (_link-path-c156887_ (string-append _link-path156885_ '".c"))
                 (_link-path-o156889_ (string-append _link-path156885_ '".o"))
                 (_gsc-link-opts156891_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156875_)))
                 (_gsc-cc-opts156893_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156875_)))
                 (_gcc-ld-opts156895_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp158396 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158390
                   (let ((__tmp158391
                          (let ((__tmp158392
                                 (let ((__tmp158393
                                        (let ((__tmp158394
                                               (let ((__tmp158395
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156874_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp158395
                                                         _gsc-link-opts156891_))))
                                          (declare (not safe))
                                          (cons _link-path-c156887_
                                                __tmp158394))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp158393))))
                            (declare (not safe))
                            (cons '"-flat" __tmp158392))))
                     (declare (not safe))
                     (cons '"-link" __tmp158391))))
              (declare (not safe))
              (gxc#invoke __tmp158396 __tmp158390 'stdout-redirection: '#t))
            (let ((__tmp158403 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158397
                   (let ((__tmp158398
                          (let ((__tmp158399
                                 (let ((__tmp158400
                                        (let ((__tmp158401
                                               (let ((__tmp158402
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156887_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156881_
                                                       __tmp158402))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp158401
                                                  _gsc-cc-opts156893_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp158400))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp158399))))
                     (declare (not safe))
                     (cons '"-obj" __tmp158398))))
              (declare (not safe))
              (gxc#invoke __tmp158403 __tmp158397 'stdout-redirection: '#t))
            (let ((__tmp158409 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp158404
                   (let ((__tmp158405
                          (let ((__tmp158406
                                 (let ((__tmp158407
                                        (let ((__tmp158408
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156889_
                                                       _gcc-ld-opts156895_))))
                                          (declare (not safe))
                                          (cons _path-o156883_ __tmp158408))))
                                   (declare (not safe))
                                   (cons _link-path156885_ __tmp158407))))
                            (declare (not safe))
                            (cons '"-o" __tmp158406))))
                     (declare (not safe))
                     (cons '"-shared" __tmp158405))))
              (declare (not safe))
              (gxc#invoke __tmp158409 __tmp158404))
            (for-each
             delete-file
             (let ((__tmp158410
                    (let ((__tmp158411
                           (let ((__tmp158412
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156889_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156887_ __tmp158412))))
                      (declare (not safe))
                      (cons _path-o156883_ __tmp158411))))
               (declare (not safe))
               (cons _path-c156881_ __tmp158410)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156845_ _n156846_ _ext156847_)
        (letrec ((_module-relative-path156849_
                  (lambda (_ctx156872_)
                    (path-strip-directory
                     (let ((__tmp158413
                            (##structure-ref
                             _ctx156872_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp158413)))))
                 (_module-source-directory156850_
                  (lambda (_ctx156868_)
                    (path-directory
                     (let ((_mpath156870_
                            (##structure-ref
                             _ctx156868_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156870_))
                           _mpath156870_
                           (let ()
                             (declare (not safe))
                             (last _mpath156870_)))))))
                 (_section-string156851_
                  (lambda (_n156866_)
                    (if (let () (declare (not safe)) (number? _n156866_))
                        (number->string _n156866_)
                        (if (let () (declare (not safe)) (symbol? _n156866_))
                            (symbol->string _n156866_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156866_))
                                _n156866_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156866_)))))))
                 (_file-name156852_
                  (lambda (_path156864_)
                    (if _n156846_
                        (string-append
                         _path156864_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156851_ _n156846_))
                         _ext156847_)
                        (string-append _path156864_ _ext156847_))))
                 (_file-path156853_
                  (lambda ()
                    (let ((_$e156859_ (gxc#current-compile-output-dir)))
                      (if _$e156859_
                          ((lambda (_outdir156862_)
                             (path-expand
                              (let ((__tmp158415
                                     (let ((__tmp158416
                                            (##structure-ref
                                             _ctx156845_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp158416))))
                                (declare (not safe))
                                (_file-name156852_ __tmp158415))
                              _outdir156862_))
                           _$e156859_)
                          (path-expand
                           (let ((__tmp158414
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156849_
                                     _ctx156845_))))
                             (declare (not safe))
                             (_file-name156852_ __tmp158414))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156850_
                              _ctx156845_))))))))
          (let ((_path156855_
                 (let () (declare (not safe)) (_file-path156853_))))
            (let ((__tmp158417
                   (lambda ()
                     (let ((__tmp158418 (path-directory _path156855_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158418)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158417))
            _path156855_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156827_)
        (letrec ((_file-name156829_
                  (lambda (_id156843_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156843_))
                     '".scm")))
                 (_file-path156830_
                  (lambda ()
                    (let* ((_file156836_
                            (let ((__tmp158419
                                   (##structure-ref
                                    _ctx156827_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156829_ __tmp158419)))
                           (_$e156838_ (gxc#current-compile-output-dir)))
                      (if _$e156838_
                          ((lambda (_outdir156841_)
                             (path-expand
                              _file156836_
                              (path-expand '"static" _outdir156841_)))
                           _$e156838_)
                          (path-expand _file156836_ '"static"))))))
          (let ((_path156832_
                 (let () (declare (not safe)) (_file-path156830_))))
            (let ((__tmp158420
                   (lambda ()
                     (let ((__tmp158421 (path-directory _path156832_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158421)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158420))
            _path156832_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156821_ _opts156822_)
        (let ((_$e156824_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156822_))))
          (if _$e156824_
              (values _$e156824_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156821_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156814_)
        (if (let () (declare (not safe)) (string? _idstr156814_))
            (let* ((_str156816_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156814_)))
                   (_strs156818_
                    (let ()
                      (declare (not safe))
                      (string-split _str156816_ '#\/))))
              (let () (declare (not safe)) (string-join _strs156818_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156814_))
                (let ((__tmp158422 (symbol->string _idstr156814_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp158422))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156814_))))))
    (define gxc#invoke__%
      (lambda (_g158423_
               _stdout-redirection156775156779_
               _stderr-redirection156776156781_
               _program156783_
               _args156784_)
        (let* ((_stdout-redirection156786_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection156775156779_ absent-value))
                    '#f
                    _stdout-redirection156775156779_))
               (_stderr-redirection156788_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection156776156781_ absent-value))
                    '#f
                    _stderr-redirection156776156781_)))
          (let ((__tmp158424
                 (let ()
                   (declare (not safe))
                   (cons _program156783_ _args156784_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp158424))
          (let* ((_proc156790_
                  (open-process
                   (let ((__tmp158425
                          (let ((__tmp158426
                                 (let ((__tmp158427
                                        (let ((__tmp158428
                                               (let ((__tmp158429
                                                      (let ((__tmp158430
                                                             (let ((__tmp158431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection156788_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp158431))))
                (declare (not safe))
                (cons _stdout-redirection156786_ __tmp158430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp158429))))
                                          (declare (not safe))
                                          (cons _args156784_ __tmp158428))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp158427))))
                            (declare (not safe))
                            (cons _program156783_ __tmp158426))))
                     (declare (not safe))
                     (cons 'path: __tmp158425))))
                 (_output156795_
                  (if (or _stdout-redirection156786_
                          _stderr-redirection156788_)
                      (read-line _proc156790_ '#f)
                      '#f)))
            (let ((_status156798_ (process-status _proc156790_)))
              (close-port _proc156790_)
              (if (let () (declare (not safe)) (zero? _status156798_))
                  '#!void
                  (begin
                    (display _output156795_)
                    (let ((__tmp158432
                           (let ()
                             (declare (not safe))
                             (cons _program156783_ _args156784_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp158432
                       _status156798_)))))))))
    (define gxc#invoke__@
      (lambda (_keys156774156803_ . _args156805_)
        (apply gxc#invoke__%
               _keys156774156803_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156774156803_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156774156803_
                  'stderr-redirection:
                  absent-value))
               _args156805_)))
    (define gxc#invoke
      (lambda _args156777156811_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156777156811_)))
    (define gxc#join!
      (lambda (_thread156768_)
        (let ((__tmp158434
               (lambda (_exn156770_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn156770_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn156770_)))
                     (raise _exn156770_))))
              (__tmp158433 (lambda () (thread-join! _thread156768_))))
          (declare (not safe))
          (with-catch __tmp158434 __tmp158433))))))
