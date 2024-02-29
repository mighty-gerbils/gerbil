(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1709229975)
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
      (lambda (_path158012_ _fun158013_)
        (with-output-to-file
         (let ((__tmp158106
                (let ()
                  (declare (not safe))
                  (cons _path158012_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp158106))
         _fun158013_)))
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
      (lambda (_gerbil-libdir158007_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir158007_)))
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
      (lambda (_dir158005_) (delete-file-or-directory _dir158005_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157979_ _opts157980_)
        (if (let () (declare (not safe)) (string? _srcpath157979_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157979_)))
        (let ((_outdir157982_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157980_)))
              (_invoke-gsc?157983_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157980_)))
              (_gsc-options157984_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157980_)))
              (_keep-scm?157985_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157980_)))
              (_verbosity157986_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157980_)))
              (_optimize157987_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157980_)))
              (_debug157988_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157980_)))
              (_gen-ssxi157989_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157980_))))
          (if _outdir157982_
              (let ((__tmp158107
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157982_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158107))
              '#!void)
          (if _optimize157987_
              (let ((__tmp158108
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158108))
              '#!void)
          (let ((__tmp158112
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157979_))
                   (let ((__tmp158113
                          (let ((__tmp158114
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157979_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158114))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp158113))))
                (__tmp158111
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158109
                 (let ((__tmp158110
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157979_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp158110))))
            (declare (not safe))
            (call-with-parameters
             __tmp158112
             gxc#current-compile-output-dir
             _outdir157982_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157983_
             gxc#current-compile-gsc-options
             _gsc-options157984_
             gxc#current-compile-keep-scm
             _keep-scm?157985_
             gxc#current-compile-verbose
             _verbosity157986_
             gxc#current-compile-optimize
             _optimize157987_
             gxc#current-compile-debug
             _debug157988_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157989_
             gxc#current-compile-timestamp
             __tmp158111
             gxc#current-compile-context
             __tmp158109
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath157998_)
        (let ((_opts158000_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath157998_ _opts158000_))))
    (define gxc#compile-module
      (lambda _g158116_
        (let ((_g158115_ (let () (declare (not safe)) (##length _g158116_))))
          (cond ((let () (declare (not safe)) (##fx= _g158115_ 1))
                 (apply (lambda (_srcpath157998_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath157998_)))
                        _g158116_))
                ((let () (declare (not safe)) (##fx= _g158115_ 2))
                 (apply (lambda (_srcpath158002_ _opts158003_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath158002_
                             _opts158003_)))
                        _g158116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g158116_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157955_ _opts157956_)
        (if (let () (declare (not safe)) (string? _srcpath157955_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157955_)))
        (let ((_outdir157958_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157956_)))
              (_invoke-gsc?157959_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157956_)))
              (_gsc-options157960_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157956_)))
              (_keep-scm?157961_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157956_)))
              (_verbosity157962_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157956_)))
              (_debug157963_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157956_))))
          (if _outdir157958_
              (let ((__tmp158117
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157958_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158117))
              '#!void)
          (let ((__tmp158121
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157955_))
                   (let ((__tmp158122
                          (let ((__tmp158123
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157955_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158123))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp158122
                      _opts157956_))))
                (__tmp158120
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158118
                 (let ((__tmp158119
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157955_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp158119))))
            (declare (not safe))
            (call-with-parameters
             __tmp158121
             gxc#current-compile-output-dir
             _outdir157958_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157959_
             gxc#current-compile-gsc-options
             _gsc-options157960_
             gxc#current-compile-keep-scm
             _keep-scm?157961_
             gxc#current-compile-verbose
             _verbosity157962_
             gxc#current-compile-debug
             _debug157963_
             gxc#current-compile-timestamp
             __tmp158120
             gxc#current-compile-context
             __tmp158118
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157971_)
        (let ((_opts157973_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157971_ _opts157973_))))
    (define gxc#compile-exe
      (lambda _g158125_
        (let ((_g158124_ (let () (declare (not safe)) (##length _g158125_))))
          (cond ((let () (declare (not safe)) (##fx= _g158124_ 1))
                 (apply (lambda (_srcpath157971_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157971_)))
                        _g158125_))
                ((let () (declare (not safe)) (##fx= _g158124_ 2))
                 (apply (lambda (_srcpath157975_ _opts157976_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157975_ _opts157976_)))
                        _g158125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g158125_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157951_ _opts157952_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157952_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157951_
               _opts157952_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157951_
               _opts157952_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157834_ _opts157835_)
        (letrec ((_generate-stub157837_
                  (lambda (_builtin-modules157947_)
                    (let ((_mod-main157949_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157834_ 'main))))
                      (write (let ((__tmp158126
                                    (let ((__tmp158127
                                           (let ((__tmp158128
                                                  (let ((__tmp158129
                                                         (let ((__tmp158131
                                                                (let ((__tmp158132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157947_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158132)))
                       (__tmp158130
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp158131 __tmp158130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp158129))))
                                             (declare (not safe))
                                             (cons __tmp158128 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp158127))))
                               (declare (not safe))
                               (cons 'define __tmp158126)))
                      (write (let ((__tmp158133
                                    (let ((__tmp158172
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158134
                                           (let ((__tmp158135
                                                  (let ((__tmp158136
                                                         (let ((__tmp158160
                                                                (let ((__tmp158161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158162
                                      (let ((__tmp158170
                                             (let ((__tmp158171
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp158171)))
                                            (__tmp158163
                                             (let ((__tmp158164
                                                    (let ((__tmp158165
                                                           (let ((__tmp158166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158167
                                 (let ((__tmp158168
                                        (let ((__tmp158169
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp158169 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp158168))))
                            (declare (not safe))
                            (cons __tmp158167 '()))))
                     (declare (not safe))
                     (cons _mod-main157949_ __tmp158166))))
              (declare (not safe))
              (cons 'apply __tmp158165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158164 '()))))
                                        (declare (not safe))
                                        (cons __tmp158170 __tmp158163))))
                                 (declare (not safe))
                                 (cons '() __tmp158162))))
                          (declare (not safe))
                          (cons 'lambda __tmp158161)))
                       (__tmp158137
                        (let ((__tmp158138
                               (let ((__tmp158139
                                      (let ((__tmp158140
                                             (let ((__tmp158151
                                                    (let ((__tmp158152
                                                           (let ((__tmp158153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158154
                                 (let ((__tmp158155
                                        (let ((__tmp158156
                                               (let ((__tmp158157
                                                      (let ((__tmp158158
                                                             (let ((__tmp158159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp158159 '()))))
                (declare (not safe))
                (cons 'force-output __tmp158158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp158157 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp158156))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp158155))))
                            (declare (not safe))
                            (cons __tmp158154 '()))))
                     (declare (not safe))
                     (cons 'void __tmp158153))))
              (declare (not safe))
              (cons 'with-catch __tmp158152)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp158141
                                                    (let ((__tmp158142
                                                           (let ((__tmp158143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158144
                                 (let ((__tmp158145
                                        (let ((__tmp158146
                                               (let ((__tmp158147
                                                      (let ((__tmp158148
                                                             (let ((__tmp158149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp158150
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp158150 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp158149))))
                (declare (not safe))
                (cons __tmp158148 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp158147))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp158146))))
                                   (declare (not safe))
                                   (cons __tmp158145 '()))))
                            (declare (not safe))
                            (cons 'void __tmp158144))))
                     (declare (not safe))
                     (cons 'with-catch __tmp158143))))
              (declare (not safe))
              (cons __tmp158142 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158151
                                                     __tmp158141))))
                                        (declare (not safe))
                                        (cons '() __tmp158140))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp158139))))
                          (declare (not safe))
                          (cons __tmp158138 '()))))
                   (declare (not safe))
                   (cons __tmp158160 __tmp158137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp158136))))
                                             (declare (not safe))
                                             (cons __tmp158135 '()))))
                                      (declare (not safe))
                                      (cons __tmp158172 __tmp158134))))
                               (declare (not safe))
                               (cons 'define __tmp158133)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157838_
                  (lambda (_libgerbil157945_)
                    (call-with-input-file
                     (string-append _libgerbil157945_ '".ldd")
                     read)))
                 (_replace-extension157839_
                  (lambda (_path157942_ _ext157943_)
                    (string-append
                     (path-strip-extension _path157942_)
                     _ext157943_)))
                 (_not-exclude-module?157840_
                  (lambda (_ctx157938_)
                    (let ((_id-str157940_
                           (symbol->string
                            (##structure-ref
                             _ctx157938_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp158174
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157940_))))
                            (declare (not safe))
                            (not __tmp158174))
                          (let ((__tmp158173
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157940_))))
                            (declare (not safe))
                            (not __tmp158173))
                          '#f))))
                 (_not-file-empty?157841_
                  (lambda (_path157936_)
                    (let ((__tmp158175
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157936_))))
                      (declare (not safe))
                      (not __tmp158175))))
                 (_compile-stub157842_
                  (lambda (_output-scm157849_ _output-bin157850_)
                    (let* ((_gerbil-home157852_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157854_
                            (path-expand '"lib" _gerbil-home157852_))
                           (_gerbil-staticdir157856_
                            (path-expand '"static" _gerbil-libdir157854_))
                           (_gxlink157858_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157854_))
                           (_tmp157860_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157864_
                            (lambda (_f157862_)
                              (path-expand
                               (path-strip-directory _f157862_)
                               _tmp157860_)))
                           (_deps157866_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157834_)))
                           (_deps157868_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?157840_
                                      _deps157866_)))
                           (_src-deps-scm157870_
                            (map gxc#find-static-module-file _deps157868_))
                           (_src-deps-scm157872_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?157841_
                                      _src-deps-scm157870_)))
                           (_src-deps-scm157874_
                            (map path-expand _src-deps-scm157872_))
                           (_deps-scm157876_
                            (map _tmp-path157864_ _src-deps-scm157874_))
                           (_deps-c157882_
                            (map (lambda (_g157877157879_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157839_
                                      _g157877157879_
                                      '".c")))
                                 _deps-scm157876_))
                           (_deps-o157888_
                            (map (lambda (_g157883157885_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157839_
                                      _g157883157885_
                                      '".o")))
                                 _deps-scm157876_))
                           (_src-bin-scm157890_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157834_)))
                           (_src-bin-scm157892_
                            (path-expand _src-bin-scm157890_))
                           (_bin-scm157894_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157864_ _src-bin-scm157892_)))
                           (_bin-c157896_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157839_
                               _bin-scm157894_
                               '".c")))
                           (_bin-o157898_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157839_
                               _bin-scm157894_
                               '".o")))
                           (_output-bin157900_
                            (path-expand _output-bin157850_))
                           (_output-scm157902_
                            (path-expand _output-scm157849_))
                           (_output-c157904_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157839_
                               _output-scm157902_
                               '".c")))
                           (_output-o157906_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157839_
                               _output-scm157902_
                               '".o")))
                           (_output_-c157908_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157839_
                               _output-scm157902_
                               '"_.c")))
                           (_output_-o157910_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157839_
                               _output-scm157902_
                               '"_.o")))
                           (_gsc-link-opts157912_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157914_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157916_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157856_)))
                           (_output-ld-opts157918_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157920_
                            (path-expand '"libgerbil.a" _gerbil-libdir157854_))
                           (_libgerbil.so157922_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157854_))
                           (_libgerbil-ld-opts157924_
                            (if (file-exists? _libgerbil.so157922_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157838_
                                   _libgerbil.so157922_))
                                (if (file-exists? _libgerbil.a157920_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157838_
                                       _libgerbil.a157920_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157920_
                                       _libgerbil.so157922_)))))
                           (_rpath157926_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157854_)))
                           (_builtin-modules157930_
                            (map (lambda (_mod157928_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157928_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157834_ _deps157868_)))))
                      (let ((__tmp158176
                             (lambda ()
                               (let ((__tmp158177
                                      (path-directory _output-bin157900_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158177)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158176))
                      (let ((__tmp158178
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157837_
                                  _builtin-modules157930_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157902_
                         __tmp158178))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158179
                                   (lambda () (create-directory _tmp157860_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp158179))
                            (for-each
                             copy-file
                             _src-deps-scm157874_
                             _deps-scm157876_)
                            (copy-file _src-bin-scm157892_ _bin-scm157894_)
                            (let ((__tmp158187
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158180
                                   (let ((__tmp158181
                                          (let ((__tmp158182
                                                 (let ((__tmp158183
                                                        (let ((__tmp158184
                                                               (let ((__tmp158185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158186
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157902_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157894_ __tmp158186))))
                         (declare (not safe))
                         (foldr1 cons __tmp158185 _deps-scm157876_))))
                  (declare (not safe))
                  (foldr1 cons __tmp158184 _gsc-link-opts157912_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157858_
                                                         __tmp158183))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp158182))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158181))))
                              (declare (not safe))
                              (gxc#invoke __tmp158187 __tmp158180))
                            (let ((__tmp158195
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158188
                                   (let ((__tmp158189
                                          (let ((__tmp158190
                                                 (let ((__tmp158191
                                                        (let ((__tmp158192
                                                               (let ((__tmp158193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158194
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c157908_ '()))))
                                (declare (not safe))
                                (cons _output-c157904_ __tmp158194))))
                         (declare (not safe))
                         (cons _bin-c157896_ __tmp158193))))
                  (declare (not safe))
                  (foldr1 cons __tmp158192 _deps-c157882_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158191
                                                           _gsc-static-opts157916_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158190
                                                    _gsc-cc-opts157914_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158189))))
                              (declare (not safe))
                              (gxc#invoke __tmp158195 __tmp158188))
                            (let ((__tmp158208
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158196
                                   (let ((__tmp158197
                                          (let ((__tmp158198
                                                 (let ((__tmp158199
                                                        (let ((__tmp158200
                                                               (let ((__tmp158201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158202
                                     (let ((__tmp158203
                                            (let ((__tmp158204
                                                   (let ((__tmp158205
                                                          (let ((__tmp158206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp158207
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157924_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp158207))))
                    (declare (not safe))
                    (cons _gerbil-libdir157854_ __tmp158206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp158205))))
                                              (declare (not safe))
                                              (cons _rpath157926_
                                                    __tmp158204))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp158203
                                               _output-ld-opts157918_))))
                                (declare (not safe))
                                (cons _output_-o157910_ __tmp158202))))
                         (declare (not safe))
                         (cons _output-o157906_ __tmp158201))))
                  (declare (not safe))
                  (cons _bin-o157898_ __tmp158200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158199
                                                           _deps-o157888_))))
                                            (declare (not safe))
                                            (cons _output-bin157900_
                                                  __tmp158198))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158197))))
                              (declare (not safe))
                              (gxc#invoke __tmp158208 __tmp158196))
                            (for-each
                             delete-file
                             (let ((__tmp158209
                                    (let ((__tmp158210
                                           (let ((__tmp158211
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157910_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157906_
                                                   __tmp158211))))
                                      (declare (not safe))
                                      (cons _output_-c157908_ __tmp158210))))
                               (declare (not safe))
                               (cons _output-c157904_ __tmp158209)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157860_)))
                          '#!void)))))
          (let* ((_output-bin157844_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157834_ _opts157835_)))
                 (_output-scm157846_
                  (string-append _output-bin157844_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157842_ _output-scm157846_ _output-bin157844_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157846_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx157659_ _opts157660_)
        (letrec ((_reset-declare157662_
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
                 (_generate-stub157663_
                  (lambda (_deps157825_)
                    (let ((_mod-main157827_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157659_ 'main)))
                          (_reset-decl157828_
                           (let ()
                             (declare (not safe))
                             (_reset-declare157662_)))
                          (_user-decl157829_
                           (let ()
                             (declare (not safe))
                             (_user-declare157664_))))
                      (for-each
                       (lambda (_dep157831_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157828_)
                         (newline)
                         (if _user-decl157829_
                             (begin (write _user-decl157829_) (newline))
                             '#!void)
                         (write (let ((__tmp158212
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157831_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp158212)))
                         (newline))
                       _deps157825_)
                      (write (let ((__tmp158213
                                    (let ((__tmp158226
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158214
                                           (let ((__tmp158222
                                                  (let ((__tmp158223
                                                         (let ((__tmp158224
                                                                (let ((__tmp158225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158225))))
                   (declare (not safe))
                   (cons __tmp158224 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp158223)))
                                                 (__tmp158215
                                                  (let ((__tmp158216
                                                         (let ((__tmp158217
                                                                (let ((__tmp158218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158219
                                      (let ((__tmp158220
                                             (let ((__tmp158221
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp158221 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp158220))))
                                 (declare (not safe))
                                 (cons __tmp158219 '()))))
                          (declare (not safe))
                          (cons _mod-main157827_ __tmp158218))))
                   (declare (not safe))
                   (cons 'apply __tmp158217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158216 '()))))
                                             (declare (not safe))
                                             (cons __tmp158222 __tmp158215))))
                                      (declare (not safe))
                                      (cons __tmp158226 __tmp158214))))
                               (declare (not safe))
                               (cons 'define __tmp158213)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare157664_
                  (lambda ()
                    (let* ((_gsc-opts157730_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts157660_)))
                           (_gsc-prelude157732_
                            (if _gsc-opts157730_
                                (member '"-prelude" _gsc-opts157730_)
                                '#f))
                           (_gsc-prelude157734_
                            (if _gsc-prelude157732_
                                (read (open-input-string
                                       (cadr _gsc-prelude157732_)))
                                '#f)))
                      (let _lp157737_ ((_rest157739_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude157734_ '())))
                                       (_user-decls157740_ '()))
                        (let* ((_rest157741157749_ _rest157739_)
                               (_else157743157757_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls157740_))
                                      '#f
                                      (let ((__tmp158227
                                             (reverse _user-decls157740_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp158227)))))
                               (_K157745157813_
                                (lambda (_rest157760_ _expr157761_)
                                  (let* ((_expr157762157774_ _expr157761_)
                                         (_else157765157782_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp157737_
                                               _rest157760_
                                               _user-decls157740_)))))
                                    (let ((_K157770157803_
                                           (lambda (_decls157801_)
                                             (let ((__tmp158228
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls157740_
                                                              _decls157801_))))
                                               (declare (not safe))
                                               (_lp157737_
                                                _rest157760_
                                                __tmp158228))))
                                          (_K157767157788_
                                           (lambda (_exprs157786_)
                                             (let ((__tmp158229
                                                    (append _exprs157786_
                                                            _rest157760_)))
                                               (declare (not safe))
                                               (_lp157737_
                                                __tmp158229
                                                _user-decls157740_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr157762157774_))
                                          (let ((_tl157772157808_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr157762157774_)))
                                                (_hd157771157806_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr157762157774_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157771157806_
                                                         'declare))
                                                (let ((_decls157811_
                                                       _tl157772157808_))
                                                  (declare (not safe))
                                                  (_K157770157803_
                                                   _decls157811_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157771157806_
                                                             'begin))
                                                    (let ((_exprs157796_
                                                           _tl157772157808_))
                                                      (declare (not safe))
                                                      (_K157767157788_
                                                       _exprs157796_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else157765157782_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else157765157782_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest157741157749_))
                              (let ((_hd157746157816_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest157741157749_)))
                                    (_tl157747157818_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest157741157749_))))
                                (let* ((_expr157821_ _hd157746157816_)
                                       (_rest157823_ _tl157747157818_))
                                  (declare (not safe))
                                  (_K157745157813_ _rest157823_ _expr157821_)))
                              (let ()
                                (declare (not safe))
                                (_else157743157757_))))))))
                 (_compile-stub157665_
                  (lambda (_output-scm157672_ _output-bin157673_)
                    (let* ((_gerbil-home157675_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157677_
                            (path-expand '"lib" _gerbil-home157675_))
                           (_runtime157679_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp157681_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home157675_))
                           (_include-gambit-sharp157683_
                            (string-append
                             '"(include \""
                             _gambit-sharp157681_
                             '"\")"))
                           (_bin-scm157685_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157659_)))
                           (_deps157687_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157659_)))
                           (_deps157689_
                            (map gxc#find-static-module-file _deps157687_))
                           (_deps157694_
                            (let ((__tmp158230
                                   (lambda (_$obj157691_)
                                     (let ((__tmp158231
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj157691_))))
                                       (declare (not safe))
                                       (not __tmp158231)))))
                              (declare (not safe))
                              (filter __tmp158230 _deps157689_)))
                           (_deps157698_
                            (let ((__tmp158232
                                   (lambda (_f157696_)
                                     (let ((__tmp158233
                                            (member _f157696_
                                                    _runtime157679_)))
                                       (declare (not safe))
                                       (not __tmp158233)))))
                              (declare (not safe))
                              (filter __tmp158232 _deps157694_)))
                           (_output-base157700_
                            (string-append
                             (path-strip-extension _output-scm157672_)))
                           (_output-c157702_
                            (string-append _output-base157700_ '".c"))
                           (_output-o157704_
                            (string-append _output-base157700_ '".o"))
                           (_output-c_157706_
                            (string-append _output-base157700_ '"_.c"))
                           (_output-o_157708_
                            (string-append _output-base157700_ '"_.o"))
                           (_gsc-link-opts157710_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157712_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157714_
                            (let ((__tmp158234
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir157677_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp158234)))
                           (_output-ld-opts157716_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157718_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp158236
                                       (let ((__tmp158237
                                              (let ((__tmp158238
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp157683_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp158238))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp158237))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158236))
                                (let ((__tmp158235
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp157683_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158235))))
                           (_gsc-link-opts157720_
                            (append _gsc-link-opts157710_
                                    _gsc-gx-macros157718_))
                           (_rpath157722_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157677_)))
                           (_default-ld-options157724_
                            (let ((__tmp158239
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp158239))))
                      (let ((__tmp158240
                             (lambda ()
                               (let ((__tmp158241
                                      (path-directory _output-bin157673_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158241)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158240))
                      (let ((__tmp158242
                             (lambda ()
                               (let ((__tmp158243
                                      (let ((__tmp158244
                                             (let ((__tmp158245
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm157685_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp158245
                                                       _deps157698_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp158244
                                                _runtime157679_))))
                                 (declare (not safe))
                                 (_generate-stub157663_ __tmp158243)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157672_
                         __tmp158242))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158251
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158246
                                   (let ((__tmp158247
                                          (let ((__tmp158248
                                                 (let ((__tmp158249
                                                        (let ((__tmp158250
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm157672_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp158250 _gsc-link-opts157720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_157706_
                                                         __tmp158249))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp158248))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158247))))
                              (declare (not safe))
                              (gxc#invoke __tmp158251 __tmp158246))
                            (let ((__tmp158257
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158252
                                   (let ((__tmp158253
                                          (let ((__tmp158254
                                                 (let ((__tmp158255
                                                        (let ((__tmp158256
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_157706_ '()))))
                  (declare (not safe))
                  (cons _output-c157702_ __tmp158256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158255
                                                           _gsc-static-opts157714_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158254
                                                    _gsc-cc-opts157712_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158253))))
                              (declare (not safe))
                              (gxc#invoke __tmp158257 __tmp158252))
                            (let ((__tmp158267
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158258
                                   (let ((__tmp158259
                                          (let ((__tmp158260
                                                 (let ((__tmp158261
                                                        (let ((__tmp158262
                                                               (let ((__tmp158263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158264
                                     (let ((__tmp158265
                                            (let ((__tmp158266
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options157724_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir157677_
                                                    __tmp158266))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp158265))))
                                (declare (not safe))
                                (cons _rpath157722_ __tmp158264))))
                         (declare (not safe))
                         (foldr1 cons __tmp158263 _output-ld-opts157716_))))
                  (declare (not safe))
                  (cons _output-o_157708_ __tmp158262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o157704_
                                                         __tmp158261))))
                                            (declare (not safe))
                                            (cons _output-bin157673_
                                                  __tmp158260))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158259))))
                              (declare (not safe))
                              (gxc#invoke __tmp158267 __tmp158258)))
                          '#!void)))))
          (let* ((_output-bin157667_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157659_ _opts157660_)))
                 (_output-scm157669_
                  (string-append _output-bin157667_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157665_ _output-scm157669_ _output-bin157667_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157669_))))))
    (define gxc#find-export-binding
      (lambda (_ctx157609_ _id157610_)
        (let ((_$e157656_
               (let ((__tmp158269
                      (lambda (_e157611157613_)
                        (let* ((_g157615157625_ _e157611157613_)
                               (_else157617157633_ (lambda () '#f))
                               (_K157619157637_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g157615157625_
                                 'gx#module-export::t))
                              (let* ((_e157620157640_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157615157625_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e157621157643_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157615157625_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e157622157646_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157615157625_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e157622157646_ '0))
                                    (let ((_e157623157649_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g157615157625_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g157651157653_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g157651157653_
                                                    _id157610_)))
                                           _e157623157649_)
                                          (let ()
                                            (declare (not safe))
                                            (_K157619157637_))
                                          (let ()
                                            (declare (not safe))
                                            (_else157617157633_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else157617157633_))))
                              (let ()
                                (declare (not safe))
                                (_else157617157633_))))))
                     (__tmp158268
                      (##structure-ref
                       _ctx157609_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp158269 __tmp158268))))
          (if _$e157656_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e157656_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx157601_ _id157602_)
        (let ((_$e157604_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx157601_ _id157602_))))
          (if _$e157604_
              ((lambda (_bind157607_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind157607_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id157602_)))
                 (##structure-ref _bind157607_ '1 gx#binding::t '#f))
               _$e157604_)
              (let ((__tmp158270
                     (##structure-ref
                      _ctx157601_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp158270
                 _id157602_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157488_)
        (letrec* ((_ht157490_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template157491_
                   (lambda (_in157553_ _phi157554_)
                     (let ((_iphi157556_
                            (fx+ _phi157554_
                                 (##direct-structure-ref
                                  _in157553_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports157557_
                            (##structure-ref
                             (##direct-structure-ref
                              _in157553_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp157559_ ((_rest157561_ _imports157557_)
                                        (_r157562_ '()))
                         (let* ((_rest157563157571_ _rest157561_)
                                (_else157565157579_ (lambda () _r157562_))
                                (_K157567157589_
                                 (lambda (_rest157582_ _in157583_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in157583_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi157556_))
                                           (let ((__tmp158277
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in157583_
                                                          _r157562_))))
                                             (declare (not safe))
                                             (_lp157559_
                                              _rest157582_
                                              __tmp158277))
                                           (let ()
                                             (declare (not safe))
                                             (_lp157559_
                                              _rest157582_
                                              _r157562_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in157583_
                                              'gx#module-import::t))
                                           (let ((_iphi157585_
                                                  (fx+ _phi157554_
                                                       (##direct-structure-ref
                                                        _in157583_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi157585_))
                                                 (let ((__tmp158275
                                                        (let ((__tmp158276
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in157583_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp158276 _r157562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp157559_
                                                    _rest157582_
                                                    __tmp158275))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp157559_
                                                    _rest157582_
                                                    _r157562_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in157583_
                                                  'gx#import-set::t))
                                               (let ((_xphi157587_
                                                      (fx+ _iphi157556_
                                                           (##direct-structure-ref
                                                            _in157583_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi157587_))
                                                     (let ((__tmp158273
                                                            (let ((__tmp158274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in157583_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp158274 _r157562_))))
               (declare (not safe))
               (_lp157559_ _rest157582_ __tmp158273))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi157587_)
                                                         (let ((__tmp158271
                                                                (let ((__tmp158272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template157491_
                                  _in157583_
                                  _iphi157556_))))
                          (declare (not safe))
                          (foldl1 cons _r157562_ __tmp158272))))
                   (declare (not safe))
                   (_lp157559_ _rest157582_ __tmp158271))
                 (let ()
                   (declare (not safe))
                   (_lp157559_ _rest157582_ _r157562_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp157559_
                                                  _rest157582_
                                                  _r157562_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest157563157571_))
                               (let ((_hd157568157592_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest157563157571_)))
                                     (_tl157569157594_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest157563157571_))))
                                 (let* ((_in157597_ _hd157568157592_)
                                        (_rest157599_ _tl157569157594_))
                                   (declare (not safe))
                                   (_K157567157589_ _rest157599_ _in157597_)))
                               (let ()
                                 (declare (not safe))
                                 (_else157565157579_))))))))
                  (_find-deps157492_
                   (lambda (_rest157499_ _deps157500_)
                     (let* ((_rest157501157509_ _rest157499_)
                            (_else157503157517_ (lambda () _deps157500_))
                            (_K157505157541_
                             (lambda (_rest157520_ _hd157521_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd157521_
                                      'gx#module-context::t))
                                   (let ((_id157523_
                                          (##structure-ref
                                           _hd157521_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports157524_
                                          (##structure-ref
                                           _hd157521_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht157490_ _id157523_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps157492_
                                            _rest157520_
                                            _deps157500_))
                                         (let ((_$e157526_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd157521_))))
                                           (if _$e157526_
                                               ((lambda (_pre157529_)
                                                  (let ((_xdeps157531_
                                                         (let ((__tmp158290
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre157529_ _imports157524_))))
                   (declare (not safe))
                   (_find-deps157492_ __tmp158290 _deps157500_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht157490_
                                                       _id157523_
                                                       _hd157521_))
                                                    (let ((__tmp158291
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd157521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps157531_))))
              (declare (not safe))
              (_find-deps157492_ _rest157520_ __tmp158291))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e157526_)
                                               (let ((_xdeps157533_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps157492_
                                                         _imports157524_
                                                         _deps157500_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht157490_
                                                    _id157523_
                                                    _hd157521_))
                                                 (let ((__tmp158289
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd157521_
                                                                _xdeps157533_))))
                                                   (declare (not safe))
                                                   (_find-deps157492_
                                                    _rest157520_
                                                    __tmp158289)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd157521_
                                          'gx#prelude-context::t))
                                       (let ((_id157535_
                                              (##structure-ref
                                               _hd157521_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht157490_
                                                _id157535_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps157492_
                                                _rest157520_
                                                _deps157500_))
                                             (let ((_xdeps157537_
                                                    (let ((__tmp158287
                                                           (##structure-ref
                                                            _hd157521_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps157492_
                                                       __tmp158287
                                                       _deps157500_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht157490_
                                                      _id157535_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps157492_
                                                      _rest157520_
                                                      _xdeps157537_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht157490_
                                                        _id157535_
                                                        _hd157521_))
                                                     (let ((__tmp158288
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd157521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps157537_))))
               (declare (not safe))
               (_find-deps157492_ _rest157520_ __tmp158288)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd157521_
                                              'gx#module-import::t))
                                           (if (let ((__tmp158286
                                                      (##direct-structure-ref
                                                       _hd157521_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp158286))
                                               (let ((__tmp158284
                                                      (let ((__tmp158285
                                                             (##direct-structure-ref
                                                              _hd157521_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158285
                                                              _rest157520_))))
                                                 (declare (not safe))
                                                 (_find-deps157492_
                                                  __tmp158284
                                                  _deps157500_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps157492_
                                                  _rest157520_
                                                  _deps157500_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd157521_
                                                  'gx#module-export::t))
                                               (let ((__tmp158282
                                                      (let ((__tmp158283
                                                             (##direct-structure-ref
                                                              _hd157521_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158283
                                                              _rest157520_))))
                                                 (declare (not safe))
                                                 (_find-deps157492_
                                                  __tmp158282
                                                  _deps157500_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd157521_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp158281
                                                              (##direct-structure-ref
                                                               _hd157521_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp158281))
                                                       (let ((__tmp158279
                                                              (let ((__tmp158280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd157521_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp158280 _rest157520_))))
                 (declare (not safe))
                 (_find-deps157492_ __tmp158279 _deps157500_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd157521_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps157539_
                           (let ()
                             (declare (not safe))
                             (_import-set-template157491_ _hd157521_ '0)))
                          (__tmp158278
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest157520_ _xdeps157539_))))
                     (declare (not safe))
                     (_find-deps157492_ __tmp158278 _deps157500_))
                   (let ()
                     (declare (not safe))
                     (_find-deps157492_ _rest157520_ _deps157500_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd157521_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest157501157509_))
                           (let ((_hd157506157544_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest157501157509_)))
                                 (_tl157507157546_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest157501157509_))))
                             (let* ((_hd157549_ _hd157506157544_)
                                    (_rest157551_ _tl157507157546_))
                               (declare (not safe))
                               (_K157505157541_ _rest157551_ _hd157549_)))
                           (let ()
                             (declare (not safe))
                             (_else157503157517_)))))))
          (reverse (let ((__tmp158292
                          (let ((__tmp158293
                                 (let ((_$e157494_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx157488_))))
                                   (if _$e157494_
                                       ((lambda (_pre157497_)
                                          (let ((__tmp158294
                                                 (##structure-ref
                                                  _ctx157488_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre157497_ __tmp158294)))
                                        _$e157494_)
                                       (##structure-ref
                                        _ctx157488_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps157492_ __tmp158293 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp158292))))))
    (define gxc#find-static-module-file
      (lambda (_ctx157419_)
        (let* ((_context-id157421_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx157419_
                       'gx#module-context::t))
                    (##structure-ref _ctx157419_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx157419_)))
               (_scm157423_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id157421_))
                 '".scm"))
               (_dirs157425_ (gx#current-expander-module-library-path))
               (_dirs157431_
                (let ((_user-libpath157427_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath157427_
                      (let ((_user-libpath157429_
                             (path-expand '"lib" _user-libpath157427_)))
                        (if (member _user-libpath157429_ _dirs157425_)
                            _dirs157425_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath157429_ _dirs157425_))))
                      _dirs157425_)))
               (_dirs157440_
                (let ((_$e157433_ (gxc#current-compile-output-dir)))
                  (if _$e157433_
                      ((lambda (_g157435157437_)
                         (let ()
                           (declare (not safe))
                           (cons _g157435157437_ _dirs157431_)))
                       _$e157433_)
                      _dirs157431_)))
               (_dirs157446_
                (map (lambda (_g157441157443_)
                       (path-expand '"static" _g157441157443_))
                     _dirs157440_)))
          (let _lp157449_ ((_rest157451_ _dirs157446_))
            (let* ((_rest157452157460_ _rest157451_)
                   (_else157454157468_
                    (lambda ()
                      (let ((__tmp158295
                             (##structure-ref
                              _ctx157419_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp158295
                         _scm157423_))))
                   (_K157456157476_
                    (lambda (_rest157471_ _dir157472_)
                      (let ((_path157474_
                             (path-expand _scm157423_ _dir157472_)))
                        (if (file-exists? _path157474_)
                            _path157474_
                            (let ()
                              (declare (not safe))
                              (_lp157449_ _rest157471_)))))))
              (if (let () (declare (not safe)) (##pair? _rest157452157460_))
                  (let ((_hd157457157479_
                         (let ()
                           (declare (not safe))
                           (##car _rest157452157460_)))
                        (_tl157458157481_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157452157460_))))
                    (let* ((_dir157484_ _hd157457157479_)
                           (_rest157486_ _tl157458157481_))
                      (declare (not safe))
                      (_K157456157476_ _rest157486_ _dir157484_)))
                  (let () (declare (not safe)) (_else157454157468_))))))))
    (define gxc#file-empty?
      (lambda (_path157417_)
        (let ((__tmp158296 (file-info-size (file-info _path157417_ '#t))))
          (declare (not safe))
          (zero? __tmp158296))))
    (define gxc#compile-top-module
      (lambda (_ctx157406_)
        (let ((__tmp158300
               (lambda ()
                 (let ((__tmp158301
                        (##structure-ref
                         _ctx157406_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp158301))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp158302
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx157406_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp158302))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx157406_))
                 (if (let ((__tmp158305
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx157406_))))
                       (declare (not safe))
                       (null? __tmp158305))
                     (let* ((_thr1157411_
                             (let ((__tmp158303
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx157406_)))))
                               (declare (not safe))
                               (spawn __tmp158303)))
                            (_thr2157414_
                             (let ((__tmp158304
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx157406_)))))
                               (declare (not safe))
                               (spawn __tmp158304))))
                       (let () (declare (not safe)) (gxc#join! _thr1157411_))
                       (let () (declare (not safe)) (gxc#join! _thr2157414_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx157406_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx157406_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx157406_))
                     '#!void)))
              (__tmp158299
               (let ((__obj158104
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj158104)
                 __obj158104))
              (__tmp158298 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158297 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp158300
           gx#current-expander-context
           _ctx157406_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp158299
           gxc#current-compile-runtime-sections
           __tmp158298
           gxc#current-compile-runtime-names
           __tmp158297))))
    (define gxc#collect-bindings
      (lambda (_ctx157404_)
        (let ((__tmp158306
               (##structure-ref _ctx157404_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp158306))))
    (define gxc#compile-runtime-code
      (lambda (_ctx157350_)
        (letrec ((_compile1157352_
                  (lambda (_ctx157393_)
                    (let* ((_code157395_
                            (##structure-ref
                             _ctx157393_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt157399_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code157395_))
                                (let ((_idstr157397_
                                       (let ((__tmp158307
                                              (##structure-ref
                                               _ctx157393_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp158307))))
                                  (string-append _idstr157397_ '"__0"))
                                '#f)))
                      (if _rt157399_
                          (begin
                            (let ((__tmp158308
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp158308 _ctx157393_ _rt157399_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code157354_
                               _ctx157393_
                               _code157395_)))
                          (let ((_path157402_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx157393_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path157402_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code157355_
                         _ctx157393_
                         _code157395_
                         _rt157399_)))))
                 (_context-timestamp157353_
                  (lambda (_ctx157391_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx157391_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code157354_
                  (lambda (_ctx157373_ _code157374_)
                    (let* ((_lifts157376_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code157379_
                            (let ((__tmp158311
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code157374_))))
                                  (__tmp158310
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp158309
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158311
                               gx#current-expander-context
                               _ctx157373_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts157376_
                               gxc#current-compile-marks
                               __tmp158310
                               gxc#current-compile-identifiers
                               __tmp158309)))
                           (_runtime-code157381_
                            (if (let ((__tmp158315 (unbox _lifts157376_)))
                                  (declare (not safe))
                                  (null? __tmp158315))
                                _runtime-code157379_
                                (let ((__tmp158312
                                       (let ((__tmp158314
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code157379_
                                                      '())))
                                             (__tmp158313
                                              (reverse (unbox _lifts157376_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp158314
                                                 __tmp158313))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158312))))
                           (_runtime-code157383_
                            (let ((__tmp158316
                                   (let ((__tmp158318
                                          (let ((__tmp158319
                                                 (let ((__tmp158322
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp157353_
                                                           _ctx157373_)))
                                                       (__tmp158320
                                                        (let ((__tmp158321
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp158321
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp158322
                                                         __tmp158320))))
                                            (declare (not safe))
                                            (cons 'define __tmp158319)))
                                         (__tmp158317
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code157381_ '()))))
                                     (declare (not safe))
                                     (cons __tmp158318 __tmp158317))))
                              (declare (not safe))
                              (cons 'begin __tmp158316)))
                           (_scm0157385_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157373_
                               '0
                               '".scm"))))
                      (let ((_scms157388_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx157373_))))
                        (let ((__tmp158323
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0157385_
                                    _runtime-code157383_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp158323
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms157388_)
                            (delete-file _scms157388_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0157385_
                           '" => "
                           _scms157388_))
                        (copy-file _scm0157385_ _scms157388_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0157385_))))))
                 (_generate-loader-code157355_
                  (lambda (_ctx157362_ _code157363_ _rt157364_)
                    (let* ((_loader-code157367_
                            (let ((__tmp158324
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code157363_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158324
                               gx#current-expander-context
                               _ctx157362_)))
                           (_loader-code157369_
                            (if _rt157364_
                                (let ((__tmp158325
                                       (let ((__tmp158326
                                              (let ((__tmp158327
                                                     (let ((__tmp158328
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt157364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp158328))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158327 '()))))
                                         (declare (not safe))
                                         (cons _loader-code157367_
                                               __tmp158326))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158325))
                                _loader-code157367_)))
                      (let ((__tmp158329
                             (lambda ()
                               (let ((__tmp158330
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157362_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp158330
                                  _loader-code157369_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp158329
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules157357_
                 (let ((__tmp158331
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx157350_))))
                   (declare (not safe))
                   (cons _ctx157350_ __tmp158331))))
            (for-each
             (lambda (_ctx157359_)
               (let ((__tmp158332
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1157352_ _ctx157359_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp158332
                  gxc#current-compile-decls
                  '())))
             _all-modules157357_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx157247_)
        (letrec ((_compile-ssi157249_
                  (lambda (_code157320_)
                    (let* ((_path157322_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157247_
                               '#f
                               '".ssi")))
                           (_prelude157333_
                            (let* ((_super157324_
                                    (##structure-ref
                                     _ctx157247_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e157326_
                                    (##structure-ref
                                     _super157324_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e157326_
                                  ((lambda (_g157328157330_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g157328157330_)))
                                   _$e157326_)
                                  ':<root>)))
                           (_ns157335_
                            (##structure-ref
                             _ctx157247_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr157337_
                            (symbol->string
                             (##structure-ref
                              _ctx157247_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg157344_
                            (let ((_$e157339_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr157337_ '#\/))))
                              (if _$e157339_
                                  ((lambda (_x157342_)
                                     (string->symbol
                                      (substring _idstr157337_ '0 _x157342_)))
                                   _$e157339_)
                                  '#f)))
                           (_rt157346_
                            (let ((__tmp158333
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp158333 _ctx157247_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path157322_))
                      (let ((__tmp158334
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude157333_))
                               (if _pkg157344_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg157344_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns157335_))
                               (newline)
                               (pretty-print _code157320_)
                               (if _rt157346_
                                   (pretty-print
                                    (let ((__tmp158335
                                           (let ((__tmp158339
                                                  (let ((__tmp158340
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp158340)))
                                                 (__tmp158336
                                                  (let ((__tmp158337
                                                         (let ((__tmp158338
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt157346_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp158338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158337 '()))))
                                             (declare (not safe))
                                             (cons __tmp158339 __tmp158336))))
                                      (declare (not safe))
                                      (cons '%#call __tmp158335)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path157322_
                         __tmp158334)))))
                 (_compile-phi157250_
                  (lambda (_part157260_)
                    (let* ((_part157261157274_ _part157260_)
                           (_E157263157278_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part157261157274_))))
                           (_K157264157289_
                            (lambda (_code157281_
                                     _n157282_
                                     _phi157283_
                                     _phi-ctx157284_)
                              (let* ((_code157287_
                                      (let ((__tmp158341
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code157281_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp158341
                                         gx#current-expander-context
                                         _phi-ctx157284_
                                         gx#current-expander-phi
                                         _phi157283_)))
                                     (__tmp158342
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157247_
                                         _n157282_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp158342
                                 _code157287_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part157261157274_))
                          (let ((_hd157265157292_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part157261157274_)))
                                (_tl157266157294_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part157261157274_))))
                            (let ((_phi-ctx157297_ _hd157265157292_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl157266157294_))
                                  (let ((_hd157267157299_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl157266157294_)))
                                        (_tl157268157301_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl157266157294_))))
                                    (let ((_phi157304_ _hd157267157299_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl157268157301_))
                                          (let ((_hd157269157306_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl157268157301_)))
                                                (_tl157270157308_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl157268157301_))))
                                            (let ((_n157311_ _hd157269157306_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl157270157308_))
                                                  (let ((_hd157271157313_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl157270157308_)))
                                                        (_tl157272157315_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl157270157308_))))
                                                    (let ((_code157318_
                                                           _hd157271157313_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl157272157315_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K157264157289_
                                                             _code157318_
                                                             _n157311_
                                                             _phi157304_
                                                             _phi-ctx157297_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E157263157278_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E157263157278_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E157263157278_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E157263157278_)))))
                          (let () (declare (not safe)) (_E157263157278_)))))))
          (let ((_g158343_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx157247_))))
            (begin
              (let ((_g158344_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g158343_)
                           (##vector-length _g158343_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g158344_ 2)))
                    (error "Context expects 2 values" _g158344_)))
              (let ((_ssi-code157252_
                     (let () (declare (not safe)) (##vector-ref _g158343_ 0)))
                    (_phi-code157253_
                     (let () (declare (not safe)) (##vector-ref _g158343_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi157249_ _ssi-code157252_))
                  (let ((_threads157258_
                         (map (lambda (_code157255_)
                                (let ((__tmp158345
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi157250_
                                            _code157255_)))))
                                  (declare (not safe))
                                  (spawn __tmp158345)))
                              _phi-code157253_)))
                    (for-each gxc#join! _threads157258_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx157230_)
        (let* ((_path157232_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx157230_ '#f '".ssxi.ss")))
               (_code157234_
                (let ((__tmp158346
                       (##structure-ref
                        _ctx157230_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp158346)))
               (_idstr157236_
                (symbol->string
                 (##structure-ref _ctx157230_ '1 gx#expander-context::t '#f)))
               (_pkg157243_
                (let ((_$e157238_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr157236_ '#\/))))
                  (if _$e157238_
                      ((lambda (_x157241_)
                         (string->symbol
                          (substring _idstr157236_ '0 _x157241_)))
                       _$e157238_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path157232_))
          (let ((__tmp158347
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg157243_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg157243_))
                       '#!void)
                   (newline)
                   (pretty-print _code157234_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path157232_ __tmp158347)))))
    (define gxc#generate-meta-code
      (lambda (_ctx157223_)
        (let* ((_state157225_
                (let ((__obj158105
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj158105 _ctx157223_)
                  __obj158105))
               (_ssi-code157227_
                (let ((__tmp158348
                       (##structure-ref
                        _ctx157223_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp158348 _state157225_))))
          (values _ssi-code157227_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state157225_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx157216_)
        (let ((_lifts157218_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158351
                 (lambda ()
                   (let ((_code157221_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx157216_))))
                     (if (let ((__tmp158355 (unbox _lifts157218_)))
                           (declare (not safe))
                           (null? __tmp158355))
                         _code157221_
                         (let ((__tmp158352
                                (let ((__tmp158354
                                       (let ()
                                         (declare (not safe))
                                         (cons _code157221_ '())))
                                      (__tmp158353
                                       (reverse (unbox _lifts157218_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp158354 __tmp158353))))
                           (declare (not safe))
                           (cons 'begin __tmp158352))))))
                (__tmp158350
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp158349
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp158351
             gxc#current-compile-lift
             _lifts157218_
             gxc#current-compile-marks
             __tmp158350
             gxc#current-compile-identifiers
             __tmp158349)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx157212_)
        (let ((_modules157214_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158356
                 (##structure-ref _ctx157212_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp158356 _modules157214_))
          (reverse (unbox _modules157214_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path157195_ _code157196_ _phi?157197_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path157195_))
        (let ((__tmp158357
               (lambda ()
                 (pretty-print
                  (let ((__tmp158358
                         (let ((__tmp158365
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp158359
                                (let ((__tmp158364
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp158360
                                       (let ((__tmp158363
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp158361
                                              (let ((__tmp158362
                                                     (if _phi?157197_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp158362))))
                                         (declare (not safe))
                                         (cons __tmp158363 __tmp158361))))
                                  (declare (not safe))
                                  (cons __tmp158364 __tmp158360))))
                           (declare (not safe))
                           (cons __tmp158365 __tmp158359))))
                    (declare (not safe))
                    (cons 'declare __tmp158358)))
                 (pretty-print _code157196_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path157195_ __tmp158357))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path157195_ _phi?157197_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path157195_))))
    (define gxc#compile-scm-file__0
      (lambda (_path157203_ _code157204_)
        (let ((_phi?157206_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path157203_ _code157204_ _phi?157206_))))
    (define gxc#compile-scm-file
      (lambda _g158367_
        (let ((_g158366_ (let () (declare (not safe)) (##length _g158367_))))
          (cond ((let () (declare (not safe)) (##fx= _g158366_ 2))
                 (apply (lambda (_path157203_ _code157204_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path157203_
                             _code157204_)))
                        _g158367_))
                ((let () (declare (not safe)) (##fx= _g158366_ 3))
                 (apply (lambda (_path157208_ _code157209_ _phi?157210_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path157208_
                             _code157209_
                             _phi?157210_)))
                        _g158367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g158367_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?157096_)
        (let _lp157098_ ((_rest157100_ (gxc#current-compile-gsc-options))
                         (_opts157101_ '()))
          (let* ((_rest157102157122_ _rest157100_)
                 (_else157106157130_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157096_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158368
                               (let ((__tmp158369 (reverse _opts157101_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp158369))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp158368))
                        (reverse _opts157101_)))))
            (let ((_K157116157173_
                   (lambda (_rest157171_)
                     (let ()
                       (declare (not safe))
                       (_lp157098_ _rest157171_ _opts157101_))))
                  (_K157111157155_
                   (lambda (_rest157153_)
                     (let ()
                       (declare (not safe))
                       (_lp157098_ _rest157153_ _opts157101_))))
                  (_K157108157137_
                   (lambda (_rest157134_ _opt157135_)
                     (let ((__tmp158370
                            (let ()
                              (declare (not safe))
                              (cons _opt157135_ _opts157101_))))
                       (declare (not safe))
                       (_lp157098_ _rest157134_ __tmp158370)))))
              (if (let () (declare (not safe)) (##pair? _rest157102157122_))
                  (let ((_tl157118157178_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157102157122_)))
                        (_hd157117157176_
                         (let ()
                           (declare (not safe))
                           (##car _rest157102157122_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157117157176_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157118157178_))
                            (let* ((_tl157120157181_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157118157178_)))
                                   (_rest157184_ _tl157120157181_))
                              (declare (not safe))
                              (_K157116157173_ _rest157184_))
                            (let ((_opt157145_ _hd157117157176_)
                                  (_rest157147_ _tl157118157178_))
                              (let ()
                                (declare (not safe))
                                (_K157108157137_ _rest157147_ _opt157145_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157117157176_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157118157178_))
                                (let* ((_tl157115157163_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157118157178_)))
                                       (_rest157166_ _tl157115157163_))
                                  (declare (not safe))
                                  (_K157111157155_ _rest157166_))
                                (let ((_opt157145_ _hd157117157176_)
                                      (_rest157147_ _tl157118157178_))
                                  (let ()
                                    (declare (not safe))
                                    (_K157108157137_
                                     _rest157147_
                                     _opt157145_))))
                            (let ((_opt157145_ _hd157117157176_)
                                  (_rest157147_ _tl157118157178_))
                              (let ()
                                (declare (not safe))
                                (_K157108157137_ _rest157147_ _opt157145_))))))
                  (let () (declare (not safe)) (_else157106157130_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?157190_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?157190_))))
    (define gxc#gsc-link-options
      (lambda _g158372_
        (let ((_g158371_ (let () (declare (not safe)) (##length _g158372_))))
          (cond ((let () (declare (not safe)) (##fx= _g158371_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g158372_))
                ((let () (declare (not safe)) (##fx= _g158371_ 1))
                 (apply (lambda (_phi?157192_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?157192_)))
                        _g158372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g158372_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?156997_)
        (let _lp156999_ ((_rest157001_ (gxc#current-compile-gsc-options))
                         (_opts157002_ '()))
          (let* ((_rest157003157023_ _rest157001_)
                 (_else157007157031_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156997_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158373
                               (let ((__tmp158374 (reverse _opts157002_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp158374))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp158373))
                        (reverse _opts157002_)))))
            (let ((_K157017157070_
                   (lambda (_rest157067_ _opt157068_)
                     (let ((__tmp158375
                            (let ((__tmp158376
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts157002_))))
                              (declare (not safe))
                              (cons _opt157068_ __tmp158376))))
                       (declare (not safe))
                       (_lp156999_ _rest157067_ __tmp158375))))
                  (_K157012157051_
                   (lambda (_rest157049_)
                     (let ()
                       (declare (not safe))
                       (_lp156999_ _rest157049_ _opts157002_))))
                  (_K157009157037_
                   (lambda (_rest157035_)
                     (let ()
                       (declare (not safe))
                       (_lp156999_ _rest157035_ _opts157002_)))))
              (if (let () (declare (not safe)) (##pair? _rest157003157023_))
                  (let ((_tl157019157075_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157003157023_)))
                        (_hd157018157073_
                         (let ()
                           (declare (not safe))
                           (##car _rest157003157023_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157018157073_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157019157075_))
                            (let ((_tl157021157080_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl157019157075_)))
                                  (_hd157020157078_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl157019157075_))))
                              (let ((_opt157083_ _hd157020157078_)
                                    (_rest157085_ _tl157021157080_))
                                (let ()
                                  (declare (not safe))
                                  (_K157017157070_ _rest157085_ _opt157083_))))
                            (let ((_rest157043_ _tl157019157075_))
                              (declare (not safe))
                              (_K157009157037_ _rest157043_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157018157073_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157019157075_))
                                (let* ((_tl157016157059_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157019157075_)))
                                       (_rest157062_ _tl157016157059_))
                                  (declare (not safe))
                                  (_K157012157051_ _rest157062_))
                                (let ((_rest157043_ _tl157019157075_))
                                  (declare (not safe))
                                  (_K157009157037_ _rest157043_)))
                            (let ((_rest157043_ _tl157019157075_))
                              (declare (not safe))
                              (_K157009157037_ _rest157043_)))))
                  (let () (declare (not safe)) (_else157007157031_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?157091_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?157091_))))
    (define gxc#gsc-cc-options
      (lambda _g158378_
        (let ((_g158377_ (let () (declare (not safe)) (##length _g158378_))))
          (cond ((let () (declare (not safe)) (##fx= _g158377_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g158378_))
                ((let () (declare (not safe)) (##fx= _g158377_ 1))
                 (apply (lambda (_phi?157093_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?157093_)))
                        _g158378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g158378_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156992_)
        (let* ((_user-staticdir156994_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp158379
                (let ((__tmp158380
                       (string-append
                        '"-I "
                        _staticdir156992_
                        '" -I "
                        _user-staticdir156994_)))
                  (declare (not safe))
                  (cons __tmp158380 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp158379))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156904_ ((_rest156906_ (gxc#current-compile-gsc-options))
                         (_opts156907_ '()))
          (let* ((_rest156908156928_ _rest156906_)
                 (_else156912156936_ (lambda () _opts156907_)))
            (let ((_K156922156979_
                   (lambda (_rest156977_)
                     (let ()
                       (declare (not safe))
                       (_lp156904_ _rest156977_ _opts156907_))))
                  (_K156917156957_
                   (lambda (_rest156954_ _opt156955_)
                     (let ((__tmp158381
                            (append _opts156907_
                                    (let ((__tmp158382
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt156955_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp158382)))))
                       (declare (not safe))
                       (_lp156904_ _rest156954_ __tmp158381))))
                  (_K156914156942_
                   (lambda (_rest156940_)
                     (let ()
                       (declare (not safe))
                       (_lp156904_ _rest156940_ _opts156907_)))))
              (if (let () (declare (not safe)) (##pair? _rest156908156928_))
                  (let ((_tl156924156984_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156908156928_)))
                        (_hd156923156982_
                         (let ()
                           (declare (not safe))
                           (##car _rest156908156928_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156923156982_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156924156984_))
                            (let* ((_tl156926156987_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156924156984_)))
                                   (_rest156990_ _tl156926156987_))
                              (declare (not safe))
                              (_K156922156979_ _rest156990_))
                            (let ((_rest156948_ _tl156924156984_))
                              (declare (not safe))
                              (_K156914156942_ _rest156948_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156923156982_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156924156984_))
                                (let ((_tl156921156967_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156924156984_)))
                                      (_hd156920156965_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156924156984_))))
                                  (let ((_opt156970_ _hd156920156965_)
                                        (_rest156972_ _tl156921156967_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156917156957_
                                       _rest156972_
                                       _opt156970_))))
                                (let ((_rest156948_ _tl156924156984_))
                                  (declare (not safe))
                                  (_K156914156942_ _rest156948_)))
                            (let ((_rest156948_ _tl156924156984_))
                              (declare (not safe))
                              (_K156914156942_ _rest156948_)))))
                  (let () (declare (not safe)) (_else156912156936_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156901_)
        (let ((__tmp158383
               (let () (declare (not safe)) (string-empty? _str156901_))))
          (declare (not safe))
          (not __tmp158383))))
    (define gxc#gsc-compile-file
      (lambda (_path156869_ _phi?156870_)
        (letrec ((_gsc-link-path156872_
                  (lambda (_base-path156893_)
                    (let _lp156895_ ((_n156897_ '1))
                      (let ((_path156899_
                             (string-append
                              _base-path156893_
                              '".o"
                              (number->string _n156897_))))
                        (if (file-exists? _path156899_)
                            (let ((__tmp158384
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156897_ '1))))
                              (declare (not safe))
                              (_lp156895_ __tmp158384))
                            _path156899_))))))
          (let* ((_base-path156874_ (path-strip-extension _path156869_))
                 (_path-c156876_ (string-append _base-path156874_ '".c"))
                 (_path-o156878_ (string-append _base-path156874_ '".o"))
                 (_link-path156880_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156872_ _base-path156874_)))
                 (_link-path-c156882_ (string-append _link-path156880_ '".c"))
                 (_link-path-o156884_ (string-append _link-path156880_ '".o"))
                 (_gsc-link-opts156886_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156870_)))
                 (_gsc-cc-opts156888_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156870_)))
                 (_gcc-ld-opts156890_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp158391 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158385
                   (let ((__tmp158386
                          (let ((__tmp158387
                                 (let ((__tmp158388
                                        (let ((__tmp158389
                                               (let ((__tmp158390
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156869_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp158390
                                                         _gsc-link-opts156886_))))
                                          (declare (not safe))
                                          (cons _link-path-c156882_
                                                __tmp158389))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp158388))))
                            (declare (not safe))
                            (cons '"-flat" __tmp158387))))
                     (declare (not safe))
                     (cons '"-link" __tmp158386))))
              (declare (not safe))
              (gxc#invoke __tmp158391 __tmp158385 'stdout-redirection: '#t))
            (let ((__tmp158398 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158392
                   (let ((__tmp158393
                          (let ((__tmp158394
                                 (let ((__tmp158395
                                        (let ((__tmp158396
                                               (let ((__tmp158397
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156882_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156876_
                                                       __tmp158397))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp158396
                                                  _gsc-cc-opts156888_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp158395))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp158394))))
                     (declare (not safe))
                     (cons '"-obj" __tmp158393))))
              (declare (not safe))
              (gxc#invoke __tmp158398 __tmp158392 'stdout-redirection: '#t))
            (let ((__tmp158404 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp158399
                   (let ((__tmp158400
                          (let ((__tmp158401
                                 (let ((__tmp158402
                                        (let ((__tmp158403
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156884_
                                                       _gcc-ld-opts156890_))))
                                          (declare (not safe))
                                          (cons _path-o156878_ __tmp158403))))
                                   (declare (not safe))
                                   (cons _link-path156880_ __tmp158402))))
                            (declare (not safe))
                            (cons '"-o" __tmp158401))))
                     (declare (not safe))
                     (cons '"-shared" __tmp158400))))
              (declare (not safe))
              (gxc#invoke __tmp158404 __tmp158399))
            (for-each
             delete-file
             (let ((__tmp158405
                    (let ((__tmp158406
                           (let ((__tmp158407
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156884_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156882_ __tmp158407))))
                      (declare (not safe))
                      (cons _path-o156878_ __tmp158406))))
               (declare (not safe))
               (cons _path-c156876_ __tmp158405)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156840_ _n156841_ _ext156842_)
        (letrec ((_module-relative-path156844_
                  (lambda (_ctx156867_)
                    (path-strip-directory
                     (let ((__tmp158408
                            (##structure-ref
                             _ctx156867_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp158408)))))
                 (_module-source-directory156845_
                  (lambda (_ctx156863_)
                    (path-directory
                     (let ((_mpath156865_
                            (##structure-ref
                             _ctx156863_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156865_))
                           _mpath156865_
                           (let ()
                             (declare (not safe))
                             (last _mpath156865_)))))))
                 (_section-string156846_
                  (lambda (_n156861_)
                    (if (let () (declare (not safe)) (number? _n156861_))
                        (number->string _n156861_)
                        (if (let () (declare (not safe)) (symbol? _n156861_))
                            (symbol->string _n156861_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156861_))
                                _n156861_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156861_)))))))
                 (_file-name156847_
                  (lambda (_path156859_)
                    (if _n156841_
                        (string-append
                         _path156859_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156846_ _n156841_))
                         _ext156842_)
                        (string-append _path156859_ _ext156842_))))
                 (_file-path156848_
                  (lambda ()
                    (let ((_$e156854_ (gxc#current-compile-output-dir)))
                      (if _$e156854_
                          ((lambda (_outdir156857_)
                             (path-expand
                              (let ((__tmp158410
                                     (let ((__tmp158411
                                            (##structure-ref
                                             _ctx156840_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp158411))))
                                (declare (not safe))
                                (_file-name156847_ __tmp158410))
                              _outdir156857_))
                           _$e156854_)
                          (path-expand
                           (let ((__tmp158409
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156844_
                                     _ctx156840_))))
                             (declare (not safe))
                             (_file-name156847_ __tmp158409))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156845_
                              _ctx156840_))))))))
          (let ((_path156850_
                 (let () (declare (not safe)) (_file-path156848_))))
            (let ((__tmp158412
                   (lambda ()
                     (let ((__tmp158413 (path-directory _path156850_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158413)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158412))
            _path156850_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156822_)
        (letrec ((_file-name156824_
                  (lambda (_id156838_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156838_))
                     '".scm")))
                 (_file-path156825_
                  (lambda ()
                    (let* ((_file156831_
                            (let ((__tmp158414
                                   (##structure-ref
                                    _ctx156822_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156824_ __tmp158414)))
                           (_$e156833_ (gxc#current-compile-output-dir)))
                      (if _$e156833_
                          ((lambda (_outdir156836_)
                             (path-expand
                              _file156831_
                              (path-expand '"static" _outdir156836_)))
                           _$e156833_)
                          (path-expand _file156831_ '"static"))))))
          (let ((_path156827_
                 (let () (declare (not safe)) (_file-path156825_))))
            (let ((__tmp158415
                   (lambda ()
                     (let ((__tmp158416 (path-directory _path156827_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158416)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158415))
            _path156827_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156816_ _opts156817_)
        (let ((_$e156819_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156817_))))
          (if _$e156819_
              (values _$e156819_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156816_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156809_)
        (if (let () (declare (not safe)) (string? _idstr156809_))
            (let* ((_str156811_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156809_)))
                   (_strs156813_
                    (let ()
                      (declare (not safe))
                      (string-split _str156811_ '#\/))))
              (let () (declare (not safe)) (string-join _strs156813_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156809_))
                (let ((__tmp158417 (symbol->string _idstr156809_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp158417))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156809_))))))
    (define gxc#invoke__%
      (lambda (_g158418_
               _stdout-redirection156770156774_
               _stderr-redirection156771156776_
               _program156778_
               _args156779_)
        (let* ((_stdout-redirection156781_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection156770156774_ absent-value))
                    '#f
                    _stdout-redirection156770156774_))
               (_stderr-redirection156783_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection156771156776_ absent-value))
                    '#f
                    _stderr-redirection156771156776_)))
          (let ((__tmp158419
                 (let ()
                   (declare (not safe))
                   (cons _program156778_ _args156779_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp158419))
          (let* ((_proc156785_
                  (open-process
                   (let ((__tmp158420
                          (let ((__tmp158421
                                 (let ((__tmp158422
                                        (let ((__tmp158423
                                               (let ((__tmp158424
                                                      (let ((__tmp158425
                                                             (let ((__tmp158426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection156783_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp158426))))
                (declare (not safe))
                (cons _stdout-redirection156781_ __tmp158425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp158424))))
                                          (declare (not safe))
                                          (cons _args156779_ __tmp158423))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp158422))))
                            (declare (not safe))
                            (cons _program156778_ __tmp158421))))
                     (declare (not safe))
                     (cons 'path: __tmp158420))))
                 (_output156790_
                  (if (or _stdout-redirection156781_
                          _stderr-redirection156783_)
                      (read-line _proc156785_ '#f)
                      '#f)))
            (let ((_status156793_ (process-status _proc156785_)))
              (close-port _proc156785_)
              (if (let () (declare (not safe)) (zero? _status156793_))
                  '#!void
                  (begin
                    (display _output156790_)
                    (let ((__tmp158427
                           (let ()
                             (declare (not safe))
                             (cons _program156778_ _args156779_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp158427
                       _status156793_)))))))))
    (define gxc#invoke__@
      (lambda (_keys156769156798_ . _args156800_)
        (apply gxc#invoke__%
               _keys156769156798_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156769156798_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156769156798_
                  'stderr-redirection:
                  absent-value))
               _args156800_)))
    (define gxc#invoke
      (lambda _args156772156806_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156772156806_)))
    (define gxc#join!
      (lambda (_thread156763_)
        (let ((__tmp158429
               (lambda (_exn156765_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn156765_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn156765_)))
                     (raise _exn156765_))))
              (__tmp158428 (lambda () (thread-join! _thread156763_))))
          (declare (not safe))
          (with-catch __tmp158429 __tmp158428))))))
