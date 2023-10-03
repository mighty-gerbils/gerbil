(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1696371941)
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
      (lambda (_path70092_ _fun70093_)
        (with-output-to-file
         (let ((__tmp73099
                (let ()
                  (declare (not safe))
                  (cons _path70092_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp73099))
         _fun70093_)))
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
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/system"
        "gerbil/runtime/loader"
        "gerbil/runtime/control"
        "gerbil/runtime/mop"
        "gerbil/runtime/error"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir70087_) (delete-file-or-directory _dir70087_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath70061_ _opts70062_)
        (if (let () (declare (not safe)) (string? _srcpath70061_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath70061_)))
        (let ((_outdir70064_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts70062_)))
              (_invoke-gsc?70065_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts70062_)))
              (_gsc-options70066_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts70062_)))
              (_keep-scm?70067_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts70062_)))
              (_verbosity70068_
               (let () (declare (not safe)) (pgetq 'verbose: _opts70062_)))
              (_optimize70069_
               (let () (declare (not safe)) (pgetq 'optimize: _opts70062_)))
              (_debug70070_
               (let () (declare (not safe)) (pgetq 'debug: _opts70062_)))
              (_gen-ssxi70071_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts70062_))))
          (if _outdir70064_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir70064_))))
              '#!void)
          (if _optimize70069_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let () (declare (not safe)) (gxc#optimizer-info-init!))))
              '#!void)
          (let ((__tmp73101
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath70061_))
                   (let ((__tmp73102
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath70061_))))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp73102))))
                (__tmp73100
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp73101
             gxc#current-compile-output-dir
             _outdir70064_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?70065_
             gxc#current-compile-gsc-options
             _gsc-options70066_
             gxc#current-compile-keep-scm
             _keep-scm?70067_
             gxc#current-compile-verbose
             _verbosity70068_
             gxc#current-compile-optimize
             _optimize70069_
             gxc#current-compile-debug
             _debug70070_
             gxc#current-compile-generate-ssxi
             _gen-ssxi70071_
             gxc#current-compile-timestamp
             __tmp73100
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath70080_)
        (let ((_opts70082_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath70080_ _opts70082_))))
    (define gxc#compile-module
      (lambda _g73104_
        (let ((_g73103_ (let () (declare (not safe)) (##length _g73104_))))
          (cond ((let () (declare (not safe)) (##fx= _g73103_ 1))
                 (apply (lambda (_srcpath70080_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath70080_)))
                        _g73104_))
                ((let () (declare (not safe)) (##fx= _g73103_ 2))
                 (apply (lambda (_srcpath70084_ _opts70085_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath70084_
                             _opts70085_)))
                        _g73104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g73104_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath70038_ _opts70039_)
        (if (let () (declare (not safe)) (string? _srcpath70038_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath70038_)))
        (let ((_outdir70041_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts70039_)))
              (_invoke-gsc?70042_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts70039_)))
              (_gsc-options70043_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts70039_)))
              (_keep-scm?70044_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts70039_)))
              (_verbosity70045_
               (let () (declare (not safe)) (pgetq 'verbose: _opts70039_))))
          (if _outdir70041_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir70041_))))
              '#!void)
          (let ((__tmp73106
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath70038_))
                   (let ((__tmp73107
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath70038_))))))
                     (declare (not safe))
                     (gxc#compile-executable-module __tmp73107 _opts70039_))))
                (__tmp73105
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp73106
             gxc#current-compile-output-dir
             _outdir70041_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?70042_
             gxc#current-compile-gsc-options
             _gsc-options70043_
             gxc#current-compile-keep-scm
             _keep-scm?70044_
             gxc#current-compile-verbose
             _verbosity70045_
             gxc#current-compile-timestamp
             __tmp73105
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath70053_)
        (let ((_opts70055_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath70053_ _opts70055_))))
    (define gxc#compile-exe
      (lambda _g73109_
        (let ((_g73108_ (let () (declare (not safe)) (##length _g73109_))))
          (cond ((let () (declare (not safe)) (##fx= _g73108_ 1))
                 (apply (lambda (_srcpath70053_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath70053_)))
                        _g73109_))
                ((let () (declare (not safe)) (##fx= _g73108_ 2))
                 (apply (lambda (_srcpath70057_ _opts70058_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath70057_ _opts70058_)))
                        _g73109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g73109_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx70034_ _opts70035_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts70035_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx70034_
               _opts70035_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx70034_
               _opts70035_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx69907_ _opts69908_)
        (letrec ((_generate-stub69910_
                  (lambda (_builtin-modules70030_)
                    (let ((_mod-main70032_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx69907_ 'main))))
                      (write (let ((__tmp73110
                                    (let ((__tmp73111
                                           (let ((__tmp73112
                                                  (let ((__tmp73113
                                                         (let ((__tmp73115
                                                                (let ((__tmp73116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules70030_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp73116)))
                       (__tmp73114
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp73115 __tmp73114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp73113))))
                                             (declare (not safe))
                                             (cons __tmp73112 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp73111))))
                               (declare (not safe))
                               (cons 'define __tmp73110)))
                      (write (let ((__tmp73117
                                    (let ((__tmp73128
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp73118
                                           (let ((__tmp73126
                                                  (let ((__tmp73127
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'builtin-modules
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp73127)))
                                                 (__tmp73119
                                                  (let ((__tmp73120
                                                         (let ((__tmp73121
                                                                (let ((__tmp73122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp73123
                                      (let ((__tmp73124
                                             (let ((__tmp73125
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp73125 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp73124))))
                                 (declare (not safe))
                                 (cons __tmp73123 '()))))
                          (declare (not safe))
                          (cons _mod-main70032_ __tmp73122))))
                   (declare (not safe))
                   (cons 'apply __tmp73121))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp73120 '()))))
                                             (declare (not safe))
                                             (cons __tmp73126 __tmp73119))))
                                      (declare (not safe))
                                      (cons __tmp73128 __tmp73118))))
                               (declare (not safe))
                               (cons 'define __tmp73117)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-gsc-cc-opts69911_
                  (lambda (_gerbil-staticdir70019_)
                    (let* ((_opts70021_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts69908_)))
                           (_base70023_
                            (string-append '"-I " _gerbil-staticdir70019_))
                           (_user-static-dir70025_
                            (path-expand
                             (path-expand '"lib/static" (gerbil-path))))
                           (_base70027_
                            (string-append
                             _base70023_
                             '" -I "
                             _user-static-dir70025_)))
                      (let ((__tmp73129
                             (let ()
                               (declare (not safe))
                               (gxc#gsc-cc-options))))
                        (declare (not safe))
                        (foldr1 cons __tmp73129 _base70027_)))))
                 (_get-libgerbil-ld-opts69912_
                  (lambda (_libgerbil70017_)
                    (call-with-input-file
                     (string-append _libgerbil70017_ '".ldd")
                     read)))
                 (_replace-extension69913_
                  (lambda (_path70014_ _ext70015_)
                    (string-append
                     (path-strip-extension _path70014_)
                     _ext70015_)))
                 (_not-exclude-module?69914_
                  (lambda (_ctx70010_)
                    (let ((_id-str70012_
                           (symbol->string
                            (##structure-ref
                             _ctx70010_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp73131
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"gerbil/" _id-str70012_))))
                            (declare (not safe))
                            (not __tmp73131))
                          (let ((__tmp73130
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str70012_))))
                            (declare (not safe))
                            (not __tmp73130))
                          '#f))))
                 (_not-file-empty?69915_
                  (lambda (_path70008_)
                    (let ((__tmp73132
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path70008_))))
                      (declare (not safe))
                      (not __tmp73132))))
                 (_compile-stub69916_
                  (lambda (_output-scm69923_ _output-bin69924_)
                    (let* ((_gerbil-home69926_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_gerbil-libdir69928_
                            (path-expand '"lib" _gerbil-home69926_))
                           (_gerbil-staticdir69930_
                            (path-expand '"static" _gerbil-libdir69928_))
                           (_gxlink69932_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir69928_))
                           (_tmp69934_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path69938_
                            (lambda (_f69936_)
                              (path-expand
                               (path-strip-directory _f69936_)
                               _tmp69934_)))
                           (_deps69940_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx69907_)))
                           (_deps69942_
                            (filter _not-exclude-module?69914_ _deps69940_))
                           (_src-deps-scm69944_
                            (map gxc#find-static-module-file _deps69942_))
                           (_src-deps-scm69946_
                            (filter _not-file-empty?69915_
                                    _src-deps-scm69944_))
                           (_src-deps-scm69948_
                            (map path-expand _src-deps-scm69946_))
                           (_deps-scm69950_
                            (map _tmp-path69938_ _src-deps-scm69948_))
                           (_deps-c69956_
                            (map (lambda (_g6995169953_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension69913_
                                      _g6995169953_
                                      '".c")))
                                 _deps-scm69950_))
                           (_deps-o69962_
                            (map (lambda (_g6995769959_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension69913_
                                      _g6995769959_
                                      '".o")))
                                 _deps-scm69950_))
                           (_src-bin-scm69964_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx69907_)))
                           (_src-bin-scm69966_
                            (path-expand _src-bin-scm69964_))
                           (_bin-scm69968_
                            (let ()
                              (declare (not safe))
                              (_tmp-path69938_ _src-bin-scm69966_)))
                           (_bin-c69970_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69913_ _bin-scm69968_ '".c")))
                           (_bin-o69972_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69913_ _bin-scm69968_ '".o")))
                           (_output-bin69974_ (path-expand _output-bin69924_))
                           (_output-scm69976_ (path-expand _output-scm69923_))
                           (_output-c69978_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69913_
                               _output-scm69976_
                               '".c")))
                           (_output-o69980_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69913_
                               _output-scm69976_
                               '".o")))
                           (_output_69982_
                            (string-append
                             (path-strip-extension _output-scm69976_)
                             '"_"))
                           (_output_-c69984_
                            (string-append _output_69982_ '".c"))
                           (_output_-o69986_
                            (string-append _output_69982_ '".o"))
                           (_gsc-link-opts69988_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options '#f)))
                           (_gsc-cc-opts69990_
                            (let ()
                              (declare (not safe))
                              (_get-gsc-cc-opts69911_
                               _gerbil-staticdir69930_)))
                           (_output-ld-opts69992_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a69994_
                            (path-expand '"libgerbil.a" _gerbil-libdir69928_))
                           (_libgerbil.so69996_
                            (path-expand '"libgerbil.so" _gerbil-libdir69928_))
                           (_libgerbil-ld-opts69998_
                            (if (file-exists? _libgerbil.so69996_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts69912_
                                   _libgerbil.so69996_))
                                (if (file-exists? _libgerbil.a69994_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts69912_
                                       _libgerbil.a69994_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a69994_
                                       _libgerbil.so69996_)))))
                           (_gerbil-rpath70000_
                            (string-append
                             '"-Wl,-rpath="
                             _gerbil-libdir69928_))
                           (_builtin-modules70004_
                            (map (lambda (_mod70002_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod70002_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx69907_ _deps69942_)))))
                      (let ((__tmp73133 (path-directory _output-bin69974_)))
                        (declare (not safe))
                        (create-directory* __tmp73133))
                      (let ((__tmp73134
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub69910_
                                  _builtin-modules70004_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm69976_
                         __tmp73134))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (create-directory _tmp69934_)
                            (for-each
                             copy-file
                             _src-deps-scm69948_
                             _deps-scm69950_)
                            (copy-file _src-bin-scm69966_ _bin-scm69968_)
                            (let ((__tmp73142
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp73135
                                   (let ((__tmp73136
                                          (let ((__tmp73137
                                                 (let ((__tmp73138
                                                        (let ((__tmp73139
                                                               (let ((__tmp73140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp73141
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm69976_ '()))))
                                (declare (not safe))
                                (cons _bin-scm69968_ __tmp73141))))
                         (declare (not safe))
                         (foldr1 cons __tmp73140 _deps-scm69950_))))
                  (declare (not safe))
                  (foldr1 cons __tmp73139 _gsc-link-opts69988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink69932_
                                                         __tmp73138))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp73137))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp73136))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp73142
                               __tmp73135))
                            (let ((__tmp73149
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp73143
                                   (let ((__tmp73144
                                          (let ((__tmp73145
                                                 (let ((__tmp73146
                                                        (let ((__tmp73147
                                                               (let ((__tmp73148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _output_-c69984_ '()))))
                         (declare (not safe))
                         (cons _output-c69978_ __tmp73148))))
                  (declare (not safe))
                  (cons _bin-c69970_ __tmp73147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp73146
                                                           _deps-c69956_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp73145
                                                    _gsc-cc-opts69990_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp73144))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp73149
                               __tmp73143))
                            (let ((__tmp73162
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp73150
                                   (let ((__tmp73151
                                          (let ((__tmp73152
                                                 (let ((__tmp73153
                                                        (let ((__tmp73154
                                                               (let ((__tmp73155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp73156
                                     (let ((__tmp73157
                                            (let ((__tmp73158
                                                   (let ((__tmp73159
                                                          (let ((__tmp73160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp73161
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts69998_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp73161))))
                    (declare (not safe))
                    (cons _gerbil-libdir69928_ __tmp73160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L" __tmp73159))))
                                              (declare (not safe))
                                              (cons _gerbil-rpath70000_
                                                    __tmp73158))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp73157
                                               _output-ld-opts69992_))))
                                (declare (not safe))
                                (cons _output_-o69986_ __tmp73156))))
                         (declare (not safe))
                         (cons _output-o69980_ __tmp73155))))
                  (declare (not safe))
                  (cons _bin-o69972_ __tmp73154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp73153
                                                           _deps-o69962_))))
                                            (declare (not safe))
                                            (cons _output-bin69974_
                                                  __tmp73152))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp73151))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp73162
                               __tmp73150))
                            (for-each
                             delete-file
                             (let ((__tmp73163
                                    (let ((__tmp73164
                                           (let ((__tmp73165
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o69986_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o69980_
                                                   __tmp73165))))
                                      (declare (not safe))
                                      (cons _output_-c69984_ __tmp73164))))
                               (declare (not safe))
                               (cons _output-c69978_ __tmp73163)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp69934_)))
                          '#!void)))))
          (let* ((_output-bin69918_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx69907_ _opts69908_)))
                 (_output-scm69920_
                  (string-append _output-bin69918_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub69916_ _output-scm69920_ _output-bin69918_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm69920_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx69727_ _opts69728_)
        (letrec ((_reset-declare69730_
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
                 (_generate-stub69731_
                  (lambda (_deps69898_)
                    (let ((_mod-main69900_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx69727_ 'main)))
                          (_reset-decl69901_
                           (let ()
                             (declare (not safe))
                             (_reset-declare69730_)))
                          (_user-decl69902_
                           (let ()
                             (declare (not safe))
                             (_user-declare69733_))))
                      (for-each
                       (lambda (_dep69904_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl69901_)
                         (newline)
                         (if _user-decl69902_
                             (begin (write _user-decl69902_) (newline))
                             '#!void)
                         (write (let ((__tmp73166
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep69904_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp73166)))
                         (newline))
                       _deps69898_)
                      (write (let ((__tmp73167
                                    (let ((__tmp73180
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp73168
                                           (let ((__tmp73176
                                                  (let ((__tmp73177
                                                         (let ((__tmp73178
                                                                (let ((__tmp73179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp73179))))
                   (declare (not safe))
                   (cons __tmp73178 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp73177)))
                                                 (__tmp73169
                                                  (let ((__tmp73170
                                                         (let ((__tmp73171
                                                                (let ((__tmp73172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp73173
                                      (let ((__tmp73174
                                             (let ((__tmp73175
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp73175 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp73174))))
                                 (declare (not safe))
                                 (cons __tmp73173 '()))))
                          (declare (not safe))
                          (cons _mod-main69900_ __tmp73172))))
                   (declare (not safe))
                   (cons 'apply __tmp73171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp73170 '()))))
                                             (declare (not safe))
                                             (cons __tmp73176 __tmp73169))))
                                      (declare (not safe))
                                      (cons __tmp73180 __tmp73168))))
                               (declare (not safe))
                               (cons 'define __tmp73167)))
                      (write '(gerbil-main))
                      (newline))))
                 (_static-include69732_
                  (lambda (_gsc-opts69891_ _libdir69892_)
                    (letrec* ((_static-dir69894_
                               (path-expand '"static" _libdir69892_))
                              (_user-static-dir69895_
                               (path-expand
                                (path-expand '"lib/static" (gerbil-path))))
                              (_cppflags69896_
                               (string-append
                                '"-I "
                                _static-dir69894_
                                '" -I "
                                _user-static-dir69895_)))
                      (append _gsc-opts69891_
                              (let ((__tmp73181
                                     (let ()
                                       (declare (not safe))
                                       (cons _cppflags69896_ '()))))
                                (declare (not safe))
                                (cons '"-cc-options" __tmp73181))))))
                 (_user-declare69733_
                  (lambda ()
                    (let* ((_gsc-opts69796_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts69728_)))
                           (_gsc-prelude69798_
                            (if _gsc-opts69796_
                                (member '"-prelude" _gsc-opts69796_)
                                '#f))
                           (_gsc-prelude69800_
                            (if _gsc-prelude69798_
                                (read (open-input-string
                                       (cadr _gsc-prelude69798_)))
                                '#f)))
                      (let _lp69803_ ((_rest69805_
                                       (let ()
                                         (declare (not safe))
                                         (cons _gsc-prelude69800_ '())))
                                      (_user-decls69806_ '()))
                        (let* ((_rest6980769815_ _rest69805_)
                               (_else6980969823_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls69806_))
                                      '#f
                                      (let ((__tmp73182
                                             (reverse _user-decls69806_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp73182)))))
                               (_K6981169879_
                                (lambda (_rest69826_ _expr69827_)
                                  (let* ((_expr6982869840_ _expr69827_)
                                         (_else6983169848_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp69803_
                                               _rest69826_
                                               _user-decls69806_)))))
                                    (let ((_K6983669869_
                                           (lambda (_decls69867_)
                                             (let ((__tmp73183
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls69806_
                                                              _decls69867_))))
                                               (declare (not safe))
                                               (_lp69803_
                                                _rest69826_
                                                __tmp73183))))
                                          (_K6983369854_
                                           (lambda (_exprs69852_)
                                             (let ((__tmp73184
                                                    (append _exprs69852_
                                                            _rest69826_)))
                                               (declare (not safe))
                                               (_lp69803_
                                                __tmp73184
                                                _user-decls69806_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr6982869840_))
                                          (let ((_tl6983869874_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr6982869840_)))
                                                (_hd6983769872_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr6982869840_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd6983769872_
                                                         'declare))
                                                (let ((_decls69877_
                                                       _tl6983869874_))
                                                  (declare (not safe))
                                                  (_K6983669869_ _decls69877_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd6983769872_
                                                             'begin))
                                                    (let ((_exprs69862_
                                                           _tl6983869874_))
                                                      (declare (not safe))
                                                      (_K6983369854_
                                                       _exprs69862_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else6983169848_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else6983169848_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6980769815_))
                              (let ((_hd6981269882_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6980769815_)))
                                    (_tl6981369884_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6980769815_))))
                                (let* ((_expr69887_ _hd6981269882_)
                                       (_rest69889_ _tl6981369884_))
                                  (declare (not safe))
                                  (_K6981169879_ _rest69889_ _expr69887_)))
                              (let ()
                                (declare (not safe))
                                (_else6980969823_))))))))
                 (_compile-stub69734_
                  (lambda (_output-scm69741_ _output-bin69742_)
                    (let* ((_gerbil-home69744_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_gerbil-libdir69746_
                            (path-expand '"lib" _gerbil-home69744_))
                           (_runtime69748_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp69750_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home69744_))
                           (_include-gambit-sharp69752_
                            (string-append
                             '"(include \""
                             _gambit-sharp69750_
                             '"\")"))
                           (_bin-scm69754_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx69727_)))
                           (_deps69756_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx69727_)))
                           (_deps69758_
                            (map gxc#find-static-module-file _deps69756_))
                           (_deps69763_
                            (filter (lambda (_$obj69760_)
                                      (let ((__tmp73185
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty? _$obj69760_))))
                                        (declare (not safe))
                                        (not __tmp73185)))
                                    _deps69758_))
                           (_deps69767_
                            (filter (lambda (_f69765_)
                                      (let ((__tmp73186
                                             (member _f69765_ _runtime69748_)))
                                        (declare (not safe))
                                        (not __tmp73186)))
                                    _deps69763_))
                           (_output-base69769_
                            (string-append
                             (path-strip-extension _output-scm69741_)))
                           (_output-c69771_
                            (string-append _output-base69769_ '".c"))
                           (_output-o69773_
                            (string-append _output-base69769_ '".o"))
                           (_output-c_69775_
                            (string-append _output-base69769_ '"_.c"))
                           (_output-o_69777_
                            (string-append _output-base69769_ '"_.o"))
                           (_gsc-link-opts69779_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options '#f)))
                           (_gsc-cc-opts69781_
                            (let ((__tmp73187
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gsc-cc-options))))
                              (declare (not safe))
                              (_static-include69732_
                               __tmp73187
                               _gerbil-libdir69746_)))
                           (_output-ld-opts69783_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros69785_
                            (if (gerbil-runtime-smp?)
                                (let ((__tmp73189
                                       (let ((__tmp73190
                                              (let ((__tmp73191
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp69752_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp73191))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp73190))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp73189))
                                (let ((__tmp73188
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp69752_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp73188))))
                           (_gsc-link-opts69787_
                            (append _gsc-link-opts69779_ _gsc-gx-macros69785_))
                           (_gerbil-rpath69789_
                            (string-append
                             '"-Wl,-rpath="
                             _gerbil-libdir69746_))
                           (_default-ld-options69791_
                            (let ((__tmp73192
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp73192))))
                      (let ((__tmp73193 (path-directory _output-bin69742_)))
                        (declare (not safe))
                        (create-directory* __tmp73193))
                      (let ((__tmp73194
                             (lambda ()
                               (let ((__tmp73195
                                      (let ((__tmp73196
                                             (let ((__tmp73197
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm69754_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp73197
                                                       _deps69767_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp73196
                                                _runtime69748_))))
                                 (declare (not safe))
                                 (_generate-stub69731_ __tmp73195)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm69741_
                         __tmp73194))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp73203
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp73198
                                   (let ((__tmp73199
                                          (let ((__tmp73200
                                                 (let ((__tmp73201
                                                        (let ((__tmp73202
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm69741_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp73202 _gsc-link-opts69787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_69775_
                                                         __tmp73201))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp73200))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp73199))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp73203
                               __tmp73198))
                            (let ((__tmp73207
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp73204
                                   (let ((__tmp73205
                                          (let ((__tmp73206
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _output-c_69775_
                                                         '()))))
                                            (declare (not safe))
                                            (cons _output-c69771_
                                                  __tmp73206))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp73205))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp73207
                               __tmp73204))
                            (let ((__tmp73217
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp73208
                                   (let ((__tmp73209
                                          (let ((__tmp73210
                                                 (let ((__tmp73211
                                                        (let ((__tmp73212
                                                               (let ((__tmp73213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp73214
                                     (let ((__tmp73215
                                            (let ((__tmp73216
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options69791_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir69746_
                                                    __tmp73216))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp73215))))
                                (declare (not safe))
                                (cons _gerbil-rpath69789_ __tmp73214))))
                         (declare (not safe))
                         (foldr1 cons __tmp73213 _output-ld-opts69783_))))
                  (declare (not safe))
                  (cons _output-o_69777_ __tmp73212))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o69773_
                                                         __tmp73211))))
                                            (declare (not safe))
                                            (cons _output-bin69742_
                                                  __tmp73210))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp73209))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp73217
                               __tmp73208)))
                          '#!void)))))
          (let* ((_output-bin69736_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx69727_ _opts69728_)))
                 (_output-scm69738_
                  (string-append _output-bin69736_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub69734_ _output-scm69738_ _output-bin69736_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm69738_))))))
    (define gxc#find-export-binding
      (lambda (_ctx69677_ _id69678_)
        (let ((_$e69724_
               (let ((__tmp73219
                      (lambda (_e6967969681_)
                        (let* ((_g6968369693_ _e6967969681_)
                               (_else6968569701_ (lambda () '#f))
                               (_K6968769705_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g6968369693_
                                 'gx#module-export::t))
                              (let* ((_e6968869708_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6968369693_ '1)))
                                     (_e6968969711_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6968369693_ '2)))
                                     (_e6969069714_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6968369693_ '3))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e6969069714_ '0))
                                    (let ((_e6969169717_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g6968369693_ '4))))
                                      (if ((lambda (_g6971969721_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g6971969721_ _id69678_)))
                                           _e6969169717_)
                                          (let ()
                                            (declare (not safe))
                                            (_K6968769705_))
                                          (let ()
                                            (declare (not safe))
                                            (_else6968569701_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else6968569701_))))
                              (let ()
                                (declare (not safe))
                                (_else6968569701_))))))
                     (__tmp73218
                      (##structure-ref
                       _ctx69677_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp73219 __tmp73218))))
          (if _$e69724_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e69724_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx69669_ _id69670_)
        (let ((_$e69672_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx69669_ _id69670_))))
          (if _$e69672_
              ((lambda (_bind69675_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind69675_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id69670_)))
                 (##structure-ref _bind69675_ '1 gx#binding::t '#f))
               _$e69672_)
              (let ((__tmp73220
                     (##structure-ref
                      _ctx69669_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp73220
                 _id69670_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx69556_)
        (letrec* ((_ht69558_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template69559_
                   (lambda (_in69621_ _phi69622_)
                     (let ((_iphi69624_
                            (fx+ _phi69622_
                                 (##direct-structure-ref
                                  _in69621_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports69625_
                            (##structure-ref
                             (##direct-structure-ref
                              _in69621_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp69627_ ((_rest69629_ _imports69625_)
                                       (_r69630_ '()))
                         (let* ((_rest6963169639_ _rest69629_)
                                (_else6963369647_ (lambda () _r69630_))
                                (_K6963569657_
                                 (lambda (_rest69650_ _in69651_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in69651_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi69624_))
                                           (let ((__tmp73227
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in69651_
                                                          _r69630_))))
                                             (declare (not safe))
                                             (_lp69627_
                                              _rest69650_
                                              __tmp73227))
                                           (let ()
                                             (declare (not safe))
                                             (_lp69627_ _rest69650_ _r69630_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in69651_
                                              'gx#module-import::t))
                                           (let ((_iphi69653_
                                                  (fx+ _phi69622_
                                                       (##direct-structure-ref
                                                        _in69651_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi69653_))
                                                 (let ((__tmp73225
                                                        (let ((__tmp73226
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in69651_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp73226 _r69630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp69627_
                                                    _rest69650_
                                                    __tmp73225))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp69627_
                                                    _rest69650_
                                                    _r69630_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in69651_
                                                  'gx#import-set::t))
                                               (let ((_xphi69655_
                                                      (fx+ _iphi69624_
                                                           (##direct-structure-ref
                                                            _in69651_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi69655_))
                                                     (let ((__tmp73223
                                                            (let ((__tmp73224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in69651_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp73224 _r69630_))))
               (declare (not safe))
               (_lp69627_ _rest69650_ __tmp73223))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi69655_)
                                                         (let ((__tmp73221
                                                                (let ((__tmp73222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template69559_
                                  _in69651_
                                  _iphi69624_))))
                          (declare (not safe))
                          (foldl1 cons _r69630_ __tmp73222))))
                   (declare (not safe))
                   (_lp69627_ _rest69650_ __tmp73221))
                 (let ()
                   (declare (not safe))
                   (_lp69627_ _rest69650_ _r69630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp69627_
                                                  _rest69650_
                                                  _r69630_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest6963169639_))
                               (let ((_hd6963669660_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest6963169639_)))
                                     (_tl6963769662_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest6963169639_))))
                                 (let* ((_in69665_ _hd6963669660_)
                                        (_rest69667_ _tl6963769662_))
                                   (declare (not safe))
                                   (_K6963569657_ _rest69667_ _in69665_)))
                               (let ()
                                 (declare (not safe))
                                 (_else6963369647_))))))))
                  (_find-deps69560_
                   (lambda (_rest69567_ _deps69568_)
                     (let* ((_rest6956969577_ _rest69567_)
                            (_else6957169585_ (lambda () _deps69568_))
                            (_K6957369609_
                             (lambda (_rest69588_ _hd69589_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd69589_
                                      'gx#module-context::t))
                                   (let ((_id69591_
                                          (##structure-ref
                                           _hd69589_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports69592_
                                          (##structure-ref
                                           _hd69589_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref _ht69558_ _id69591_ '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps69560_
                                            _rest69588_
                                            _deps69568_))
                                         (let ((_$e69594_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd69589_))))
                                           (if _$e69594_
                                               ((lambda (_pre69597_)
                                                  (let ((_xdeps69599_
                                                         (let ((__tmp73240
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre69597_ _imports69592_))))
                   (declare (not safe))
                   (_find-deps69560_ __tmp73240 _deps69568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht69558_
                                                       _id69591_
                                                       _hd69589_))
                                                    (let ((__tmp73241
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd69589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps69599_))))
              (declare (not safe))
              (_find-deps69560_ _rest69588_ __tmp73241))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e69594_)
                                               (let ((_xdeps69601_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps69560_
                                                         _imports69592_
                                                         _deps69568_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht69558_
                                                    _id69591_
                                                    _hd69589_))
                                                 (let ((__tmp73239
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd69589_
                                                                _xdeps69601_))))
                                                   (declare (not safe))
                                                   (_find-deps69560_
                                                    _rest69588_
                                                    __tmp73239)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd69589_
                                          'gx#prelude-context::t))
                                       (let ((_id69603_
                                              (##structure-ref
                                               _hd69589_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht69558_
                                                _id69603_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps69560_
                                                _rest69588_
                                                _deps69568_))
                                             (let ((_xdeps69605_
                                                    (let ((__tmp73237
                                                           (##structure-ref
                                                            _hd69589_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps69560_
                                                       __tmp73237
                                                       _deps69568_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht69558_
                                                      _id69603_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps69560_
                                                      _rest69588_
                                                      _xdeps69605_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht69558_
                                                        _id69603_
                                                        _hd69589_))
                                                     (let ((__tmp73238
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd69589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps69605_))))
               (declare (not safe))
               (_find-deps69560_ _rest69588_ __tmp73238)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd69589_
                                              'gx#module-import::t))
                                           (if (let ((__tmp73236
                                                      (##direct-structure-ref
                                                       _hd69589_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp73236))
                                               (let ((__tmp73234
                                                      (let ((__tmp73235
                                                             (##direct-structure-ref
                                                              _hd69589_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp73235
                                                              _rest69588_))))
                                                 (declare (not safe))
                                                 (_find-deps69560_
                                                  __tmp73234
                                                  _deps69568_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps69560_
                                                  _rest69588_
                                                  _deps69568_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd69589_
                                                  'gx#module-export::t))
                                               (let ((__tmp73232
                                                      (let ((__tmp73233
                                                             (##direct-structure-ref
                                                              _hd69589_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp73233
                                                              _rest69588_))))
                                                 (declare (not safe))
                                                 (_find-deps69560_
                                                  __tmp73232
                                                  _deps69568_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd69589_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp73231
                                                              (##direct-structure-ref
                                                               _hd69589_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp73231))
                                                       (let ((__tmp73229
                                                              (let ((__tmp73230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd69589_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp73230 _rest69588_))))
                 (declare (not safe))
                 (_find-deps69560_ __tmp73229 _deps69568_))
               (if (fxpositive?
                    (##direct-structure-ref _hd69589_ '2 gx#import-set::t '#f))
                   (let* ((_xdeps69607_
                           (let ()
                             (declare (not safe))
                             (_import-set-template69559_ _hd69589_ '0)))
                          (__tmp73228
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest69588_ _xdeps69607_))))
                     (declare (not safe))
                     (_find-deps69560_ __tmp73228 _deps69568_))
                   (let ()
                     (declare (not safe))
                     (_find-deps69560_ _rest69588_ _deps69568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd69589_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest6956969577_))
                           (let ((_hd6957469612_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest6956969577_)))
                                 (_tl6957569614_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest6956969577_))))
                             (let* ((_hd69617_ _hd6957469612_)
                                    (_rest69619_ _tl6957569614_))
                               (declare (not safe))
                               (_K6957369609_ _rest69619_ _hd69617_)))
                           (let ()
                             (declare (not safe))
                             (_else6957169585_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp73242
                                  (let ((_$e69562_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx69556_))))
                                    (if _$e69562_
                                        ((lambda (_pre69565_)
                                           (let ((__tmp73243
                                                  (##structure-ref
                                                   _ctx69556_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre69565_ __tmp73243)))
                                         _$e69562_)
                                        (##structure-ref
                                         _ctx69556_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps69560_ __tmp73242 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx69487_)
        (let* ((_context-id69489_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx69487_
                       'gx#module-context::t))
                    (##structure-ref _ctx69487_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx69487_)))
               (_scm69491_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id69489_))
                 '".scm"))
               (_dirs69493_ (gx#current-expander-module-library-path))
               (_dirs69499_
                (let ((_user-libpath69495_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath69495_
                      (let ((_user-libpath69497_
                             (path-expand '"lib" _user-libpath69495_)))
                        (if (member _user-libpath69497_ _dirs69493_)
                            _dirs69493_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath69497_ _dirs69493_))))
                      _dirs69493_)))
               (_dirs69508_
                (let ((_$e69501_ (gxc#current-compile-output-dir)))
                  (if _$e69501_
                      ((lambda (_g6950369505_)
                         (let ()
                           (declare (not safe))
                           (cons _g6950369505_ _dirs69499_)))
                       _$e69501_)
                      _dirs69499_)))
               (_dirs69514_
                (map (lambda (_g6950969511_)
                       (path-expand '"static" _g6950969511_))
                     _dirs69508_)))
          (let _lp69517_ ((_rest69519_ _dirs69514_))
            (let* ((_rest6952069528_ _rest69519_)
                   (_else6952269536_
                    (lambda ()
                      (let ((__tmp73244
                             (##structure-ref
                              _ctx69487_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp73244
                         _scm69491_))))
                   (_K6952469544_
                    (lambda (_rest69539_ _dir69540_)
                      (let ((_path69542_ (path-expand _scm69491_ _dir69540_)))
                        (if (file-exists? _path69542_)
                            _path69542_
                            (let ()
                              (declare (not safe))
                              (_lp69517_ _rest69539_)))))))
              (if (let () (declare (not safe)) (##pair? _rest6952069528_))
                  (let ((_hd6952569547_
                         (let ()
                           (declare (not safe))
                           (##car _rest6952069528_)))
                        (_tl6952669549_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6952069528_))))
                    (let* ((_dir69552_ _hd6952569547_)
                           (_rest69554_ _tl6952669549_))
                      (declare (not safe))
                      (_K6952469544_ _rest69554_ _dir69552_)))
                  (let () (declare (not safe)) (_else6952269536_))))))))
    (define gxc#file-empty?
      (lambda (_path69485_)
        (let ((__tmp73245 (file-info-size (file-info _path69485_ '#t))))
          (declare (not safe))
          (zero? __tmp73245))))
    (define gxc#compile-top-module
      (lambda (_ctx69474_)
        (let ((__tmp73249
               (lambda ()
                 (let ((__tmp73250
                        (##structure-ref
                         _ctx69474_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp73250))
                 (if (gxc#current-compile-optimize)
                     (with-lock
                      gxc#+driver-mutex+
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gxc#optimize! _ctx69474_))))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx69474_))
                 (if (let ((__tmp73253
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx69474_))))
                       (declare (not safe))
                       (null? __tmp73253))
                     (let* ((_thr169479_
                             (let ((__tmp73251
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx69474_)))))
                               (declare (not safe))
                               (spawn __tmp73251)))
                            (_thr269482_
                             (let ((__tmp73252
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx69474_)))))
                               (declare (not safe))
                               (spawn __tmp73252))))
                       (let () (declare (not safe)) (gxc#join! _thr169479_))
                       (let () (declare (not safe)) (gxc#join! _thr269482_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx69474_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx69474_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx69474_))
                     '#!void)))
              (__tmp73248
               (let ((__obj73097 (make-object gxc#symbol-table::t '2)))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj73097))
                 __obj73097))
              (__tmp73247
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp73246 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp73249
           gx#current-expander-context
           _ctx69474_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp73248
           gxc#current-compile-runtime-sections
           __tmp73247
           gxc#current-compile-runtime-names
           __tmp73246))))
    (define gxc#collect-bindings
      (lambda (_ctx69472_)
        (let ((__tmp73254
               (##structure-ref _ctx69472_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp73254))))
    (define gxc#compile-runtime-code
      (lambda (_ctx69418_)
        (letrec ((_compile169420_
                  (lambda (_ctx69461_)
                    (let* ((_code69463_
                            (##structure-ref
                             _ctx69461_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt69467_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code69463_))
                                (let ((_idstr69465_
                                       (let ((__tmp73255
                                              (##structure-ref
                                               _ctx69461_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp73255))))
                                  (string-append _idstr69465_ '"__0"))
                                '#f)))
                      (if _rt69467_
                          (begin
                            (let ((__tmp73256
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp73256 _ctx69461_ _rt69467_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code69422_
                               _ctx69461_
                               _code69463_)))
                          (let ((_path69470_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx69461_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file _path69470_ void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code69423_
                         _ctx69461_
                         _code69463_
                         _rt69467_)))))
                 (_context-timestamp69421_
                  (lambda (_ctx69459_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx69459_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code69422_
                  (lambda (_ctx69441_ _code69442_)
                    (let* ((_lifts69444_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code69447_
                            (let ((__tmp73259
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code69442_))))
                                  (__tmp73258
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp73257
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp73259
                               gx#current-expander-context
                               _ctx69441_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts69444_
                               gxc#current-compile-marks
                               __tmp73258
                               gxc#current-compile-identifiers
                               __tmp73257)))
                           (_runtime-code69449_
                            (if (let ((__tmp73263 (unbox _lifts69444_)))
                                  (declare (not safe))
                                  (null? __tmp73263))
                                _runtime-code69447_
                                (let ((__tmp73260
                                       (let ((__tmp73262
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code69447_
                                                      '())))
                                             (__tmp73261
                                              (reverse (unbox _lifts69444_))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp73262 __tmp73261))))
                                  (declare (not safe))
                                  (cons 'begin __tmp73260))))
                           (_runtime-code69451_
                            (let ((__tmp73264
                                   (let ((__tmp73266
                                          (let ((__tmp73267
                                                 (let ((__tmp73270
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp69421_
                                                           _ctx69441_)))
                                                       (__tmp73268
                                                        (let ((__tmp73269
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp73269
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp73270
                                                         __tmp73268))))
                                            (declare (not safe))
                                            (cons 'define __tmp73267)))
                                         (__tmp73265
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code69449_ '()))))
                                     (declare (not safe))
                                     (cons __tmp73266 __tmp73265))))
                              (declare (not safe))
                              (cons 'begin __tmp73264)))
                           (_scm069453_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx69441_
                               '0
                               '".scm"))))
                      (let ((_scms69456_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx69441_))))
                        (let ((__tmp73271
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm069453_
                                    _runtime-code69451_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp73271
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms69456_)
                            (delete-file _scms69456_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm069453_
                           '" => "
                           _scms69456_))
                        (copy-file _scm069453_ _scms69456_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm069453_))))))
                 (_generate-loader-code69423_
                  (lambda (_ctx69430_ _code69431_ _rt69432_)
                    (let* ((_loader-code69435_
                            (let ((__tmp73272
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code69431_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp73272
                               gx#current-expander-context
                               _ctx69430_)))
                           (_loader-code69437_
                            (if _rt69432_
                                (let ((__tmp73273
                                       (let ((__tmp73274
                                              (let ((__tmp73275
                                                     (let ((__tmp73276
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt69432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp73276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp73275 '()))))
                                         (declare (not safe))
                                         (cons _loader-code69435_
                                               __tmp73274))))
                                  (declare (not safe))
                                  (cons 'begin __tmp73273))
                                _loader-code69435_)))
                      (let ((__tmp73277
                             (lambda ()
                               (let ((__tmp73278
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx69430_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp73278
                                  _loader-code69437_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp73277
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules69425_
                 (let ((__tmp73279
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx69418_))))
                   (declare (not safe))
                   (cons _ctx69418_ __tmp73279))))
            (for-each
             (lambda (_ctx69427_)
               (let ((__tmp73280
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile169420_ _ctx69427_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp73280
                  gxc#current-compile-decls
                  '())))
             _all-modules69425_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx69315_)
        (letrec ((_compile-ssi69317_
                  (lambda (_code69388_)
                    (let* ((_path69390_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx69315_
                               '#f
                               '".ssi")))
                           (_prelude69401_
                            (let* ((_super69392_
                                    (##structure-ref
                                     _ctx69315_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e69394_
                                    (##structure-ref
                                     _super69392_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e69394_
                                  ((lambda (_g6939669398_)
                                     (make-symbol '":" _g6939669398_))
                                   _$e69394_)
                                  ':<root>)))
                           (_ns69403_
                            (##structure-ref
                             _ctx69315_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr69405_
                            (symbol->string
                             (##structure-ref
                              _ctx69315_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg69412_
                            (let ((_$e69407_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr69405_ '#\/))))
                              (if _$e69407_
                                  ((lambda (_x69410_)
                                     (string->symbol
                                      (substring _idstr69405_ '0 _x69410_)))
                                   _$e69407_)
                                  '#f)))
                           (_rt69414_
                            (let ((__tmp73281
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp73281 _ctx69315_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path69390_))
                      (let ((__tmp73282
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude69401_))
                               (if _pkg69412_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg69412_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns69403_))
                               (newline)
                               (pretty-print _code69388_)
                               (if _rt69414_
                                   (pretty-print
                                    (let ((__tmp73283
                                           (let ((__tmp73287
                                                  (let ((__tmp73288
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp73288)))
                                                 (__tmp73284
                                                  (let ((__tmp73285
                                                         (let ((__tmp73286
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt69414_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp73286))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp73285 '()))))
                                             (declare (not safe))
                                             (cons __tmp73287 __tmp73284))))
                                      (declare (not safe))
                                      (cons '%#call __tmp73283)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path69390_
                         __tmp73282)))))
                 (_compile-phi69318_
                  (lambda (_part69328_)
                    (let* ((_part6932969342_ _part69328_)
                           (_E6933169346_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part6932969342_))))
                           (_K6933269357_
                            (lambda (_code69349_
                                     _n69350_
                                     _phi69351_
                                     _phi-ctx69352_)
                              (let* ((_code69355_
                                      (let ((__tmp73289
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code69349_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp73289
                                         gx#current-expander-context
                                         _phi-ctx69352_
                                         gx#current-expander-phi
                                         _phi69351_)))
                                     (__tmp73290
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx69315_
                                         _n69350_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp73290
                                 _code69355_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part6932969342_))
                          (let ((_hd6933369360_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part6932969342_)))
                                (_tl6933469362_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part6932969342_))))
                            (let ((_phi-ctx69365_ _hd6933369360_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl6933469362_))
                                  (let ((_hd6933569367_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl6933469362_)))
                                        (_tl6933669369_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl6933469362_))))
                                    (let ((_phi69372_ _hd6933569367_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6933669369_))
                                          (let ((_hd6933769374_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6933669369_)))
                                                (_tl6933869376_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6933669369_))))
                                            (let ((_n69379_ _hd6933769374_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl6933869376_))
                                                  (let ((_hd6933969381_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl6933869376_)))
                                                        (_tl6934069383_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl6933869376_))))
                                                    (let ((_code69386_
                                                           _hd6933969381_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl6934069383_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K6933269357_
                                                             _code69386_
                                                             _n69379_
                                                             _phi69372_
                                                             _phi-ctx69365_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E6933169346_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E6933169346_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6933169346_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E6933169346_)))))
                          (let () (declare (not safe)) (_E6933169346_)))))))
          (let ((_g73291_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx69315_))))
            (begin
              (let ((_g73292_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g73291_)
                           (##vector-length _g73291_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g73292_ 2)))
                    (error "Context expects 2 values" _g73292_)))
              (let ((_ssi-code69320_
                     (let () (declare (not safe)) (##vector-ref _g73291_ 0)))
                    (_phi-code69321_
                     (let () (declare (not safe)) (##vector-ref _g73291_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi69317_ _ssi-code69320_))
                  (let ((_threads69326_
                         (map (lambda (_code69323_)
                                (let ((__tmp73293
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi69318_ _code69323_)))))
                                  (declare (not safe))
                                  (spawn __tmp73293)))
                              _phi-code69321_)))
                    (for-each gxc#join! _threads69326_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx69298_)
        (let* ((_path69300_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx69298_ '#f '".ssxi.ss")))
               (_code69302_
                (let ((__tmp73294
                       (##structure-ref
                        _ctx69298_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp73294)))
               (_idstr69304_
                (symbol->string
                 (##structure-ref _ctx69298_ '1 gx#expander-context::t '#f)))
               (_pkg69311_
                (let ((_$e69306_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr69304_ '#\/))))
                  (if _$e69306_
                      ((lambda (_x69309_)
                         (string->symbol (substring _idstr69304_ '0 _x69309_)))
                       _$e69306_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path69300_))
          (let ((__tmp73295
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg69311_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg69311_))
                       '#!void)
                   (newline)
                   (pretty-print _code69302_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path69300_ __tmp73295)))))
    (define gxc#generate-meta-code
      (lambda (_ctx69291_)
        (let* ((_state69293_
                (let ((__obj73098 (make-object gxc#meta-state::t '4)))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj73098 _ctx69291_))
                  __obj73098))
               (_ssi-code69295_
                (let ((__tmp73296
                       (##structure-ref
                        _ctx69291_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp73296 _state69293_))))
          (values _ssi-code69295_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state69293_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx69284_)
        (let ((_lifts69286_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp73299
                 (lambda ()
                   (let ((_code69289_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx69284_))))
                     (if (let ((__tmp73303 (unbox _lifts69286_)))
                           (declare (not safe))
                           (null? __tmp73303))
                         _code69289_
                         (let ((__tmp73300
                                (let ((__tmp73302
                                       (let ()
                                         (declare (not safe))
                                         (cons _code69289_ '())))
                                      (__tmp73301
                                       (reverse (unbox _lifts69286_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp73302 __tmp73301))))
                           (declare (not safe))
                           (cons 'begin __tmp73300))))))
                (__tmp73298
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp73297
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp73299
             gxc#current-compile-lift
             _lifts69286_
             gxc#current-compile-marks
             __tmp73298
             gxc#current-compile-identifiers
             __tmp73297)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx69280_)
        (let ((_modules69282_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp73304
                 (##structure-ref _ctx69280_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp73304 _modules69282_))
          (reverse (unbox _modules69282_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path69263_ _code69264_ _phi?69265_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path69263_))
        (let ((__tmp73305
               (lambda ()
                 (pretty-print
                  (let ((__tmp73306
                         (let ((__tmp73313
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp73307
                                (let ((__tmp73312
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp73308
                                       (let ((__tmp73311
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp73309
                                              (let ((__tmp73310
                                                     (if _phi?69265_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons '() __tmp73310))))
                                         (declare (not safe))
                                         (cons __tmp73311 __tmp73309))))
                                  (declare (not safe))
                                  (cons __tmp73312 __tmp73308))))
                           (declare (not safe))
                           (cons __tmp73313 __tmp73307))))
                    (declare (not safe))
                    (cons 'declare __tmp73306)))
                 (pretty-print _code69264_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path69263_ __tmp73305))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path69263_ _phi?69265_))
            '#!void)
        (if (gxc#current-compile-keep-scm) '#!void (delete-file _path69263_))))
    (define gxc#compile-scm-file__0
      (lambda (_path69271_ _code69272_)
        (let ((_phi?69274_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path69271_ _code69272_ _phi?69274_))))
    (define gxc#compile-scm-file
      (lambda _g73315_
        (let ((_g73314_ (let () (declare (not safe)) (##length _g73315_))))
          (cond ((let () (declare (not safe)) (##fx= _g73314_ 2))
                 (apply (lambda (_path69271_ _code69272_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0 _path69271_ _code69272_)))
                        _g73315_))
                ((let () (declare (not safe)) (##fx= _g73314_ 3))
                 (apply (lambda (_path69276_ _code69277_ _phi?69278_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path69276_
                             _code69277_
                             _phi?69278_)))
                        _g73315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g73315_))))))
    (define gxc#gsc-debug-options__%
      (lambda (_phi?69183_)
        (if (gxc#current-compile-debug)
            (if _phi?69183_
                '()
                (let ((__tmp73316
                       (let ((__tmp73317
                              (let ((__tmp73318
                                     (let ()
                                       (declare (not safe))
                                       (cons '"-g" '()))))
                                (declare (not safe))
                                (cons '"-cc-options" __tmp73318))))
                         (declare (not safe))
                         (cons '"-track-scheme" __tmp73317))))
                  (declare (not safe))
                  (cons '"-debug-source" __tmp73316)))
            '())))
    (define gxc#gsc-debug-options__0
      (lambda ()
        (let ((_phi?69258_ '#f))
          (declare (not safe))
          (gxc#gsc-debug-options__% _phi?69258_))))
    (define gxc#gsc-debug-options
      (lambda _g73320_
        (let ((_g73319_ (let () (declare (not safe)) (##length _g73320_))))
          (cond ((let () (declare (not safe)) (##fx= _g73319_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-debug-options__0)))
                        _g73320_))
                ((let () (declare (not safe)) (##fx= _g73319_ 1))
                 (apply (lambda (_phi?69260_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-debug-options__% _phi?69260_)))
                        _g73320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-debug-options
                  _g73320_))))))
    (define gxc#gsc-link-options
      (lambda (_phi?69092_)
        (let _lp69094_ ((_rest69096_ (gxc#current-compile-gsc-options))
                        (_opts69097_ '()))
          (let* ((_rest6909869118_ _rest69096_)
                 (_else6910269126_
                  (lambda ()
                    (let ((__tmp73322 (reverse _opts69097_))
                          (__tmp73321
                           (let ()
                             (declare (not safe))
                             (gxc#gsc-debug-options__% _phi?69092_))))
                      (declare (not safe))
                      (foldr1 cons __tmp73322 __tmp73321)))))
            (let ((_K6911269169_
                   (lambda (_rest69167_)
                     (let ()
                       (declare (not safe))
                       (_lp69094_ _rest69167_ _opts69097_))))
                  (_K6910769151_
                   (lambda (_rest69149_)
                     (let ()
                       (declare (not safe))
                       (_lp69094_ _rest69149_ _opts69097_))))
                  (_K6910469133_
                   (lambda (_rest69130_ _opt69131_)
                     (let ((__tmp73323
                            (let ()
                              (declare (not safe))
                              (cons _opt69131_ _opts69097_))))
                       (declare (not safe))
                       (_lp69094_ _rest69130_ __tmp73323)))))
              (if (let () (declare (not safe)) (##pair? _rest6909869118_))
                  (let ((_tl6911469174_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6909869118_)))
                        (_hd6911369172_
                         (let ()
                           (declare (not safe))
                           (##car _rest6909869118_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd6911369172_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl6911469174_))
                            (let* ((_tl6911669177_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl6911469174_)))
                                   (_rest69180_ _tl6911669177_))
                              (declare (not safe))
                              (_K6911269169_ _rest69180_))
                            (let ((_opt69141_ _hd6911369172_)
                                  (_rest69143_ _tl6911469174_))
                              (let ()
                                (declare (not safe))
                                (_K6910469133_ _rest69143_ _opt69141_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd6911369172_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl6911469174_))
                                (let* ((_tl6911169159_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl6911469174_)))
                                       (_rest69162_ _tl6911169159_))
                                  (declare (not safe))
                                  (_K6910769151_ _rest69162_))
                                (let ((_opt69141_ _hd6911369172_)
                                      (_rest69143_ _tl6911469174_))
                                  (let ()
                                    (declare (not safe))
                                    (_K6910469133_ _rest69143_ _opt69141_))))
                            (let ((_opt69141_ _hd6911369172_)
                                  (_rest69143_ _tl6911469174_))
                              (let ()
                                (declare (not safe))
                                (_K6910469133_ _rest69143_ _opt69141_))))))
                  (let () (declare (not safe)) (_else6910269126_))))))))
    (define gxc#gsc-cc-options
      (lambda ()
        (let _lp69004_ ((_rest69006_ (gxc#current-compile-gsc-options))
                        (_opts69007_ '()))
          (let* ((_rest6900869028_ _rest69006_)
                 (_else6901269036_ (lambda () (reverse _opts69007_))))
            (let ((_K6902269075_
                   (lambda (_rest69072_ _opt69073_)
                     (let ((__tmp73324
                            (let ((__tmp73325
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts69007_))))
                              (declare (not safe))
                              (cons _opt69073_ __tmp73325))))
                       (declare (not safe))
                       (_lp69004_ _rest69072_ __tmp73324))))
                  (_K6901769056_
                   (lambda (_rest69054_)
                     (let ()
                       (declare (not safe))
                       (_lp69004_ _rest69054_ _opts69007_))))
                  (_K6901469042_
                   (lambda (_rest69040_)
                     (let ()
                       (declare (not safe))
                       (_lp69004_ _rest69040_ _opts69007_)))))
              (if (let () (declare (not safe)) (##pair? _rest6900869028_))
                  (let ((_tl6902469080_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6900869028_)))
                        (_hd6902369078_
                         (let ()
                           (declare (not safe))
                           (##car _rest6900869028_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd6902369078_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl6902469080_))
                            (let ((_tl6902669085_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl6902469080_)))
                                  (_hd6902569083_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl6902469080_))))
                              (let ((_opt69088_ _hd6902569083_)
                                    (_rest69090_ _tl6902669085_))
                                (let ()
                                  (declare (not safe))
                                  (_K6902269075_ _rest69090_ _opt69088_))))
                            (let ((_rest69048_ _tl6902469080_))
                              (declare (not safe))
                              (_K6901469042_ _rest69048_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd6902369078_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl6902469080_))
                                (let* ((_tl6902169064_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl6902469080_)))
                                       (_rest69067_ _tl6902169064_))
                                  (declare (not safe))
                                  (_K6901769056_ _rest69067_))
                                (let ((_rest69048_ _tl6902469080_))
                                  (declare (not safe))
                                  (_K6901469042_ _rest69048_)))
                            (let ((_rest69048_ _tl6902469080_))
                              (declare (not safe))
                              (_K6901469042_ _rest69048_)))))
                  (let () (declare (not safe)) (_else6901269036_))))))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp68915_ ((_rest68917_ (gxc#current-compile-gsc-options))
                        (_opts68918_ '()))
          (let* ((_rest6891968939_ _rest68917_)
                 (_else6892368947_ (lambda () _opts68918_)))
            (let ((_K6893368990_
                   (lambda (_rest68988_)
                     (let ()
                       (declare (not safe))
                       (_lp68915_ _rest68988_ _opts68918_))))
                  (_K6892868968_
                   (lambda (_rest68965_ _opt68966_)
                     (let ((__tmp73326
                            (append _opts68918_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt68966_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp68915_ _rest68965_ __tmp73326))))
                  (_K6892568953_
                   (lambda (_rest68951_)
                     (let ()
                       (declare (not safe))
                       (_lp68915_ _rest68951_ _opts68918_)))))
              (if (let () (declare (not safe)) (##pair? _rest6891968939_))
                  (let ((_tl6893568995_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6891968939_)))
                        (_hd6893468993_
                         (let ()
                           (declare (not safe))
                           (##car _rest6891968939_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd6893468993_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl6893568995_))
                            (let* ((_tl6893768998_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl6893568995_)))
                                   (_rest69001_ _tl6893768998_))
                              (declare (not safe))
                              (_K6893368990_ _rest69001_))
                            (let ((_rest68959_ _tl6893568995_))
                              (declare (not safe))
                              (_K6892568953_ _rest68959_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd6893468993_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl6893568995_))
                                (let ((_tl6893268978_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl6893568995_)))
                                      (_hd6893168976_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl6893568995_))))
                                  (let ((_opt68981_ _hd6893168976_)
                                        (_rest68983_ _tl6893268978_))
                                    (let ()
                                      (declare (not safe))
                                      (_K6892868968_ _rest68983_ _opt68981_))))
                                (let ((_rest68959_ _tl6893568995_))
                                  (declare (not safe))
                                  (_K6892568953_ _rest68959_)))
                            (let ((_rest68959_ _tl6893568995_))
                              (declare (not safe))
                              (_K6892568953_ _rest68959_)))))
                  (let () (declare (not safe)) (_else6892368947_))))))))
    (define gxc#not-string-empty?
      (lambda (_str68912_)
        (let ((__tmp73327
               (let () (declare (not safe)) (string-empty? _str68912_))))
          (declare (not safe))
          (not __tmp73327))))
    (define gxc#gsc-compile-file
      (lambda (_path68880_ _phi?68881_)
        (letrec ((_gsc-link-path68883_
                  (lambda (_base-path68904_)
                    (let _lp68906_ ((_n68908_ '1))
                      (let ((_path68910_
                             (string-append
                              _base-path68904_
                              '".o"
                              (number->string _n68908_))))
                        (if (file-exists? _path68910_)
                            (let ((__tmp73328
                                   (let ()
                                     (declare (not safe))
                                     (+ _n68908_ '1))))
                              (declare (not safe))
                              (_lp68906_ __tmp73328))
                            _path68910_))))))
          (let* ((_base-path68885_ (path-strip-extension _path68880_))
                 (_path-c68887_ (string-append _base-path68885_ '".c"))
                 (_path-o68889_ (string-append _base-path68885_ '".o"))
                 (_link-path68891_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path68883_ _base-path68885_)))
                 (_link-path-c68893_ (string-append _link-path68891_ '".c"))
                 (_link-path-o68895_ (string-append _link-path68891_ '".o"))
                 (_gsc-link-opts68897_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options _phi?68881_)))
                 (_gsc-cc-opts68899_
                  (let () (declare (not safe)) (gxc#gsc-cc-options)))
                 (_gcc-ld-opts68901_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp73335 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp73329
                   (let ((__tmp73330
                          (let ((__tmp73331
                                 (let ((__tmp73332
                                        (let ((__tmp73333
                                               (let ((__tmp73334
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path68880_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp73334
                                                         _gsc-link-opts68897_))))
                                          (declare (not safe))
                                          (cons _link-path-c68893_
                                                __tmp73333))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp73332))))
                            (declare (not safe))
                            (cons '"-flat" __tmp73331))))
                     (declare (not safe))
                     (cons '"-link" __tmp73330))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp73335 __tmp73329))
            (let ((__tmp73342 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp73336
                   (let ((__tmp73337
                          (let ((__tmp73338
                                 (let ((__tmp73339
                                        (let ((__tmp73340
                                               (let ((__tmp73341
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c68893_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c68887_
                                                       __tmp73341))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp73340
                                                  _gsc-cc-opts68899_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp73339))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp73338))))
                     (declare (not safe))
                     (cons '"-obj" __tmp73337))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp73342 __tmp73336))
            (let ((__tmp73348 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp73343
                   (let ((__tmp73344
                          (let ((__tmp73345
                                 (let ((__tmp73346
                                        (let ((__tmp73347
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o68895_
                                                       _gcc-ld-opts68901_))))
                                          (declare (not safe))
                                          (cons _path-o68889_ __tmp73347))))
                                   (declare (not safe))
                                   (cons _link-path68891_ __tmp73346))))
                            (declare (not safe))
                            (cons '"-o" __tmp73345))))
                     (declare (not safe))
                     (cons '"-shared" __tmp73344))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp73348
               __tmp73343))
            (for-each
             delete-file
             (let ((__tmp73349
                    (let ((__tmp73350
                           (let ((__tmp73351
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o68895_ '()))))
                             (declare (not safe))
                             (cons _link-path-c68893_ __tmp73351))))
                      (declare (not safe))
                      (cons _path-o68889_ __tmp73350))))
               (declare (not safe))
               (cons _path-c68887_ __tmp73349)))))))
    (define gxc#compile-output-file
      (lambda (_ctx68852_ _n68853_ _ext68854_)
        (letrec ((_module-relative-path68856_
                  (lambda (_ctx68878_)
                    (path-strip-directory
                     (let ((__tmp73352
                            (##structure-ref
                             _ctx68878_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp73352)))))
                 (_module-source-directory68857_
                  (lambda (_ctx68874_)
                    (path-directory
                     (let ((_mpath68876_
                            (##structure-ref
                             _ctx68874_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let () (declare (not safe)) (string? _mpath68876_))
                           _mpath68876_
                           (let ()
                             (declare (not safe))
                             (last _mpath68876_)))))))
                 (_section-string68858_
                  (lambda (_n68872_)
                    (if (let () (declare (not safe)) (number? _n68872_))
                        (number->string _n68872_)
                        (if (let () (declare (not safe)) (symbol? _n68872_))
                            (symbol->string _n68872_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n68872_))
                                _n68872_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n68872_)))))))
                 (_file-name68859_
                  (lambda (_path68870_)
                    (if _n68853_
                        (string-append
                         _path68870_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string68858_ _n68853_))
                         _ext68854_)
                        (string-append _path68870_ _ext68854_))))
                 (_file-path68860_
                  (lambda ()
                    (let ((_$e68865_ (gxc#current-compile-output-dir)))
                      (if _$e68865_
                          ((lambda (_outdir68868_)
                             (path-expand
                              (let ((__tmp73354
                                     (let ((__tmp73355
                                            (##structure-ref
                                             _ctx68852_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp73355))))
                                (declare (not safe))
                                (_file-name68859_ __tmp73354))
                              _outdir68868_))
                           _$e68865_)
                          (path-expand
                           (let ((__tmp73353
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path68856_ _ctx68852_))))
                             (declare (not safe))
                             (_file-name68859_ __tmp73353))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory68857_ _ctx68852_))))))))
          (let ((_path68862_ (let () (declare (not safe)) (_file-path68860_))))
            (let ((__tmp73356 (path-directory _path68862_)))
              (declare (not safe))
              (create-directory* __tmp73356))
            _path68862_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx68835_)
        (letrec ((_file-name68837_
                  (lambda (_id68850_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id68850_))
                     '".scm")))
                 (_file-path68838_
                  (lambda ()
                    (let* ((_file68843_
                            (let ((__tmp73357
                                   (##structure-ref
                                    _ctx68835_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name68837_ __tmp73357)))
                           (_$e68845_ (gxc#current-compile-output-dir)))
                      (if _$e68845_
                          ((lambda (_outdir68848_)
                             (path-expand
                              _file68843_
                              (path-expand '"static" _outdir68848_)))
                           _$e68845_)
                          (path-expand _file68843_ '"static"))))))
          (let ((_path68840_ (let () (declare (not safe)) (_file-path68838_))))
            (let ((__tmp73358 (path-directory _path68840_)))
              (declare (not safe))
              (create-directory* __tmp73358))
            _path68840_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx68822_ _opts68823_)
        (let ((_$e68825_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts68823_))))
          (if _$e68825_
              (values _$e68825_)
              (let* ((_mod-str68828_
                      (symbol->string
                       (##structure-ref
                        _ctx68822_
                        '1
                        gx#expander-context::t
                        '#f)))
                     (_$e68830_
                      (let ()
                        (declare (not safe))
                        (string-rindex _mod-str68828_ '#\/))))
                (if _$e68830_
                    ((lambda (_ix68833_)
                       (substring
                        _mod-str68828_
                        (let () (declare (not safe)) (fx+ _ix68833_ '1))
                        (string-length _mod-str68828_)))
                     _$e68830_)
                    _mod-str68828_))))))
    (define gxc#static-module-name
      (lambda (_idstr68815_)
        (if (let () (declare (not safe)) (string? _idstr68815_))
            (let* ((_str68817_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr68815_)))
                   (_strs68819_
                    (let ()
                      (declare (not safe))
                      (string-split _str68817_ '#\/))))
              (let () (declare (not safe)) (string-join _strs68819_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr68815_))
                (let ((__tmp73359 (symbol->string _idstr68815_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp73359))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr68815_))))))
    (define gxc#invoke__%
      (lambda (_g73360_
               _stdout-redirection6877968783_
               _stderr-redirection6878068785_
               _program68787_
               _args68788_)
        (let* ((_stdout-redirection68790_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection6877968783_ absent-value))
                    '#f
                    _stdout-redirection6877968783_))
               (_stderr-redirection68792_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection6878068785_ absent-value))
                    '#f
                    _stderr-redirection6878068785_)))
          (let ((__tmp73361
                 (let ()
                   (declare (not safe))
                   (cons _program68787_ _args68788_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp73361))
          (let ((_proc68794_
                 (open-process
                  (let ((__tmp73362
                         (let ((__tmp73363
                                (let ((__tmp73364
                                       (let ((__tmp73365
                                              (let ((__tmp73366
                                                     (let ((__tmp73367
                                                            (let ((__tmp73368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection68792_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp73368))))
               (declare (not safe))
               (cons _stdout-redirection68790_ __tmp73367))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp73366))))
                                         (declare (not safe))
                                         (cons _args68788_ __tmp73365))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp73364))))
                           (declare (not safe))
                           (cons _program68787_ __tmp73363))))
                    (declare (not safe))
                    (cons 'path: __tmp73362)))))
            (if (or _stdout-redirection68790_ _stderr-redirection68792_)
                (read-line _proc68794_ '#f)
                '#!void)
            (let ((_status68799_ (process-status _proc68794_)))
              (close-port _proc68794_)
              (if (let () (declare (not safe)) (zero? _status68799_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program68787_))))))))
    (define gxc#invoke__@
      (lambda (_keys6877868804_ . _args68806_)
        (apply gxc#invoke__%
               _keys6877868804_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys6877868804_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys6877868804_
                  'stderr-redirection:
                  absent-value))
               _args68806_)))
    (define gxc#invoke
      (lambda _args6878168812_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args6878168812_)))
    (define gxc#join!
      (lambda (_thread68772_)
        (let ((__tmp73370
               (lambda (_exn68774_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn68774_))
                     (let ((__tmp73371
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn68774_))))
                       (declare (not safe))
                       (raise __tmp73371))
                     (let () (declare (not safe)) (raise _exn68774_)))))
              (__tmp73369 (lambda () (thread-join! _thread68772_))))
          (declare (not safe))
          (with-catch __tmp73370 __tmp73369))))))
