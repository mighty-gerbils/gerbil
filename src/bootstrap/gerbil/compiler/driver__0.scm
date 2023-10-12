(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1697117343)
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
      (lambda (_path71157_ _fun71158_)
        (with-output-to-file
         (let ((__tmp74164
                (let ()
                  (declare (not safe))
                  (cons _path71157_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp74164))
         _fun71158_)))
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
      (lambda (_gerbil-libdir71152_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir71152_)))
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
      (lambda (_dir71150_) (delete-file-or-directory _dir71150_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath71124_ _opts71125_)
        (if (let () (declare (not safe)) (string? _srcpath71124_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath71124_)))
        (let ((_outdir71127_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts71125_)))
              (_invoke-gsc?71128_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts71125_)))
              (_gsc-options71129_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts71125_)))
              (_keep-scm?71130_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts71125_)))
              (_verbosity71131_
               (let () (declare (not safe)) (pgetq 'verbose: _opts71125_)))
              (_optimize71132_
               (let () (declare (not safe)) (pgetq 'optimize: _opts71125_)))
              (_debug71133_
               (let () (declare (not safe)) (pgetq 'debug: _opts71125_)))
              (_gen-ssxi71134_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts71125_))))
          (if _outdir71127_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir71127_))))
              '#!void)
          (if _optimize71132_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let () (declare (not safe)) (gxc#optimizer-info-init!))))
              '#!void)
          (let ((__tmp74166
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath71124_))
                   (let ((__tmp74167
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath71124_))))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp74167))))
                (__tmp74165
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp74166
             gxc#current-compile-output-dir
             _outdir71127_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?71128_
             gxc#current-compile-gsc-options
             _gsc-options71129_
             gxc#current-compile-keep-scm
             _keep-scm?71130_
             gxc#current-compile-verbose
             _verbosity71131_
             gxc#current-compile-optimize
             _optimize71132_
             gxc#current-compile-debug
             _debug71133_
             gxc#current-compile-generate-ssxi
             _gen-ssxi71134_
             gxc#current-compile-timestamp
             __tmp74165
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath71143_)
        (let ((_opts71145_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath71143_ _opts71145_))))
    (define gxc#compile-module
      (lambda _g74169_
        (let ((_g74168_ (let () (declare (not safe)) (##length _g74169_))))
          (cond ((let () (declare (not safe)) (##fx= _g74168_ 1))
                 (apply (lambda (_srcpath71143_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath71143_)))
                        _g74169_))
                ((let () (declare (not safe)) (##fx= _g74168_ 2))
                 (apply (lambda (_srcpath71147_ _opts71148_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath71147_
                             _opts71148_)))
                        _g74169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g74169_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath71100_ _opts71101_)
        (if (let () (declare (not safe)) (string? _srcpath71100_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath71100_)))
        (let ((_outdir71103_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts71101_)))
              (_invoke-gsc?71104_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts71101_)))
              (_gsc-options71105_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts71101_)))
              (_keep-scm?71106_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts71101_)))
              (_verbosity71107_
               (let () (declare (not safe)) (pgetq 'verbose: _opts71101_)))
              (_debug71108_
               (let () (declare (not safe)) (pgetq 'debug: _opts71101_))))
          (if _outdir71103_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir71103_))))
              '#!void)
          (let ((__tmp74171
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath71100_))
                   (let ((__tmp74172
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath71100_))))))
                     (declare (not safe))
                     (gxc#compile-executable-module __tmp74172 _opts71101_))))
                (__tmp74170
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp74171
             gxc#current-compile-output-dir
             _outdir71103_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?71104_
             gxc#current-compile-gsc-options
             _gsc-options71105_
             gxc#current-compile-keep-scm
             _keep-scm?71106_
             gxc#current-compile-verbose
             _verbosity71107_
             gxc#current-compile-debug
             _debug71108_
             gxc#current-compile-timestamp
             __tmp74170
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath71116_)
        (let ((_opts71118_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath71116_ _opts71118_))))
    (define gxc#compile-exe
      (lambda _g74174_
        (let ((_g74173_ (let () (declare (not safe)) (##length _g74174_))))
          (cond ((let () (declare (not safe)) (##fx= _g74173_ 1))
                 (apply (lambda (_srcpath71116_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath71116_)))
                        _g74174_))
                ((let () (declare (not safe)) (##fx= _g74173_ 2))
                 (apply (lambda (_srcpath71120_ _opts71121_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath71120_ _opts71121_)))
                        _g74174_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g74174_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx71096_ _opts71097_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts71097_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx71096_
               _opts71097_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx71096_
               _opts71097_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx70977_ _opts70978_)
        (letrec ((_generate-stub70980_
                  (lambda (_builtin-modules71092_)
                    (let ((_mod-main71094_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx70977_ 'main))))
                      (write (let ((__tmp74175
                                    (let ((__tmp74176
                                           (let ((__tmp74177
                                                  (let ((__tmp74178
                                                         (let ((__tmp74180
                                                                (let ((__tmp74181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules71092_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp74181)))
                       (__tmp74179
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp74180 __tmp74179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp74178))))
                                             (declare (not safe))
                                             (cons __tmp74177 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp74176))))
                               (declare (not safe))
                               (cons 'define __tmp74175)))
                      (write (let ((__tmp74182
                                    (let ((__tmp74193
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp74183
                                           (let ((__tmp74191
                                                  (let ((__tmp74192
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'builtin-modules
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp74192)))
                                                 (__tmp74184
                                                  (let ((__tmp74185
                                                         (let ((__tmp74186
                                                                (let ((__tmp74187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp74188
                                      (let ((__tmp74189
                                             (let ((__tmp74190
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp74190 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp74189))))
                                 (declare (not safe))
                                 (cons __tmp74188 '()))))
                          (declare (not safe))
                          (cons _mod-main71094_ __tmp74187))))
                   (declare (not safe))
                   (cons 'apply __tmp74186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74185 '()))))
                                             (declare (not safe))
                                             (cons __tmp74191 __tmp74184))))
                                      (declare (not safe))
                                      (cons __tmp74193 __tmp74183))))
                               (declare (not safe))
                               (cons 'define __tmp74182)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts70981_
                  (lambda (_libgerbil71090_)
                    (call-with-input-file
                     (string-append _libgerbil71090_ '".ldd")
                     read)))
                 (_replace-extension70982_
                  (lambda (_path71087_ _ext71088_)
                    (string-append
                     (path-strip-extension _path71087_)
                     _ext71088_)))
                 (_not-exclude-module?70983_
                  (lambda (_ctx71083_)
                    (let ((_id-str71085_
                           (symbol->string
                            (##structure-ref
                             _ctx71083_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp74195
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"gerbil/" _id-str71085_))))
                            (declare (not safe))
                            (not __tmp74195))
                          (let ((__tmp74194
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str71085_))))
                            (declare (not safe))
                            (not __tmp74194))
                          '#f))))
                 (_not-file-empty?70984_
                  (lambda (_path71081_)
                    (let ((__tmp74196
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path71081_))))
                      (declare (not safe))
                      (not __tmp74196))))
                 (_compile-stub70985_
                  (lambda (_output-scm70992_ _output-bin70993_)
                    (let* ((_gerbil-home70995_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_gerbil-libdir70997_
                            (path-expand '"lib" _gerbil-home70995_))
                           (_gerbil-staticdir70999_
                            (path-expand '"static" _gerbil-libdir70997_))
                           (_gxlink71001_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir70997_))
                           (_tmp71003_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path71007_
                            (lambda (_f71005_)
                              (path-expand
                               (path-strip-directory _f71005_)
                               _tmp71003_)))
                           (_deps71009_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx70977_)))
                           (_deps71011_
                            (filter _not-exclude-module?70983_ _deps71009_))
                           (_src-deps-scm71013_
                            (map gxc#find-static-module-file _deps71011_))
                           (_src-deps-scm71015_
                            (filter _not-file-empty?70984_
                                    _src-deps-scm71013_))
                           (_src-deps-scm71017_
                            (map path-expand _src-deps-scm71015_))
                           (_deps-scm71019_
                            (map _tmp-path71007_ _src-deps-scm71017_))
                           (_deps-c71025_
                            (map (lambda (_g7102071022_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension70982_
                                      _g7102071022_
                                      '".c")))
                                 _deps-scm71019_))
                           (_deps-o71031_
                            (map (lambda (_g7102671028_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension70982_
                                      _g7102671028_
                                      '".o")))
                                 _deps-scm71019_))
                           (_src-bin-scm71033_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx70977_)))
                           (_src-bin-scm71035_
                            (path-expand _src-bin-scm71033_))
                           (_bin-scm71037_
                            (let ()
                              (declare (not safe))
                              (_tmp-path71007_ _src-bin-scm71035_)))
                           (_bin-c71039_
                            (let ()
                              (declare (not safe))
                              (_replace-extension70982_ _bin-scm71037_ '".c")))
                           (_bin-o71041_
                            (let ()
                              (declare (not safe))
                              (_replace-extension70982_ _bin-scm71037_ '".o")))
                           (_output-bin71043_ (path-expand _output-bin70993_))
                           (_output-scm71045_ (path-expand _output-scm70992_))
                           (_output-c71047_
                            (let ()
                              (declare (not safe))
                              (_replace-extension70982_
                               _output-scm71045_
                               '".c")))
                           (_output-o71049_
                            (let ()
                              (declare (not safe))
                              (_replace-extension70982_
                               _output-scm71045_
                               '".o")))
                           (_output_71051_
                            (string-append
                             (path-strip-extension _output-scm71045_)
                             '"_"))
                           (_output_-c71053_
                            (string-append _output_71051_ '".c"))
                           (_output_-o71055_
                            (string-append _output_71051_ '".o"))
                           (_gsc-link-opts71057_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts71059_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts71061_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir70999_)))
                           (_output-ld-opts71063_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a71065_
                            (path-expand '"libgerbil.a" _gerbil-libdir70997_))
                           (_libgerbil.so71067_
                            (path-expand '"libgerbil.so" _gerbil-libdir70997_))
                           (_libgerbil-ld-opts71069_
                            (if (file-exists? _libgerbil.so71067_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts70981_
                                   _libgerbil.so71067_))
                                (if (file-exists? _libgerbil.a71065_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts70981_
                                       _libgerbil.a71065_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a71065_
                                       _libgerbil.so71067_)))))
                           (_rpath71071_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir70997_)))
                           (_builtin-modules71075_
                            (map (lambda (_mod71073_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod71073_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx70977_ _deps71011_)))))
                      (with-lock
                       gxc#+driver-mutex+
                       (lambda ()
                         (let ((__tmp74197 (path-directory _output-bin71043_)))
                           (declare (not safe))
                           (create-directory* __tmp74197))))
                      (let ((__tmp74198
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub70980_
                                  _builtin-modules71075_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm71045_
                         __tmp74198))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (with-lock
                             gxc#+driver-mutex+
                             (lambda () (create-directory _tmp71003_)))
                            (for-each
                             copy-file
                             _src-deps-scm71017_
                             _deps-scm71019_)
                            (copy-file _src-bin-scm71035_ _bin-scm71037_)
                            (let ((__tmp74206
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74199
                                   (let ((__tmp74200
                                          (let ((__tmp74201
                                                 (let ((__tmp74202
                                                        (let ((__tmp74203
                                                               (let ((__tmp74204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74205
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm71045_ '()))))
                                (declare (not safe))
                                (cons _bin-scm71037_ __tmp74205))))
                         (declare (not safe))
                         (foldr1 cons __tmp74204 _deps-scm71019_))))
                  (declare (not safe))
                  (foldr1 cons __tmp74203 _gsc-link-opts71057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink71001_
                                                         __tmp74202))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp74201))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp74200))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74206
                               __tmp74199))
                            (let ((__tmp74214
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74207
                                   (let ((__tmp74208
                                          (let ((__tmp74209
                                                 (let ((__tmp74210
                                                        (let ((__tmp74211
                                                               (let ((__tmp74212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74213
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c71053_ '()))))
                                (declare (not safe))
                                (cons _output-c71047_ __tmp74213))))
                         (declare (not safe))
                         (cons _bin-c71039_ __tmp74212))))
                  (declare (not safe))
                  (foldr1 cons __tmp74211 _deps-c71025_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp74210
                                                           _gsc-static-opts71061_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp74209
                                                    _gsc-cc-opts71059_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp74208))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74214
                               __tmp74207))
                            (let ((__tmp74227
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp74215
                                   (let ((__tmp74216
                                          (let ((__tmp74217
                                                 (let ((__tmp74218
                                                        (let ((__tmp74219
                                                               (let ((__tmp74220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74221
                                     (let ((__tmp74222
                                            (let ((__tmp74223
                                                   (let ((__tmp74224
                                                          (let ((__tmp74225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp74226
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts71069_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp74226))))
                    (declare (not safe))
                    (cons _gerbil-libdir70997_ __tmp74225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L" __tmp74224))))
                                              (declare (not safe))
                                              (cons _rpath71071_ __tmp74223))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp74222
                                               _output-ld-opts71063_))))
                                (declare (not safe))
                                (cons _output_-o71055_ __tmp74221))))
                         (declare (not safe))
                         (cons _output-o71049_ __tmp74220))))
                  (declare (not safe))
                  (cons _bin-o71041_ __tmp74219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp74218
                                                           _deps-o71031_))))
                                            (declare (not safe))
                                            (cons _output-bin71043_
                                                  __tmp74217))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp74216))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74227
                               __tmp74215))
                            (for-each
                             delete-file
                             (let ((__tmp74228
                                    (let ((__tmp74229
                                           (let ((__tmp74230
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o71055_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o71049_
                                                   __tmp74230))))
                                      (declare (not safe))
                                      (cons _output_-c71053_ __tmp74229))))
                               (declare (not safe))
                               (cons _output-c71047_ __tmp74228)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp71003_)))
                          '#!void)))))
          (let* ((_output-bin70987_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx70977_ _opts70978_)))
                 (_output-scm70989_
                  (string-append _output-bin70987_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub70985_ _output-scm70989_ _output-bin70987_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm70989_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx70802_ _opts70803_)
        (letrec ((_reset-declare70805_
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
                 (_generate-stub70806_
                  (lambda (_deps70968_)
                    (let ((_mod-main70970_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx70802_ 'main)))
                          (_reset-decl70971_
                           (let ()
                             (declare (not safe))
                             (_reset-declare70805_)))
                          (_user-decl70972_
                           (let ()
                             (declare (not safe))
                             (_user-declare70807_))))
                      (for-each
                       (lambda (_dep70974_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl70971_)
                         (newline)
                         (if _user-decl70972_
                             (begin (write _user-decl70972_) (newline))
                             '#!void)
                         (write (let ((__tmp74231
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep70974_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp74231)))
                         (newline))
                       _deps70968_)
                      (write (let ((__tmp74232
                                    (let ((__tmp74245
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp74233
                                           (let ((__tmp74241
                                                  (let ((__tmp74242
                                                         (let ((__tmp74243
                                                                (let ((__tmp74244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp74244))))
                   (declare (not safe))
                   (cons __tmp74243 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp74242)))
                                                 (__tmp74234
                                                  (let ((__tmp74235
                                                         (let ((__tmp74236
                                                                (let ((__tmp74237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp74238
                                      (let ((__tmp74239
                                             (let ((__tmp74240
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp74240 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp74239))))
                                 (declare (not safe))
                                 (cons __tmp74238 '()))))
                          (declare (not safe))
                          (cons _mod-main70970_ __tmp74237))))
                   (declare (not safe))
                   (cons 'apply __tmp74236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74235 '()))))
                                             (declare (not safe))
                                             (cons __tmp74241 __tmp74234))))
                                      (declare (not safe))
                                      (cons __tmp74245 __tmp74233))))
                               (declare (not safe))
                               (cons 'define __tmp74232)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare70807_
                  (lambda ()
                    (let* ((_gsc-opts70873_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts70803_)))
                           (_gsc-prelude70875_
                            (if _gsc-opts70873_
                                (member '"-prelude" _gsc-opts70873_)
                                '#f))
                           (_gsc-prelude70877_
                            (if _gsc-prelude70875_
                                (read (open-input-string
                                       (cadr _gsc-prelude70875_)))
                                '#f)))
                      (let _lp70880_ ((_rest70882_
                                       (let ()
                                         (declare (not safe))
                                         (cons _gsc-prelude70877_ '())))
                                      (_user-decls70883_ '()))
                        (let* ((_rest7088470892_ _rest70882_)
                               (_else7088670900_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls70883_))
                                      '#f
                                      (let ((__tmp74246
                                             (reverse _user-decls70883_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp74246)))))
                               (_K7088870956_
                                (lambda (_rest70903_ _expr70904_)
                                  (let* ((_expr7090570917_ _expr70904_)
                                         (_else7090870925_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp70880_
                                               _rest70903_
                                               _user-decls70883_)))))
                                    (let ((_K7091370946_
                                           (lambda (_decls70944_)
                                             (let ((__tmp74247
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls70883_
                                                              _decls70944_))))
                                               (declare (not safe))
                                               (_lp70880_
                                                _rest70903_
                                                __tmp74247))))
                                          (_K7091070931_
                                           (lambda (_exprs70929_)
                                             (let ((__tmp74248
                                                    (append _exprs70929_
                                                            _rest70903_)))
                                               (declare (not safe))
                                               (_lp70880_
                                                __tmp74248
                                                _user-decls70883_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr7090570917_))
                                          (let ((_tl7091570951_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr7090570917_)))
                                                (_hd7091470949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr7090570917_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd7091470949_
                                                         'declare))
                                                (let ((_decls70954_
                                                       _tl7091570951_))
                                                  (declare (not safe))
                                                  (_K7091370946_ _decls70954_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd7091470949_
                                                             'begin))
                                                    (let ((_exprs70939_
                                                           _tl7091570951_))
                                                      (declare (not safe))
                                                      (_K7091070931_
                                                       _exprs70939_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else7090870925_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else7090870925_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7088470892_))
                              (let ((_hd7088970959_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7088470892_)))
                                    (_tl7089070961_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7088470892_))))
                                (let* ((_expr70964_ _hd7088970959_)
                                       (_rest70966_ _tl7089070961_))
                                  (declare (not safe))
                                  (_K7088870956_ _rest70966_ _expr70964_)))
                              (let ()
                                (declare (not safe))
                                (_else7088670900_))))))))
                 (_compile-stub70808_
                  (lambda (_output-scm70815_ _output-bin70816_)
                    (let* ((_gerbil-home70818_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_gerbil-libdir70820_
                            (path-expand '"lib" _gerbil-home70818_))
                           (_runtime70822_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp70824_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home70818_))
                           (_include-gambit-sharp70826_
                            (string-append
                             '"(include \""
                             _gambit-sharp70824_
                             '"\")"))
                           (_bin-scm70828_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx70802_)))
                           (_deps70830_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx70802_)))
                           (_deps70832_
                            (map gxc#find-static-module-file _deps70830_))
                           (_deps70837_
                            (filter (lambda (_$obj70834_)
                                      (let ((__tmp74249
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty? _$obj70834_))))
                                        (declare (not safe))
                                        (not __tmp74249)))
                                    _deps70832_))
                           (_deps70841_
                            (filter (lambda (_f70839_)
                                      (let ((__tmp74250
                                             (member _f70839_ _runtime70822_)))
                                        (declare (not safe))
                                        (not __tmp74250)))
                                    _deps70837_))
                           (_output-base70843_
                            (string-append
                             (path-strip-extension _output-scm70815_)))
                           (_output-c70845_
                            (string-append _output-base70843_ '".c"))
                           (_output-o70847_
                            (string-append _output-base70843_ '".o"))
                           (_output-c_70849_
                            (string-append _output-base70843_ '"_.c"))
                           (_output-o_70851_
                            (string-append _output-base70843_ '"_.o"))
                           (_gsc-link-opts70853_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts70855_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts70857_
                            (let ((__tmp74251
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir70820_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp74251)))
                           (_output-ld-opts70859_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros70861_
                            (if (gerbil-runtime-smp?)
                                (let ((__tmp74253
                                       (let ((__tmp74254
                                              (let ((__tmp74255
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp70826_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp74255))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp74254))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp74253))
                                (let ((__tmp74252
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp70826_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp74252))))
                           (_gsc-link-opts70863_
                            (append _gsc-link-opts70853_ _gsc-gx-macros70861_))
                           (_rpath70865_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir70820_)))
                           (_default-ld-options70867_
                            (let ((__tmp74256
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp74256))))
                      (with-lock
                       gxc#+driver-mutex+
                       (lambda ()
                         (let ((__tmp74257 (path-directory _output-bin70816_)))
                           (declare (not safe))
                           (create-directory* __tmp74257))))
                      (let ((__tmp74258
                             (lambda ()
                               (let ((__tmp74259
                                      (let ((__tmp74260
                                             (let ((__tmp74261
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm70828_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp74261
                                                       _deps70841_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp74260
                                                _runtime70822_))))
                                 (declare (not safe))
                                 (_generate-stub70806_ __tmp74259)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm70815_
                         __tmp74258))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp74267
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74262
                                   (let ((__tmp74263
                                          (let ((__tmp74264
                                                 (let ((__tmp74265
                                                        (let ((__tmp74266
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm70815_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp74266 _gsc-link-opts70863_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_70849_
                                                         __tmp74265))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp74264))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp74263))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74267
                               __tmp74262))
                            (let ((__tmp74273
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74268
                                   (let ((__tmp74269
                                          (let ((__tmp74270
                                                 (let ((__tmp74271
                                                        (let ((__tmp74272
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_70849_ '()))))
                  (declare (not safe))
                  (cons _output-c70845_ __tmp74272))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp74271
                                                           _gsc-static-opts70857_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp74270
                                                    _gsc-cc-opts70855_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp74269))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74273
                               __tmp74268))
                            (let ((__tmp74283
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp74274
                                   (let ((__tmp74275
                                          (let ((__tmp74276
                                                 (let ((__tmp74277
                                                        (let ((__tmp74278
                                                               (let ((__tmp74279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74280
                                     (let ((__tmp74281
                                            (let ((__tmp74282
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options70867_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir70820_
                                                    __tmp74282))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp74281))))
                                (declare (not safe))
                                (cons _rpath70865_ __tmp74280))))
                         (declare (not safe))
                         (foldr1 cons __tmp74279 _output-ld-opts70859_))))
                  (declare (not safe))
                  (cons _output-o_70851_ __tmp74278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o70847_
                                                         __tmp74277))))
                                            (declare (not safe))
                                            (cons _output-bin70816_
                                                  __tmp74276))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp74275))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74283
                               __tmp74274)))
                          '#!void)))))
          (let* ((_output-bin70810_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx70802_ _opts70803_)))
                 (_output-scm70812_
                  (string-append _output-bin70810_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub70808_ _output-scm70812_ _output-bin70810_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm70812_))))))
    (define gxc#find-export-binding
      (lambda (_ctx70752_ _id70753_)
        (let ((_$e70799_
               (let ((__tmp74285
                      (lambda (_e7075470756_)
                        (let* ((_g7075870768_ _e7075470756_)
                               (_else7076070776_ (lambda () '#f))
                               (_K7076270780_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g7075870768_
                                 'gx#module-export::t))
                              (let* ((_e7076370783_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g7075870768_ '1)))
                                     (_e7076470786_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g7075870768_ '2)))
                                     (_e7076570789_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g7075870768_ '3))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e7076570789_ '0))
                                    (let ((_e7076670792_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g7075870768_ '4))))
                                      (if ((lambda (_g7079470796_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g7079470796_ _id70753_)))
                                           _e7076670792_)
                                          (let ()
                                            (declare (not safe))
                                            (_K7076270780_))
                                          (let ()
                                            (declare (not safe))
                                            (_else7076070776_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else7076070776_))))
                              (let ()
                                (declare (not safe))
                                (_else7076070776_))))))
                     (__tmp74284
                      (##structure-ref
                       _ctx70752_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp74285 __tmp74284))))
          (if _$e70799_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e70799_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx70744_ _id70745_)
        (let ((_$e70747_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx70744_ _id70745_))))
          (if _$e70747_
              ((lambda (_bind70750_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind70750_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id70745_)))
                 (##structure-ref _bind70750_ '1 gx#binding::t '#f))
               _$e70747_)
              (let ((__tmp74286
                     (##structure-ref
                      _ctx70744_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp74286
                 _id70745_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx70631_)
        (letrec* ((_ht70633_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template70634_
                   (lambda (_in70696_ _phi70697_)
                     (let ((_iphi70699_
                            (fx+ _phi70697_
                                 (##direct-structure-ref
                                  _in70696_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports70700_
                            (##structure-ref
                             (##direct-structure-ref
                              _in70696_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp70702_ ((_rest70704_ _imports70700_)
                                       (_r70705_ '()))
                         (let* ((_rest7070670714_ _rest70704_)
                                (_else7070870722_ (lambda () _r70705_))
                                (_K7071070732_
                                 (lambda (_rest70725_ _in70726_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in70726_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi70699_))
                                           (let ((__tmp74293
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in70726_
                                                          _r70705_))))
                                             (declare (not safe))
                                             (_lp70702_
                                              _rest70725_
                                              __tmp74293))
                                           (let ()
                                             (declare (not safe))
                                             (_lp70702_ _rest70725_ _r70705_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in70726_
                                              'gx#module-import::t))
                                           (let ((_iphi70728_
                                                  (fx+ _phi70697_
                                                       (##direct-structure-ref
                                                        _in70726_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi70728_))
                                                 (let ((__tmp74291
                                                        (let ((__tmp74292
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in70726_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp74292 _r70705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp70702_
                                                    _rest70725_
                                                    __tmp74291))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp70702_
                                                    _rest70725_
                                                    _r70705_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in70726_
                                                  'gx#import-set::t))
                                               (let ((_xphi70730_
                                                      (fx+ _iphi70699_
                                                           (##direct-structure-ref
                                                            _in70726_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi70730_))
                                                     (let ((__tmp74289
                                                            (let ((__tmp74290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in70726_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp74290 _r70705_))))
               (declare (not safe))
               (_lp70702_ _rest70725_ __tmp74289))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi70730_)
                                                         (let ((__tmp74287
                                                                (let ((__tmp74288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template70634_
                                  _in70726_
                                  _iphi70699_))))
                          (declare (not safe))
                          (foldl1 cons _r70705_ __tmp74288))))
                   (declare (not safe))
                   (_lp70702_ _rest70725_ __tmp74287))
                 (let ()
                   (declare (not safe))
                   (_lp70702_ _rest70725_ _r70705_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp70702_
                                                  _rest70725_
                                                  _r70705_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest7070670714_))
                               (let ((_hd7071170735_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest7070670714_)))
                                     (_tl7071270737_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest7070670714_))))
                                 (let* ((_in70740_ _hd7071170735_)
                                        (_rest70742_ _tl7071270737_))
                                   (declare (not safe))
                                   (_K7071070732_ _rest70742_ _in70740_)))
                               (let ()
                                 (declare (not safe))
                                 (_else7070870722_))))))))
                  (_find-deps70635_
                   (lambda (_rest70642_ _deps70643_)
                     (let* ((_rest7064470652_ _rest70642_)
                            (_else7064670660_ (lambda () _deps70643_))
                            (_K7064870684_
                             (lambda (_rest70663_ _hd70664_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd70664_
                                      'gx#module-context::t))
                                   (let ((_id70666_
                                          (##structure-ref
                                           _hd70664_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports70667_
                                          (##structure-ref
                                           _hd70664_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref _ht70633_ _id70666_ '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps70635_
                                            _rest70663_
                                            _deps70643_))
                                         (let ((_$e70669_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd70664_))))
                                           (if _$e70669_
                                               ((lambda (_pre70672_)
                                                  (let ((_xdeps70674_
                                                         (let ((__tmp74306
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre70672_ _imports70667_))))
                   (declare (not safe))
                   (_find-deps70635_ __tmp74306 _deps70643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht70633_
                                                       _id70666_
                                                       _hd70664_))
                                                    (let ((__tmp74307
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd70664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps70674_))))
              (declare (not safe))
              (_find-deps70635_ _rest70663_ __tmp74307))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e70669_)
                                               (let ((_xdeps70676_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps70635_
                                                         _imports70667_
                                                         _deps70643_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht70633_
                                                    _id70666_
                                                    _hd70664_))
                                                 (let ((__tmp74305
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd70664_
                                                                _xdeps70676_))))
                                                   (declare (not safe))
                                                   (_find-deps70635_
                                                    _rest70663_
                                                    __tmp74305)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd70664_
                                          'gx#prelude-context::t))
                                       (let ((_id70678_
                                              (##structure-ref
                                               _hd70664_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht70633_
                                                _id70678_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps70635_
                                                _rest70663_
                                                _deps70643_))
                                             (let ((_xdeps70680_
                                                    (let ((__tmp74303
                                                           (##structure-ref
                                                            _hd70664_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps70635_
                                                       __tmp74303
                                                       _deps70643_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht70633_
                                                      _id70678_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps70635_
                                                      _rest70663_
                                                      _xdeps70680_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht70633_
                                                        _id70678_
                                                        _hd70664_))
                                                     (let ((__tmp74304
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd70664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps70680_))))
               (declare (not safe))
               (_find-deps70635_ _rest70663_ __tmp74304)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd70664_
                                              'gx#module-import::t))
                                           (if (let ((__tmp74302
                                                      (##direct-structure-ref
                                                       _hd70664_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp74302))
                                               (let ((__tmp74300
                                                      (let ((__tmp74301
                                                             (##direct-structure-ref
                                                              _hd70664_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp74301
                                                              _rest70663_))))
                                                 (declare (not safe))
                                                 (_find-deps70635_
                                                  __tmp74300
                                                  _deps70643_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps70635_
                                                  _rest70663_
                                                  _deps70643_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd70664_
                                                  'gx#module-export::t))
                                               (let ((__tmp74298
                                                      (let ((__tmp74299
                                                             (##direct-structure-ref
                                                              _hd70664_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp74299
                                                              _rest70663_))))
                                                 (declare (not safe))
                                                 (_find-deps70635_
                                                  __tmp74298
                                                  _deps70643_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd70664_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp74297
                                                              (##direct-structure-ref
                                                               _hd70664_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp74297))
                                                       (let ((__tmp74295
                                                              (let ((__tmp74296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd70664_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp74296 _rest70663_))))
                 (declare (not safe))
                 (_find-deps70635_ __tmp74295 _deps70643_))
               (if (fxpositive?
                    (##direct-structure-ref _hd70664_ '2 gx#import-set::t '#f))
                   (let* ((_xdeps70682_
                           (let ()
                             (declare (not safe))
                             (_import-set-template70634_ _hd70664_ '0)))
                          (__tmp74294
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest70663_ _xdeps70682_))))
                     (declare (not safe))
                     (_find-deps70635_ __tmp74294 _deps70643_))
                   (let ()
                     (declare (not safe))
                     (_find-deps70635_ _rest70663_ _deps70643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd70664_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest7064470652_))
                           (let ((_hd7064970687_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest7064470652_)))
                                 (_tl7065070689_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest7064470652_))))
                             (let* ((_hd70692_ _hd7064970687_)
                                    (_rest70694_ _tl7065070689_))
                               (declare (not safe))
                               (_K7064870684_ _rest70694_ _hd70692_)))
                           (let ()
                             (declare (not safe))
                             (_else7064670660_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp74308
                                  (let ((_$e70637_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx70631_))))
                                    (if _$e70637_
                                        ((lambda (_pre70640_)
                                           (let ((__tmp74309
                                                  (##structure-ref
                                                   _ctx70631_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre70640_ __tmp74309)))
                                         _$e70637_)
                                        (##structure-ref
                                         _ctx70631_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps70635_ __tmp74308 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx70562_)
        (let* ((_context-id70564_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx70562_
                       'gx#module-context::t))
                    (##structure-ref _ctx70562_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx70562_)))
               (_scm70566_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id70564_))
                 '".scm"))
               (_dirs70568_ (gx#current-expander-module-library-path))
               (_dirs70574_
                (let ((_user-libpath70570_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath70570_
                      (let ((_user-libpath70572_
                             (path-expand '"lib" _user-libpath70570_)))
                        (if (member _user-libpath70572_ _dirs70568_)
                            _dirs70568_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath70572_ _dirs70568_))))
                      _dirs70568_)))
               (_dirs70583_
                (let ((_$e70576_ (gxc#current-compile-output-dir)))
                  (if _$e70576_
                      ((lambda (_g7057870580_)
                         (let ()
                           (declare (not safe))
                           (cons _g7057870580_ _dirs70574_)))
                       _$e70576_)
                      _dirs70574_)))
               (_dirs70589_
                (map (lambda (_g7058470586_)
                       (path-expand '"static" _g7058470586_))
                     _dirs70583_)))
          (let _lp70592_ ((_rest70594_ _dirs70589_))
            (let* ((_rest7059570603_ _rest70594_)
                   (_else7059770611_
                    (lambda ()
                      (let ((__tmp74310
                             (##structure-ref
                              _ctx70562_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp74310
                         _scm70566_))))
                   (_K7059970619_
                    (lambda (_rest70614_ _dir70615_)
                      (let ((_path70617_ (path-expand _scm70566_ _dir70615_)))
                        (if (file-exists? _path70617_)
                            _path70617_
                            (let ()
                              (declare (not safe))
                              (_lp70592_ _rest70614_)))))))
              (if (let () (declare (not safe)) (##pair? _rest7059570603_))
                  (let ((_hd7060070622_
                         (let ()
                           (declare (not safe))
                           (##car _rest7059570603_)))
                        (_tl7060170624_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7059570603_))))
                    (let* ((_dir70627_ _hd7060070622_)
                           (_rest70629_ _tl7060170624_))
                      (declare (not safe))
                      (_K7059970619_ _rest70629_ _dir70627_)))
                  (let () (declare (not safe)) (_else7059770611_))))))))
    (define gxc#file-empty?
      (lambda (_path70560_)
        (let ((__tmp74311 (file-info-size (file-info _path70560_ '#t))))
          (declare (not safe))
          (zero? __tmp74311))))
    (define gxc#compile-top-module
      (lambda (_ctx70549_)
        (let ((__tmp74315
               (lambda ()
                 (let ((__tmp74316
                        (##structure-ref
                         _ctx70549_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp74316))
                 (if (gxc#current-compile-optimize)
                     (with-lock
                      gxc#+driver-mutex+
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gxc#optimize! _ctx70549_))))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx70549_))
                 (if (let ((__tmp74319
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx70549_))))
                       (declare (not safe))
                       (null? __tmp74319))
                     (let* ((_thr170554_
                             (let ((__tmp74317
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx70549_)))))
                               (declare (not safe))
                               (spawn __tmp74317)))
                            (_thr270557_
                             (let ((__tmp74318
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx70549_)))))
                               (declare (not safe))
                               (spawn __tmp74318))))
                       (let () (declare (not safe)) (gxc#join! _thr170554_))
                       (let () (declare (not safe)) (gxc#join! _thr270557_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx70549_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx70549_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx70549_))
                     '#!void)))
              (__tmp74314
               (let ((__obj74162 (make-object gxc#symbol-table::t '2)))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj74162))
                 __obj74162))
              (__tmp74313
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp74312 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp74315
           gx#current-expander-context
           _ctx70549_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp74314
           gxc#current-compile-runtime-sections
           __tmp74313
           gxc#current-compile-runtime-names
           __tmp74312))))
    (define gxc#collect-bindings
      (lambda (_ctx70547_)
        (let ((__tmp74320
               (##structure-ref _ctx70547_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp74320))))
    (define gxc#compile-runtime-code
      (lambda (_ctx70493_)
        (letrec ((_compile170495_
                  (lambda (_ctx70536_)
                    (let* ((_code70538_
                            (##structure-ref
                             _ctx70536_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt70542_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code70538_))
                                (let ((_idstr70540_
                                       (let ((__tmp74321
                                              (##structure-ref
                                               _ctx70536_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp74321))))
                                  (string-append _idstr70540_ '"__0"))
                                '#f)))
                      (if _rt70542_
                          (begin
                            (let ((__tmp74322
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp74322 _ctx70536_ _rt70542_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code70497_
                               _ctx70536_
                               _code70538_)))
                          (let ((_path70545_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx70536_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file _path70545_ void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code70498_
                         _ctx70536_
                         _code70538_
                         _rt70542_)))))
                 (_context-timestamp70496_
                  (lambda (_ctx70534_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx70534_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code70497_
                  (lambda (_ctx70516_ _code70517_)
                    (let* ((_lifts70519_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code70522_
                            (let ((__tmp74325
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code70517_))))
                                  (__tmp74324
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp74323
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp74325
                               gx#current-expander-context
                               _ctx70516_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts70519_
                               gxc#current-compile-marks
                               __tmp74324
                               gxc#current-compile-identifiers
                               __tmp74323)))
                           (_runtime-code70524_
                            (if (let ((__tmp74329 (unbox _lifts70519_)))
                                  (declare (not safe))
                                  (null? __tmp74329))
                                _runtime-code70522_
                                (let ((__tmp74326
                                       (let ((__tmp74328
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code70522_
                                                      '())))
                                             (__tmp74327
                                              (reverse (unbox _lifts70519_))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp74328 __tmp74327))))
                                  (declare (not safe))
                                  (cons 'begin __tmp74326))))
                           (_runtime-code70526_
                            (let ((__tmp74330
                                   (let ((__tmp74332
                                          (let ((__tmp74333
                                                 (let ((__tmp74336
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp70496_
                                                           _ctx70516_)))
                                                       (__tmp74334
                                                        (let ((__tmp74335
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp74335
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp74336
                                                         __tmp74334))))
                                            (declare (not safe))
                                            (cons 'define __tmp74333)))
                                         (__tmp74331
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code70524_ '()))))
                                     (declare (not safe))
                                     (cons __tmp74332 __tmp74331))))
                              (declare (not safe))
                              (cons 'begin __tmp74330)))
                           (_scm070528_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx70516_
                               '0
                               '".scm"))))
                      (let ((_scms70531_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx70516_))))
                        (let ((__tmp74337
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm070528_
                                    _runtime-code70526_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp74337
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms70531_)
                            (delete-file _scms70531_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm070528_
                           '" => "
                           _scms70531_))
                        (copy-file _scm070528_ _scms70531_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm070528_))))))
                 (_generate-loader-code70498_
                  (lambda (_ctx70505_ _code70506_ _rt70507_)
                    (let* ((_loader-code70510_
                            (let ((__tmp74338
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code70506_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp74338
                               gx#current-expander-context
                               _ctx70505_)))
                           (_loader-code70512_
                            (if _rt70507_
                                (let ((__tmp74339
                                       (let ((__tmp74340
                                              (let ((__tmp74341
                                                     (let ((__tmp74342
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt70507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp74342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74341 '()))))
                                         (declare (not safe))
                                         (cons _loader-code70510_
                                               __tmp74340))))
                                  (declare (not safe))
                                  (cons 'begin __tmp74339))
                                _loader-code70510_)))
                      (let ((__tmp74343
                             (lambda ()
                               (let ((__tmp74344
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx70505_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp74344
                                  _loader-code70512_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp74343
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules70500_
                 (let ((__tmp74345
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx70493_))))
                   (declare (not safe))
                   (cons _ctx70493_ __tmp74345))))
            (for-each
             (lambda (_ctx70502_)
               (let ((__tmp74346
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile170495_ _ctx70502_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp74346
                  gxc#current-compile-decls
                  '())))
             _all-modules70500_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx70390_)
        (letrec ((_compile-ssi70392_
                  (lambda (_code70463_)
                    (let* ((_path70465_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx70390_
                               '#f
                               '".ssi")))
                           (_prelude70476_
                            (let* ((_super70467_
                                    (##structure-ref
                                     _ctx70390_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e70469_
                                    (##structure-ref
                                     _super70467_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e70469_
                                  ((lambda (_g7047170473_)
                                     (make-symbol '":" _g7047170473_))
                                   _$e70469_)
                                  ':<root>)))
                           (_ns70478_
                            (##structure-ref
                             _ctx70390_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr70480_
                            (symbol->string
                             (##structure-ref
                              _ctx70390_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg70487_
                            (let ((_$e70482_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr70480_ '#\/))))
                              (if _$e70482_
                                  ((lambda (_x70485_)
                                     (string->symbol
                                      (substring _idstr70480_ '0 _x70485_)))
                                   _$e70482_)
                                  '#f)))
                           (_rt70489_
                            (let ((__tmp74347
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp74347 _ctx70390_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path70465_))
                      (let ((__tmp74348
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude70476_))
                               (if _pkg70487_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg70487_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns70478_))
                               (newline)
                               (pretty-print _code70463_)
                               (if _rt70489_
                                   (pretty-print
                                    (let ((__tmp74349
                                           (let ((__tmp74353
                                                  (let ((__tmp74354
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp74354)))
                                                 (__tmp74350
                                                  (let ((__tmp74351
                                                         (let ((__tmp74352
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt70489_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp74352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74351 '()))))
                                             (declare (not safe))
                                             (cons __tmp74353 __tmp74350))))
                                      (declare (not safe))
                                      (cons '%#call __tmp74349)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path70465_
                         __tmp74348)))))
                 (_compile-phi70393_
                  (lambda (_part70403_)
                    (let* ((_part7040470417_ _part70403_)
                           (_E7040670421_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part7040470417_))))
                           (_K7040770432_
                            (lambda (_code70424_
                                     _n70425_
                                     _phi70426_
                                     _phi-ctx70427_)
                              (let* ((_code70430_
                                      (let ((__tmp74355
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code70424_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp74355
                                         gx#current-expander-context
                                         _phi-ctx70427_
                                         gx#current-expander-phi
                                         _phi70426_)))
                                     (__tmp74356
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx70390_
                                         _n70425_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp74356
                                 _code70430_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part7040470417_))
                          (let ((_hd7040870435_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part7040470417_)))
                                (_tl7040970437_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part7040470417_))))
                            (let ((_phi-ctx70440_ _hd7040870435_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl7040970437_))
                                  (let ((_hd7041070442_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl7040970437_)))
                                        (_tl7041170444_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl7040970437_))))
                                    (let ((_phi70447_ _hd7041070442_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7041170444_))
                                          (let ((_hd7041270449_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7041170444_)))
                                                (_tl7041370451_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7041170444_))))
                                            (let ((_n70454_ _hd7041270449_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl7041370451_))
                                                  (let ((_hd7041470456_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl7041370451_)))
                                                        (_tl7041570458_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl7041370451_))))
                                                    (let ((_code70461_
                                                           _hd7041470456_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl7041570458_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K7040770432_
                                                             _code70461_
                                                             _n70454_
                                                             _phi70447_
                                                             _phi-ctx70440_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E7040670421_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E7040670421_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7040670421_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E7040670421_)))))
                          (let () (declare (not safe)) (_E7040670421_)))))))
          (let ((_g74357_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx70390_))))
            (begin
              (let ((_g74358_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g74357_)
                           (##vector-length _g74357_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g74358_ 2)))
                    (error "Context expects 2 values" _g74358_)))
              (let ((_ssi-code70395_
                     (let () (declare (not safe)) (##vector-ref _g74357_ 0)))
                    (_phi-code70396_
                     (let () (declare (not safe)) (##vector-ref _g74357_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi70392_ _ssi-code70395_))
                  (let ((_threads70401_
                         (map (lambda (_code70398_)
                                (let ((__tmp74359
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi70393_ _code70398_)))))
                                  (declare (not safe))
                                  (spawn __tmp74359)))
                              _phi-code70396_)))
                    (for-each gxc#join! _threads70401_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx70373_)
        (let* ((_path70375_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx70373_ '#f '".ssxi.ss")))
               (_code70377_
                (let ((__tmp74360
                       (##structure-ref
                        _ctx70373_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp74360)))
               (_idstr70379_
                (symbol->string
                 (##structure-ref _ctx70373_ '1 gx#expander-context::t '#f)))
               (_pkg70386_
                (let ((_$e70381_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr70379_ '#\/))))
                  (if _$e70381_
                      ((lambda (_x70384_)
                         (string->symbol (substring _idstr70379_ '0 _x70384_)))
                       _$e70381_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path70375_))
          (let ((__tmp74361
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg70386_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg70386_))
                       '#!void)
                   (newline)
                   (pretty-print _code70377_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path70375_ __tmp74361)))))
    (define gxc#generate-meta-code
      (lambda (_ctx70366_)
        (let* ((_state70368_
                (let ((__obj74163 (make-object gxc#meta-state::t '4)))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj74163 _ctx70366_))
                  __obj74163))
               (_ssi-code70370_
                (let ((__tmp74362
                       (##structure-ref
                        _ctx70366_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp74362 _state70368_))))
          (values _ssi-code70370_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state70368_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx70359_)
        (let ((_lifts70361_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp74365
                 (lambda ()
                   (let ((_code70364_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx70359_))))
                     (if (let ((__tmp74369 (unbox _lifts70361_)))
                           (declare (not safe))
                           (null? __tmp74369))
                         _code70364_
                         (let ((__tmp74366
                                (let ((__tmp74368
                                       (let ()
                                         (declare (not safe))
                                         (cons _code70364_ '())))
                                      (__tmp74367
                                       (reverse (unbox _lifts70361_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp74368 __tmp74367))))
                           (declare (not safe))
                           (cons 'begin __tmp74366))))))
                (__tmp74364
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp74363
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp74365
             gxc#current-compile-lift
             _lifts70361_
             gxc#current-compile-marks
             __tmp74364
             gxc#current-compile-identifiers
             __tmp74363)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx70355_)
        (let ((_modules70357_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp74370
                 (##structure-ref _ctx70355_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp74370 _modules70357_))
          (reverse (unbox _modules70357_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path70338_ _code70339_ _phi?70340_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path70338_))
        (let ((__tmp74371
               (lambda ()
                 (pretty-print
                  (let ((__tmp74372
                         (let ((__tmp74379
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp74373
                                (let ((__tmp74378
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp74374
                                       (let ((__tmp74377
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp74375
                                              (let ((__tmp74376
                                                     (if _phi?70340_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons '() __tmp74376))))
                                         (declare (not safe))
                                         (cons __tmp74377 __tmp74375))))
                                  (declare (not safe))
                                  (cons __tmp74378 __tmp74374))))
                           (declare (not safe))
                           (cons __tmp74379 __tmp74373))))
                    (declare (not safe))
                    (cons 'declare __tmp74372)))
                 (pretty-print _code70339_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path70338_ __tmp74371))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path70338_ _phi?70340_))
            '#!void)
        (if (gxc#current-compile-keep-scm) '#!void (delete-file _path70338_))))
    (define gxc#compile-scm-file__0
      (lambda (_path70346_ _code70347_)
        (let ((_phi?70349_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path70346_ _code70347_ _phi?70349_))))
    (define gxc#compile-scm-file
      (lambda _g74381_
        (let ((_g74380_ (let () (declare (not safe)) (##length _g74381_))))
          (cond ((let () (declare (not safe)) (##fx= _g74380_ 2))
                 (apply (lambda (_path70346_ _code70347_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0 _path70346_ _code70347_)))
                        _g74381_))
                ((let () (declare (not safe)) (##fx= _g74380_ 3))
                 (apply (lambda (_path70351_ _code70352_ _phi?70353_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path70351_
                             _code70352_
                             _phi?70353_)))
                        _g74381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g74381_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?70239_)
        (let _lp70241_ ((_rest70243_ (gxc#current-compile-gsc-options))
                        (_opts70244_ '()))
          (let* ((_rest7024570265_ _rest70243_)
                 (_else7024970273_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?70239_))
                             (gxc#current-compile-debug))
                        (let ((__tmp74382
                               (let ((__tmp74383 (reverse _opts70244_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp74383))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp74382))
                        (reverse _opts70244_)))))
            (let ((_K7025970316_
                   (lambda (_rest70314_)
                     (let ()
                       (declare (not safe))
                       (_lp70241_ _rest70314_ _opts70244_))))
                  (_K7025470298_
                   (lambda (_rest70296_)
                     (let ()
                       (declare (not safe))
                       (_lp70241_ _rest70296_ _opts70244_))))
                  (_K7025170280_
                   (lambda (_rest70277_ _opt70278_)
                     (let ((__tmp74384
                            (let ()
                              (declare (not safe))
                              (cons _opt70278_ _opts70244_))))
                       (declare (not safe))
                       (_lp70241_ _rest70277_ __tmp74384)))))
              (if (let () (declare (not safe)) (##pair? _rest7024570265_))
                  (let ((_tl7026170321_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7024570265_)))
                        (_hd7026070319_
                         (let ()
                           (declare (not safe))
                           (##car _rest7024570265_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd7026070319_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7026170321_))
                            (let* ((_tl7026370324_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl7026170321_)))
                                   (_rest70327_ _tl7026370324_))
                              (declare (not safe))
                              (_K7025970316_ _rest70327_))
                            (let ((_opt70288_ _hd7026070319_)
                                  (_rest70290_ _tl7026170321_))
                              (let ()
                                (declare (not safe))
                                (_K7025170280_ _rest70290_ _opt70288_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd7026070319_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl7026170321_))
                                (let* ((_tl7025870306_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl7026170321_)))
                                       (_rest70309_ _tl7025870306_))
                                  (declare (not safe))
                                  (_K7025470298_ _rest70309_))
                                (let ((_opt70288_ _hd7026070319_)
                                      (_rest70290_ _tl7026170321_))
                                  (let ()
                                    (declare (not safe))
                                    (_K7025170280_ _rest70290_ _opt70288_))))
                            (let ((_opt70288_ _hd7026070319_)
                                  (_rest70290_ _tl7026170321_))
                              (let ()
                                (declare (not safe))
                                (_K7025170280_ _rest70290_ _opt70288_))))))
                  (let () (declare (not safe)) (_else7024970273_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?70333_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?70333_))))
    (define gxc#gsc-link-options
      (lambda _g74386_
        (let ((_g74385_ (let () (declare (not safe)) (##length _g74386_))))
          (cond ((let () (declare (not safe)) (##fx= _g74385_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g74386_))
                ((let () (declare (not safe)) (##fx= _g74385_ 1))
                 (apply (lambda (_phi?70335_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?70335_)))
                        _g74386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g74386_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?70140_)
        (let _lp70142_ ((_rest70144_ (gxc#current-compile-gsc-options))
                        (_opts70145_ '()))
          (let* ((_rest7014670166_ _rest70144_)
                 (_else7015070174_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?70140_))
                             (gxc#current-compile-debug))
                        (let ((__tmp74387
                               (let ((__tmp74388 (reverse _opts70145_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp74388))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp74387))
                        (reverse _opts70145_)))))
            (let ((_K7016070213_
                   (lambda (_rest70210_ _opt70211_)
                     (let ((__tmp74389
                            (let ((__tmp74390
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts70145_))))
                              (declare (not safe))
                              (cons _opt70211_ __tmp74390))))
                       (declare (not safe))
                       (_lp70142_ _rest70210_ __tmp74389))))
                  (_K7015570194_
                   (lambda (_rest70192_)
                     (let ()
                       (declare (not safe))
                       (_lp70142_ _rest70192_ _opts70145_))))
                  (_K7015270180_
                   (lambda (_rest70178_)
                     (let ()
                       (declare (not safe))
                       (_lp70142_ _rest70178_ _opts70145_)))))
              (if (let () (declare (not safe)) (##pair? _rest7014670166_))
                  (let ((_tl7016270218_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7014670166_)))
                        (_hd7016170216_
                         (let ()
                           (declare (not safe))
                           (##car _rest7014670166_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd7016170216_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7016270218_))
                            (let ((_tl7016470223_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7016270218_)))
                                  (_hd7016370221_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7016270218_))))
                              (let ((_opt70226_ _hd7016370221_)
                                    (_rest70228_ _tl7016470223_))
                                (let ()
                                  (declare (not safe))
                                  (_K7016070213_ _rest70228_ _opt70226_))))
                            (let ((_rest70186_ _tl7016270218_))
                              (declare (not safe))
                              (_K7015270180_ _rest70186_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd7016170216_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl7016270218_))
                                (let* ((_tl7015970202_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl7016270218_)))
                                       (_rest70205_ _tl7015970202_))
                                  (declare (not safe))
                                  (_K7015570194_ _rest70205_))
                                (let ((_rest70186_ _tl7016270218_))
                                  (declare (not safe))
                                  (_K7015270180_ _rest70186_)))
                            (let ((_rest70186_ _tl7016270218_))
                              (declare (not safe))
                              (_K7015270180_ _rest70186_)))))
                  (let () (declare (not safe)) (_else7015070174_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?70234_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?70234_))))
    (define gxc#gsc-cc-options
      (lambda _g74392_
        (let ((_g74391_ (let () (declare (not safe)) (##length _g74392_))))
          (cond ((let () (declare (not safe)) (##fx= _g74391_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g74392_))
                ((let () (declare (not safe)) (##fx= _g74391_ 1))
                 (apply (lambda (_phi?70236_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?70236_)))
                        _g74392_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g74392_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir70135_)
        (let* ((_user-staticdir70137_
                (path-expand (path-expand '"lib/static" (gerbil-path))))
               (__tmp74393
                (let ((__tmp74394
                       (string-append
                        '"-I "
                        _staticdir70135_
                        '" -I "
                        _user-staticdir70137_)))
                  (declare (not safe))
                  (cons __tmp74394 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp74393))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp70047_ ((_rest70049_ (gxc#current-compile-gsc-options))
                        (_opts70050_ '()))
          (let* ((_rest7005170071_ _rest70049_)
                 (_else7005570079_ (lambda () _opts70050_)))
            (let ((_K7006570122_
                   (lambda (_rest70120_)
                     (let ()
                       (declare (not safe))
                       (_lp70047_ _rest70120_ _opts70050_))))
                  (_K7006070100_
                   (lambda (_rest70097_ _opt70098_)
                     (let ((__tmp74395
                            (append _opts70050_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt70098_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp70047_ _rest70097_ __tmp74395))))
                  (_K7005770085_
                   (lambda (_rest70083_)
                     (let ()
                       (declare (not safe))
                       (_lp70047_ _rest70083_ _opts70050_)))))
              (if (let () (declare (not safe)) (##pair? _rest7005170071_))
                  (let ((_tl7006770127_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7005170071_)))
                        (_hd7006670125_
                         (let ()
                           (declare (not safe))
                           (##car _rest7005170071_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd7006670125_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7006770127_))
                            (let* ((_tl7006970130_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl7006770127_)))
                                   (_rest70133_ _tl7006970130_))
                              (declare (not safe))
                              (_K7006570122_ _rest70133_))
                            (let ((_rest70091_ _tl7006770127_))
                              (declare (not safe))
                              (_K7005770085_ _rest70091_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd7006670125_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl7006770127_))
                                (let ((_tl7006470110_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl7006770127_)))
                                      (_hd7006370108_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl7006770127_))))
                                  (let ((_opt70113_ _hd7006370108_)
                                        (_rest70115_ _tl7006470110_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7006070100_ _rest70115_ _opt70113_))))
                                (let ((_rest70091_ _tl7006770127_))
                                  (declare (not safe))
                                  (_K7005770085_ _rest70091_)))
                            (let ((_rest70091_ _tl7006770127_))
                              (declare (not safe))
                              (_K7005770085_ _rest70091_)))))
                  (let () (declare (not safe)) (_else7005570079_))))))))
    (define gxc#not-string-empty?
      (lambda (_str70044_)
        (let ((__tmp74396
               (let () (declare (not safe)) (string-empty? _str70044_))))
          (declare (not safe))
          (not __tmp74396))))
    (define gxc#gsc-compile-file
      (lambda (_path70012_ _phi?70013_)
        (letrec ((_gsc-link-path70015_
                  (lambda (_base-path70036_)
                    (let _lp70038_ ((_n70040_ '1))
                      (let ((_path70042_
                             (string-append
                              _base-path70036_
                              '".o"
                              (number->string _n70040_))))
                        (if (file-exists? _path70042_)
                            (let ((__tmp74397
                                   (let ()
                                     (declare (not safe))
                                     (+ _n70040_ '1))))
                              (declare (not safe))
                              (_lp70038_ __tmp74397))
                            _path70042_))))))
          (let* ((_base-path70017_ (path-strip-extension _path70012_))
                 (_path-c70019_ (string-append _base-path70017_ '".c"))
                 (_path-o70021_ (string-append _base-path70017_ '".o"))
                 (_link-path70023_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path70015_ _base-path70017_)))
                 (_link-path-c70025_ (string-append _link-path70023_ '".c"))
                 (_link-path-o70027_ (string-append _link-path70023_ '".o"))
                 (_gsc-link-opts70029_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?70013_)))
                 (_gsc-cc-opts70031_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?70013_)))
                 (_gcc-ld-opts70033_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp74404 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp74398
                   (let ((__tmp74399
                          (let ((__tmp74400
                                 (let ((__tmp74401
                                        (let ((__tmp74402
                                               (let ((__tmp74403
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path70012_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp74403
                                                         _gsc-link-opts70029_))))
                                          (declare (not safe))
                                          (cons _link-path-c70025_
                                                __tmp74402))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp74401))))
                            (declare (not safe))
                            (cons '"-flat" __tmp74400))))
                     (declare (not safe))
                     (cons '"-link" __tmp74399))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp74404 __tmp74398))
            (let ((__tmp74411 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp74405
                   (let ((__tmp74406
                          (let ((__tmp74407
                                 (let ((__tmp74408
                                        (let ((__tmp74409
                                               (let ((__tmp74410
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c70025_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c70019_
                                                       __tmp74410))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp74409
                                                  _gsc-cc-opts70031_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp74408))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp74407))))
                     (declare (not safe))
                     (cons '"-obj" __tmp74406))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp74411 __tmp74405))
            (let ((__tmp74417 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp74412
                   (let ((__tmp74413
                          (let ((__tmp74414
                                 (let ((__tmp74415
                                        (let ((__tmp74416
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o70027_
                                                       _gcc-ld-opts70033_))))
                                          (declare (not safe))
                                          (cons _path-o70021_ __tmp74416))))
                                   (declare (not safe))
                                   (cons _link-path70023_ __tmp74415))))
                            (declare (not safe))
                            (cons '"-o" __tmp74414))))
                     (declare (not safe))
                     (cons '"-shared" __tmp74413))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp74417
               __tmp74412))
            (for-each
             delete-file
             (let ((__tmp74418
                    (let ((__tmp74419
                           (let ((__tmp74420
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o70027_ '()))))
                             (declare (not safe))
                             (cons _link-path-c70025_ __tmp74420))))
                      (declare (not safe))
                      (cons _path-o70021_ __tmp74419))))
               (declare (not safe))
               (cons _path-c70019_ __tmp74418)))))))
    (define gxc#compile-output-file
      (lambda (_ctx69983_ _n69984_ _ext69985_)
        (letrec ((_module-relative-path69987_
                  (lambda (_ctx70010_)
                    (path-strip-directory
                     (let ((__tmp74421
                            (##structure-ref
                             _ctx70010_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp74421)))))
                 (_module-source-directory69988_
                  (lambda (_ctx70006_)
                    (path-directory
                     (let ((_mpath70008_
                            (##structure-ref
                             _ctx70006_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let () (declare (not safe)) (string? _mpath70008_))
                           _mpath70008_
                           (let ()
                             (declare (not safe))
                             (last _mpath70008_)))))))
                 (_section-string69989_
                  (lambda (_n70004_)
                    (if (let () (declare (not safe)) (number? _n70004_))
                        (number->string _n70004_)
                        (if (let () (declare (not safe)) (symbol? _n70004_))
                            (symbol->string _n70004_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n70004_))
                                _n70004_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n70004_)))))))
                 (_file-name69990_
                  (lambda (_path70002_)
                    (if _n69984_
                        (string-append
                         _path70002_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string69989_ _n69984_))
                         _ext69985_)
                        (string-append _path70002_ _ext69985_))))
                 (_file-path69991_
                  (lambda ()
                    (let ((_$e69997_ (gxc#current-compile-output-dir)))
                      (if _$e69997_
                          ((lambda (_outdir70000_)
                             (path-expand
                              (let ((__tmp74423
                                     (let ((__tmp74424
                                            (##structure-ref
                                             _ctx69983_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp74424))))
                                (declare (not safe))
                                (_file-name69990_ __tmp74423))
                              _outdir70000_))
                           _$e69997_)
                          (path-expand
                           (let ((__tmp74422
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path69987_ _ctx69983_))))
                             (declare (not safe))
                             (_file-name69990_ __tmp74422))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory69988_ _ctx69983_))))))))
          (let ((_path69993_ (let () (declare (not safe)) (_file-path69991_))))
            (with-lock
             gxc#+driver-mutex+
             (lambda ()
               (let ((__tmp74425 (path-directory _path69993_)))
                 (declare (not safe))
                 (create-directory* __tmp74425))))
            _path69993_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx69965_)
        (letrec ((_file-name69967_
                  (lambda (_id69981_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id69981_))
                     '".scm")))
                 (_file-path69968_
                  (lambda ()
                    (let* ((_file69974_
                            (let ((__tmp74426
                                   (##structure-ref
                                    _ctx69965_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name69967_ __tmp74426)))
                           (_$e69976_ (gxc#current-compile-output-dir)))
                      (if _$e69976_
                          ((lambda (_outdir69979_)
                             (path-expand
                              _file69974_
                              (path-expand '"static" _outdir69979_)))
                           _$e69976_)
                          (path-expand _file69974_ '"static"))))))
          (let ((_path69970_ (let () (declare (not safe)) (_file-path69968_))))
            (with-lock
             gxc#+driver-mutex+
             (lambda ()
               (let ((__tmp74427 (path-directory _path69970_)))
                 (declare (not safe))
                 (create-directory* __tmp74427))))
            _path69970_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx69952_ _opts69953_)
        (let ((_$e69955_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts69953_))))
          (if _$e69955_
              (values _$e69955_)
              (let* ((_mod-str69958_
                      (symbol->string
                       (##structure-ref
                        _ctx69952_
                        '1
                        gx#expander-context::t
                        '#f)))
                     (_$e69960_
                      (let ()
                        (declare (not safe))
                        (string-rindex _mod-str69958_ '#\/))))
                (if _$e69960_
                    ((lambda (_ix69963_)
                       (substring
                        _mod-str69958_
                        (let () (declare (not safe)) (fx+ _ix69963_ '1))
                        (string-length _mod-str69958_)))
                     _$e69960_)
                    _mod-str69958_))))))
    (define gxc#static-module-name
      (lambda (_idstr69945_)
        (if (let () (declare (not safe)) (string? _idstr69945_))
            (let* ((_str69947_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr69945_)))
                   (_strs69949_
                    (let ()
                      (declare (not safe))
                      (string-split _str69947_ '#\/))))
              (let () (declare (not safe)) (string-join _strs69949_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr69945_))
                (let ((__tmp74428 (symbol->string _idstr69945_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp74428))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr69945_))))))
    (define gxc#invoke__%
      (lambda (_g74429_
               _stdout-redirection6990969913_
               _stderr-redirection6991069915_
               _program69917_
               _args69918_)
        (let* ((_stdout-redirection69920_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection6990969913_ absent-value))
                    '#f
                    _stdout-redirection6990969913_))
               (_stderr-redirection69922_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection6991069915_ absent-value))
                    '#f
                    _stderr-redirection6991069915_)))
          (let ((__tmp74430
                 (let ()
                   (declare (not safe))
                   (cons _program69917_ _args69918_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp74430))
          (let ((_proc69924_
                 (open-process
                  (let ((__tmp74431
                         (let ((__tmp74432
                                (let ((__tmp74433
                                       (let ((__tmp74434
                                              (let ((__tmp74435
                                                     (let ((__tmp74436
                                                            (let ((__tmp74437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection69922_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp74437))))
               (declare (not safe))
               (cons _stdout-redirection69920_ __tmp74436))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp74435))))
                                         (declare (not safe))
                                         (cons _args69918_ __tmp74434))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp74433))))
                           (declare (not safe))
                           (cons _program69917_ __tmp74432))))
                    (declare (not safe))
                    (cons 'path: __tmp74431)))))
            (if (or _stdout-redirection69920_ _stderr-redirection69922_)
                (read-line _proc69924_ '#f)
                '#!void)
            (let ((_status69929_ (process-status _proc69924_)))
              (close-port _proc69924_)
              (if (let () (declare (not safe)) (zero? _status69929_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program69917_))))))))
    (define gxc#invoke__@
      (lambda (_keys6990869934_ . _args69936_)
        (apply gxc#invoke__%
               _keys6990869934_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys6990869934_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys6990869934_
                  'stderr-redirection:
                  absent-value))
               _args69936_)))
    (define gxc#invoke
      (lambda _args6991169942_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args6991169942_)))
    (define gxc#join!
      (lambda (_thread69902_)
        (let ((__tmp74439
               (lambda (_exn69904_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn69904_))
                     (let ((__tmp74440
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn69904_))))
                       (declare (not safe))
                       (raise __tmp74440))
                     (let () (declare (not safe)) (raise _exn69904_)))))
              (__tmp74438 (lambda () (thread-join! _thread69902_))))
          (declare (not safe))
          (with-catch __tmp74439 __tmp74438))))))
