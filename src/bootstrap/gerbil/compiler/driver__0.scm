(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1696399083)
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
      (lambda (_path71222_ _fun71223_)
        (with-output-to-file
         (let ((__tmp74229
                (let ()
                  (declare (not safe))
                  (cons _path71222_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp74229))
         _fun71223_)))
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
      (lambda (_dir71217_) (delete-file-or-directory _dir71217_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath71191_ _opts71192_)
        (if (let () (declare (not safe)) (string? _srcpath71191_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath71191_)))
        (let ((_outdir71194_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts71192_)))
              (_invoke-gsc?71195_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts71192_)))
              (_gsc-options71196_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts71192_)))
              (_keep-scm?71197_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts71192_)))
              (_verbosity71198_
               (let () (declare (not safe)) (pgetq 'verbose: _opts71192_)))
              (_optimize71199_
               (let () (declare (not safe)) (pgetq 'optimize: _opts71192_)))
              (_debug71200_
               (let () (declare (not safe)) (pgetq 'debug: _opts71192_)))
              (_gen-ssxi71201_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts71192_))))
          (if _outdir71194_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir71194_))))
              '#!void)
          (if _optimize71199_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let () (declare (not safe)) (gxc#optimizer-info-init!))))
              '#!void)
          (let ((__tmp74231
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath71191_))
                   (let ((__tmp74232
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath71191_))))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp74232))))
                (__tmp74230
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp74231
             gxc#current-compile-output-dir
             _outdir71194_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?71195_
             gxc#current-compile-gsc-options
             _gsc-options71196_
             gxc#current-compile-keep-scm
             _keep-scm?71197_
             gxc#current-compile-verbose
             _verbosity71198_
             gxc#current-compile-optimize
             _optimize71199_
             gxc#current-compile-debug
             _debug71200_
             gxc#current-compile-generate-ssxi
             _gen-ssxi71201_
             gxc#current-compile-timestamp
             __tmp74230
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath71210_)
        (let ((_opts71212_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath71210_ _opts71212_))))
    (define gxc#compile-module
      (lambda _g74234_
        (let ((_g74233_ (let () (declare (not safe)) (##length _g74234_))))
          (cond ((let () (declare (not safe)) (##fx= _g74233_ 1))
                 (apply (lambda (_srcpath71210_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath71210_)))
                        _g74234_))
                ((let () (declare (not safe)) (##fx= _g74233_ 2))
                 (apply (lambda (_srcpath71214_ _opts71215_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath71214_
                             _opts71215_)))
                        _g74234_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g74234_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath71168_ _opts71169_)
        (if (let () (declare (not safe)) (string? _srcpath71168_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath71168_)))
        (let ((_outdir71171_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts71169_)))
              (_invoke-gsc?71172_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts71169_)))
              (_gsc-options71173_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts71169_)))
              (_keep-scm?71174_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts71169_)))
              (_verbosity71175_
               (let () (declare (not safe)) (pgetq 'verbose: _opts71169_))))
          (if _outdir71171_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir71171_))))
              '#!void)
          (let ((__tmp74236
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath71168_))
                   (let ((__tmp74237
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath71168_))))))
                     (declare (not safe))
                     (gxc#compile-executable-module __tmp74237 _opts71169_))))
                (__tmp74235
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp74236
             gxc#current-compile-output-dir
             _outdir71171_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?71172_
             gxc#current-compile-gsc-options
             _gsc-options71173_
             gxc#current-compile-keep-scm
             _keep-scm?71174_
             gxc#current-compile-verbose
             _verbosity71175_
             gxc#current-compile-timestamp
             __tmp74235
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath71183_)
        (let ((_opts71185_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath71183_ _opts71185_))))
    (define gxc#compile-exe
      (lambda _g74239_
        (let ((_g74238_ (let () (declare (not safe)) (##length _g74239_))))
          (cond ((let () (declare (not safe)) (##fx= _g74238_ 1))
                 (apply (lambda (_srcpath71183_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath71183_)))
                        _g74239_))
                ((let () (declare (not safe)) (##fx= _g74238_ 2))
                 (apply (lambda (_srcpath71187_ _opts71188_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath71187_ _opts71188_)))
                        _g74239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g74239_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx71164_ _opts71165_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts71165_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx71164_
               _opts71165_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx71164_
               _opts71165_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx71037_ _opts71038_)
        (letrec ((_generate-stub71040_
                  (lambda (_builtin-modules71160_)
                    (let ((_mod-main71162_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx71037_ 'main))))
                      (write (let ((__tmp74240
                                    (let ((__tmp74241
                                           (let ((__tmp74242
                                                  (let ((__tmp74243
                                                         (let ((__tmp74245
                                                                (let ((__tmp74246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules71160_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp74246)))
                       (__tmp74244
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp74245 __tmp74244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp74243))))
                                             (declare (not safe))
                                             (cons __tmp74242 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp74241))))
                               (declare (not safe))
                               (cons 'define __tmp74240)))
                      (write (let ((__tmp74247
                                    (let ((__tmp74258
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp74248
                                           (let ((__tmp74256
                                                  (let ((__tmp74257
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'builtin-modules
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp74257)))
                                                 (__tmp74249
                                                  (let ((__tmp74250
                                                         (let ((__tmp74251
                                                                (let ((__tmp74252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp74253
                                      (let ((__tmp74254
                                             (let ((__tmp74255
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp74255 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp74254))))
                                 (declare (not safe))
                                 (cons __tmp74253 '()))))
                          (declare (not safe))
                          (cons _mod-main71162_ __tmp74252))))
                   (declare (not safe))
                   (cons 'apply __tmp74251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74250 '()))))
                                             (declare (not safe))
                                             (cons __tmp74256 __tmp74249))))
                                      (declare (not safe))
                                      (cons __tmp74258 __tmp74248))))
                               (declare (not safe))
                               (cons 'define __tmp74247)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-gsc-cc-opts71041_
                  (lambda (_gerbil-staticdir71149_)
                    (let* ((_opts71151_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts71038_)))
                           (_base71153_
                            (string-append '"-I " _gerbil-staticdir71149_))
                           (_user-static-dir71155_
                            (path-expand
                             (path-expand '"lib/static" (gerbil-path))))
                           (_base71157_
                            (string-append
                             _base71153_
                             '" -I "
                             _user-static-dir71155_)))
                      (let ((__tmp74259
                             (let ()
                               (declare (not safe))
                               (gxc#gsc-cc-options))))
                        (declare (not safe))
                        (foldr1 cons __tmp74259 _base71157_)))))
                 (_get-libgerbil-ld-opts71042_
                  (lambda (_libgerbil71147_)
                    (call-with-input-file
                     (string-append _libgerbil71147_ '".ldd")
                     read)))
                 (_replace-extension71043_
                  (lambda (_path71144_ _ext71145_)
                    (string-append
                     (path-strip-extension _path71144_)
                     _ext71145_)))
                 (_not-exclude-module?71044_
                  (lambda (_ctx71140_)
                    (let ((_id-str71142_
                           (symbol->string
                            (##structure-ref
                             _ctx71140_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp74261
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"gerbil/" _id-str71142_))))
                            (declare (not safe))
                            (not __tmp74261))
                          (let ((__tmp74260
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str71142_))))
                            (declare (not safe))
                            (not __tmp74260))
                          '#f))))
                 (_not-file-empty?71045_
                  (lambda (_path71138_)
                    (let ((__tmp74262
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path71138_))))
                      (declare (not safe))
                      (not __tmp74262))))
                 (_compile-stub71046_
                  (lambda (_output-scm71053_ _output-bin71054_)
                    (let* ((_gerbil-home71056_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_gerbil-libdir71058_
                            (path-expand '"lib" _gerbil-home71056_))
                           (_gerbil-staticdir71060_
                            (path-expand '"static" _gerbil-libdir71058_))
                           (_gxlink71062_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir71058_))
                           (_tmp71064_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path71068_
                            (lambda (_f71066_)
                              (path-expand
                               (path-strip-directory _f71066_)
                               _tmp71064_)))
                           (_deps71070_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx71037_)))
                           (_deps71072_
                            (filter _not-exclude-module?71044_ _deps71070_))
                           (_src-deps-scm71074_
                            (map gxc#find-static-module-file _deps71072_))
                           (_src-deps-scm71076_
                            (filter _not-file-empty?71045_
                                    _src-deps-scm71074_))
                           (_src-deps-scm71078_
                            (map path-expand _src-deps-scm71076_))
                           (_deps-scm71080_
                            (map _tmp-path71068_ _src-deps-scm71078_))
                           (_deps-c71086_
                            (map (lambda (_g7108171083_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension71043_
                                      _g7108171083_
                                      '".c")))
                                 _deps-scm71080_))
                           (_deps-o71092_
                            (map (lambda (_g7108771089_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension71043_
                                      _g7108771089_
                                      '".o")))
                                 _deps-scm71080_))
                           (_src-bin-scm71094_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx71037_)))
                           (_src-bin-scm71096_
                            (path-expand _src-bin-scm71094_))
                           (_bin-scm71098_
                            (let ()
                              (declare (not safe))
                              (_tmp-path71068_ _src-bin-scm71096_)))
                           (_bin-c71100_
                            (let ()
                              (declare (not safe))
                              (_replace-extension71043_ _bin-scm71098_ '".c")))
                           (_bin-o71102_
                            (let ()
                              (declare (not safe))
                              (_replace-extension71043_ _bin-scm71098_ '".o")))
                           (_output-bin71104_ (path-expand _output-bin71054_))
                           (_output-scm71106_ (path-expand _output-scm71053_))
                           (_output-c71108_
                            (let ()
                              (declare (not safe))
                              (_replace-extension71043_
                               _output-scm71106_
                               '".c")))
                           (_output-o71110_
                            (let ()
                              (declare (not safe))
                              (_replace-extension71043_
                               _output-scm71106_
                               '".o")))
                           (_output_71112_
                            (string-append
                             (path-strip-extension _output-scm71106_)
                             '"_"))
                           (_output_-c71114_
                            (string-append _output_71112_ '".c"))
                           (_output_-o71116_
                            (string-append _output_71112_ '".o"))
                           (_gsc-link-opts71118_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options '#f)))
                           (_gsc-cc-opts71120_
                            (let ()
                              (declare (not safe))
                              (_get-gsc-cc-opts71041_
                               _gerbil-staticdir71060_)))
                           (_output-ld-opts71122_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a71124_
                            (path-expand '"libgerbil.a" _gerbil-libdir71058_))
                           (_libgerbil.so71126_
                            (path-expand '"libgerbil.so" _gerbil-libdir71058_))
                           (_libgerbil-ld-opts71128_
                            (if (file-exists? _libgerbil.so71126_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts71042_
                                   _libgerbil.so71126_))
                                (if (file-exists? _libgerbil.a71124_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts71042_
                                       _libgerbil.a71124_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a71124_
                                       _libgerbil.so71126_)))))
                           (_gerbil-rpath71130_
                            (string-append
                             '"-Wl,-rpath="
                             _gerbil-libdir71058_))
                           (_builtin-modules71134_
                            (map (lambda (_mod71132_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod71132_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx71037_ _deps71072_)))))
                      (let ((__tmp74263 (path-directory _output-bin71104_)))
                        (declare (not safe))
                        (create-directory* __tmp74263))
                      (let ((__tmp74264
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub71040_
                                  _builtin-modules71134_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm71106_
                         __tmp74264))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (create-directory _tmp71064_)
                            (for-each
                             copy-file
                             _src-deps-scm71078_
                             _deps-scm71080_)
                            (copy-file _src-bin-scm71096_ _bin-scm71098_)
                            (let ((__tmp74272
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74265
                                   (let ((__tmp74266
                                          (let ((__tmp74267
                                                 (let ((__tmp74268
                                                        (let ((__tmp74269
                                                               (let ((__tmp74270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74271
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm71106_ '()))))
                                (declare (not safe))
                                (cons _bin-scm71098_ __tmp74271))))
                         (declare (not safe))
                         (foldr1 cons __tmp74270 _deps-scm71080_))))
                  (declare (not safe))
                  (foldr1 cons __tmp74269 _gsc-link-opts71118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink71062_
                                                         __tmp74268))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp74267))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp74266))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74272
                               __tmp74265))
                            (let ((__tmp74279
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74273
                                   (let ((__tmp74274
                                          (let ((__tmp74275
                                                 (let ((__tmp74276
                                                        (let ((__tmp74277
                                                               (let ((__tmp74278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _output_-c71114_ '()))))
                         (declare (not safe))
                         (cons _output-c71108_ __tmp74278))))
                  (declare (not safe))
                  (cons _bin-c71100_ __tmp74277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp74276
                                                           _deps-c71086_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp74275
                                                    _gsc-cc-opts71120_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp74274))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74279
                               __tmp74273))
                            (let ((__tmp74292
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp74280
                                   (let ((__tmp74281
                                          (let ((__tmp74282
                                                 (let ((__tmp74283
                                                        (let ((__tmp74284
                                                               (let ((__tmp74285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74286
                                     (let ((__tmp74287
                                            (let ((__tmp74288
                                                   (let ((__tmp74289
                                                          (let ((__tmp74290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp74291
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts71128_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp74291))))
                    (declare (not safe))
                    (cons _gerbil-libdir71058_ __tmp74290))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L" __tmp74289))))
                                              (declare (not safe))
                                              (cons _gerbil-rpath71130_
                                                    __tmp74288))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp74287
                                               _output-ld-opts71122_))))
                                (declare (not safe))
                                (cons _output_-o71116_ __tmp74286))))
                         (declare (not safe))
                         (cons _output-o71110_ __tmp74285))))
                  (declare (not safe))
                  (cons _bin-o71102_ __tmp74284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp74283
                                                           _deps-o71092_))))
                                            (declare (not safe))
                                            (cons _output-bin71104_
                                                  __tmp74282))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp74281))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74292
                               __tmp74280))
                            (for-each
                             delete-file
                             (let ((__tmp74293
                                    (let ((__tmp74294
                                           (let ((__tmp74295
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o71116_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o71110_
                                                   __tmp74295))))
                                      (declare (not safe))
                                      (cons _output_-c71114_ __tmp74294))))
                               (declare (not safe))
                               (cons _output-c71108_ __tmp74293)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp71064_)))
                          '#!void)))))
          (let* ((_output-bin71048_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx71037_ _opts71038_)))
                 (_output-scm71050_
                  (string-append _output-bin71048_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub71046_ _output-scm71050_ _output-bin71048_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm71050_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx70857_ _opts70858_)
        (letrec ((_reset-declare70860_
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
                 (_generate-stub70861_
                  (lambda (_deps71028_)
                    (let ((_mod-main71030_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx70857_ 'main)))
                          (_reset-decl71031_
                           (let ()
                             (declare (not safe))
                             (_reset-declare70860_)))
                          (_user-decl71032_
                           (let ()
                             (declare (not safe))
                             (_user-declare70863_))))
                      (for-each
                       (lambda (_dep71034_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl71031_)
                         (newline)
                         (if _user-decl71032_
                             (begin (write _user-decl71032_) (newline))
                             '#!void)
                         (write (let ((__tmp74296
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep71034_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp74296)))
                         (newline))
                       _deps71028_)
                      (write (let ((__tmp74297
                                    (let ((__tmp74310
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp74298
                                           (let ((__tmp74306
                                                  (let ((__tmp74307
                                                         (let ((__tmp74308
                                                                (let ((__tmp74309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp74309))))
                   (declare (not safe))
                   (cons __tmp74308 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp74307)))
                                                 (__tmp74299
                                                  (let ((__tmp74300
                                                         (let ((__tmp74301
                                                                (let ((__tmp74302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp74303
                                      (let ((__tmp74304
                                             (let ((__tmp74305
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp74305 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp74304))))
                                 (declare (not safe))
                                 (cons __tmp74303 '()))))
                          (declare (not safe))
                          (cons _mod-main71030_ __tmp74302))))
                   (declare (not safe))
                   (cons 'apply __tmp74301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74300 '()))))
                                             (declare (not safe))
                                             (cons __tmp74306 __tmp74299))))
                                      (declare (not safe))
                                      (cons __tmp74310 __tmp74298))))
                               (declare (not safe))
                               (cons 'define __tmp74297)))
                      (write '(gerbil-main))
                      (newline))))
                 (_static-include70862_
                  (lambda (_gsc-opts71021_ _libdir71022_)
                    (letrec* ((_static-dir71024_
                               (path-expand '"static" _libdir71022_))
                              (_user-static-dir71025_
                               (path-expand
                                (path-expand '"lib/static" (gerbil-path))))
                              (_cppflags71026_
                               (string-append
                                '"-I "
                                _static-dir71024_
                                '" -I "
                                _user-static-dir71025_)))
                      (append _gsc-opts71021_
                              (let ((__tmp74311
                                     (let ()
                                       (declare (not safe))
                                       (cons _cppflags71026_ '()))))
                                (declare (not safe))
                                (cons '"-cc-options" __tmp74311))))))
                 (_user-declare70863_
                  (lambda ()
                    (let* ((_gsc-opts70926_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts70858_)))
                           (_gsc-prelude70928_
                            (if _gsc-opts70926_
                                (member '"-prelude" _gsc-opts70926_)
                                '#f))
                           (_gsc-prelude70930_
                            (if _gsc-prelude70928_
                                (read (open-input-string
                                       (cadr _gsc-prelude70928_)))
                                '#f)))
                      (let _lp70933_ ((_rest70935_
                                       (let ()
                                         (declare (not safe))
                                         (cons _gsc-prelude70930_ '())))
                                      (_user-decls70936_ '()))
                        (let* ((_rest7093770945_ _rest70935_)
                               (_else7093970953_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls70936_))
                                      '#f
                                      (let ((__tmp74312
                                             (reverse _user-decls70936_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp74312)))))
                               (_K7094171009_
                                (lambda (_rest70956_ _expr70957_)
                                  (let* ((_expr7095870970_ _expr70957_)
                                         (_else7096170978_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp70933_
                                               _rest70956_
                                               _user-decls70936_)))))
                                    (let ((_K7096670999_
                                           (lambda (_decls70997_)
                                             (let ((__tmp74313
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls70936_
                                                              _decls70997_))))
                                               (declare (not safe))
                                               (_lp70933_
                                                _rest70956_
                                                __tmp74313))))
                                          (_K7096370984_
                                           (lambda (_exprs70982_)
                                             (let ((__tmp74314
                                                    (append _exprs70982_
                                                            _rest70956_)))
                                               (declare (not safe))
                                               (_lp70933_
                                                __tmp74314
                                                _user-decls70936_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr7095870970_))
                                          (let ((_tl7096871004_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr7095870970_)))
                                                (_hd7096771002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr7095870970_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd7096771002_
                                                         'declare))
                                                (let ((_decls71007_
                                                       _tl7096871004_))
                                                  (declare (not safe))
                                                  (_K7096670999_ _decls71007_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd7096771002_
                                                             'begin))
                                                    (let ((_exprs70992_
                                                           _tl7096871004_))
                                                      (declare (not safe))
                                                      (_K7096370984_
                                                       _exprs70992_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else7096170978_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else7096170978_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7093770945_))
                              (let ((_hd7094271012_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7093770945_)))
                                    (_tl7094371014_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7093770945_))))
                                (let* ((_expr71017_ _hd7094271012_)
                                       (_rest71019_ _tl7094371014_))
                                  (declare (not safe))
                                  (_K7094171009_ _rest71019_ _expr71017_)))
                              (let ()
                                (declare (not safe))
                                (_else7093970953_))))))))
                 (_compile-stub70864_
                  (lambda (_output-scm70871_ _output-bin70872_)
                    (let* ((_gerbil-home70874_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_gerbil-libdir70876_
                            (path-expand '"lib" _gerbil-home70874_))
                           (_runtime70878_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp70880_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home70874_))
                           (_include-gambit-sharp70882_
                            (string-append
                             '"(include \""
                             _gambit-sharp70880_
                             '"\")"))
                           (_bin-scm70884_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx70857_)))
                           (_deps70886_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx70857_)))
                           (_deps70888_
                            (map gxc#find-static-module-file _deps70886_))
                           (_deps70893_
                            (filter (lambda (_$obj70890_)
                                      (let ((__tmp74315
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty? _$obj70890_))))
                                        (declare (not safe))
                                        (not __tmp74315)))
                                    _deps70888_))
                           (_deps70897_
                            (filter (lambda (_f70895_)
                                      (let ((__tmp74316
                                             (member _f70895_ _runtime70878_)))
                                        (declare (not safe))
                                        (not __tmp74316)))
                                    _deps70893_))
                           (_output-base70899_
                            (string-append
                             (path-strip-extension _output-scm70871_)))
                           (_output-c70901_
                            (string-append _output-base70899_ '".c"))
                           (_output-o70903_
                            (string-append _output-base70899_ '".o"))
                           (_output-c_70905_
                            (string-append _output-base70899_ '"_.c"))
                           (_output-o_70907_
                            (string-append _output-base70899_ '"_.o"))
                           (_gsc-link-opts70909_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options '#f)))
                           (_gsc-cc-opts70911_
                            (let ((__tmp74317
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gsc-cc-options))))
                              (declare (not safe))
                              (_static-include70862_
                               __tmp74317
                               _gerbil-libdir70876_)))
                           (_output-ld-opts70913_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros70915_
                            (if (gerbil-runtime-smp?)
                                (let ((__tmp74319
                                       (let ((__tmp74320
                                              (let ((__tmp74321
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp70882_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp74321))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp74320))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp74319))
                                (let ((__tmp74318
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp70882_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp74318))))
                           (_gsc-link-opts70917_
                            (append _gsc-link-opts70909_ _gsc-gx-macros70915_))
                           (_gerbil-rpath70919_
                            (string-append
                             '"-Wl,-rpath="
                             _gerbil-libdir70876_))
                           (_default-ld-options70921_
                            (let ((__tmp74322
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp74322))))
                      (let ((__tmp74323 (path-directory _output-bin70872_)))
                        (declare (not safe))
                        (create-directory* __tmp74323))
                      (let ((__tmp74324
                             (lambda ()
                               (let ((__tmp74325
                                      (let ((__tmp74326
                                             (let ((__tmp74327
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm70884_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp74327
                                                       _deps70897_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp74326
                                                _runtime70878_))))
                                 (declare (not safe))
                                 (_generate-stub70861_ __tmp74325)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm70871_
                         __tmp74324))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp74333
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74328
                                   (let ((__tmp74329
                                          (let ((__tmp74330
                                                 (let ((__tmp74331
                                                        (let ((__tmp74332
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm70871_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp74332 _gsc-link-opts70917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_70905_
                                                         __tmp74331))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp74330))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp74329))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74333
                               __tmp74328))
                            (let ((__tmp74337
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74334
                                   (let ((__tmp74335
                                          (let ((__tmp74336
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _output-c_70905_
                                                         '()))))
                                            (declare (not safe))
                                            (cons _output-c70901_
                                                  __tmp74336))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp74335))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74337
                               __tmp74334))
                            (let ((__tmp74347
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp74338
                                   (let ((__tmp74339
                                          (let ((__tmp74340
                                                 (let ((__tmp74341
                                                        (let ((__tmp74342
                                                               (let ((__tmp74343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74344
                                     (let ((__tmp74345
                                            (let ((__tmp74346
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options70921_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir70876_
                                                    __tmp74346))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp74345))))
                                (declare (not safe))
                                (cons _gerbil-rpath70919_ __tmp74344))))
                         (declare (not safe))
                         (foldr1 cons __tmp74343 _output-ld-opts70913_))))
                  (declare (not safe))
                  (cons _output-o_70907_ __tmp74342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o70903_
                                                         __tmp74341))))
                                            (declare (not safe))
                                            (cons _output-bin70872_
                                                  __tmp74340))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp74339))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74347
                               __tmp74338)))
                          '#!void)))))
          (let* ((_output-bin70866_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx70857_ _opts70858_)))
                 (_output-scm70868_
                  (string-append _output-bin70866_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub70864_ _output-scm70868_ _output-bin70866_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm70868_))))))
    (define gxc#find-export-binding
      (lambda (_ctx70807_ _id70808_)
        (let ((_$e70854_
               (let ((__tmp74349
                      (lambda (_e7080970811_)
                        (let* ((_g7081370823_ _e7080970811_)
                               (_else7081570831_ (lambda () '#f))
                               (_K7081770835_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g7081370823_
                                 'gx#module-export::t))
                              (let* ((_e7081870838_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g7081370823_ '1)))
                                     (_e7081970841_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g7081370823_ '2)))
                                     (_e7082070844_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g7081370823_ '3))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e7082070844_ '0))
                                    (let ((_e7082170847_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g7081370823_ '4))))
                                      (if ((lambda (_g7084970851_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g7084970851_ _id70808_)))
                                           _e7082170847_)
                                          (let ()
                                            (declare (not safe))
                                            (_K7081770835_))
                                          (let ()
                                            (declare (not safe))
                                            (_else7081570831_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else7081570831_))))
                              (let ()
                                (declare (not safe))
                                (_else7081570831_))))))
                     (__tmp74348
                      (##structure-ref
                       _ctx70807_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp74349 __tmp74348))))
          (if _$e70854_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e70854_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx70799_ _id70800_)
        (let ((_$e70802_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx70799_ _id70800_))))
          (if _$e70802_
              ((lambda (_bind70805_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind70805_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id70800_)))
                 (##structure-ref _bind70805_ '1 gx#binding::t '#f))
               _$e70802_)
              (let ((__tmp74350
                     (##structure-ref
                      _ctx70799_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp74350
                 _id70800_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx70686_)
        (letrec* ((_ht70688_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template70689_
                   (lambda (_in70751_ _phi70752_)
                     (let ((_iphi70754_
                            (fx+ _phi70752_
                                 (##direct-structure-ref
                                  _in70751_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports70755_
                            (##structure-ref
                             (##direct-structure-ref
                              _in70751_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp70757_ ((_rest70759_ _imports70755_)
                                       (_r70760_ '()))
                         (let* ((_rest7076170769_ _rest70759_)
                                (_else7076370777_ (lambda () _r70760_))
                                (_K7076570787_
                                 (lambda (_rest70780_ _in70781_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in70781_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi70754_))
                                           (let ((__tmp74357
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in70781_
                                                          _r70760_))))
                                             (declare (not safe))
                                             (_lp70757_
                                              _rest70780_
                                              __tmp74357))
                                           (let ()
                                             (declare (not safe))
                                             (_lp70757_ _rest70780_ _r70760_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in70781_
                                              'gx#module-import::t))
                                           (let ((_iphi70783_
                                                  (fx+ _phi70752_
                                                       (##direct-structure-ref
                                                        _in70781_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi70783_))
                                                 (let ((__tmp74355
                                                        (let ((__tmp74356
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in70781_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp74356 _r70760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp70757_
                                                    _rest70780_
                                                    __tmp74355))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp70757_
                                                    _rest70780_
                                                    _r70760_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in70781_
                                                  'gx#import-set::t))
                                               (let ((_xphi70785_
                                                      (fx+ _iphi70754_
                                                           (##direct-structure-ref
                                                            _in70781_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi70785_))
                                                     (let ((__tmp74353
                                                            (let ((__tmp74354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in70781_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp74354 _r70760_))))
               (declare (not safe))
               (_lp70757_ _rest70780_ __tmp74353))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi70785_)
                                                         (let ((__tmp74351
                                                                (let ((__tmp74352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template70689_
                                  _in70781_
                                  _iphi70754_))))
                          (declare (not safe))
                          (foldl1 cons _r70760_ __tmp74352))))
                   (declare (not safe))
                   (_lp70757_ _rest70780_ __tmp74351))
                 (let ()
                   (declare (not safe))
                   (_lp70757_ _rest70780_ _r70760_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp70757_
                                                  _rest70780_
                                                  _r70760_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest7076170769_))
                               (let ((_hd7076670790_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest7076170769_)))
                                     (_tl7076770792_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest7076170769_))))
                                 (let* ((_in70795_ _hd7076670790_)
                                        (_rest70797_ _tl7076770792_))
                                   (declare (not safe))
                                   (_K7076570787_ _rest70797_ _in70795_)))
                               (let ()
                                 (declare (not safe))
                                 (_else7076370777_))))))))
                  (_find-deps70690_
                   (lambda (_rest70697_ _deps70698_)
                     (let* ((_rest7069970707_ _rest70697_)
                            (_else7070170715_ (lambda () _deps70698_))
                            (_K7070370739_
                             (lambda (_rest70718_ _hd70719_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd70719_
                                      'gx#module-context::t))
                                   (let ((_id70721_
                                          (##structure-ref
                                           _hd70719_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports70722_
                                          (##structure-ref
                                           _hd70719_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref _ht70688_ _id70721_ '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps70690_
                                            _rest70718_
                                            _deps70698_))
                                         (let ((_$e70724_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd70719_))))
                                           (if _$e70724_
                                               ((lambda (_pre70727_)
                                                  (let ((_xdeps70729_
                                                         (let ((__tmp74370
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre70727_ _imports70722_))))
                   (declare (not safe))
                   (_find-deps70690_ __tmp74370 _deps70698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht70688_
                                                       _id70721_
                                                       _hd70719_))
                                                    (let ((__tmp74371
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd70719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps70729_))))
              (declare (not safe))
              (_find-deps70690_ _rest70718_ __tmp74371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e70724_)
                                               (let ((_xdeps70731_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps70690_
                                                         _imports70722_
                                                         _deps70698_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht70688_
                                                    _id70721_
                                                    _hd70719_))
                                                 (let ((__tmp74369
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd70719_
                                                                _xdeps70731_))))
                                                   (declare (not safe))
                                                   (_find-deps70690_
                                                    _rest70718_
                                                    __tmp74369)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd70719_
                                          'gx#prelude-context::t))
                                       (let ((_id70733_
                                              (##structure-ref
                                               _hd70719_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht70688_
                                                _id70733_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps70690_
                                                _rest70718_
                                                _deps70698_))
                                             (let ((_xdeps70735_
                                                    (let ((__tmp74367
                                                           (##structure-ref
                                                            _hd70719_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps70690_
                                                       __tmp74367
                                                       _deps70698_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht70688_
                                                      _id70733_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps70690_
                                                      _rest70718_
                                                      _xdeps70735_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht70688_
                                                        _id70733_
                                                        _hd70719_))
                                                     (let ((__tmp74368
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd70719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps70735_))))
               (declare (not safe))
               (_find-deps70690_ _rest70718_ __tmp74368)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd70719_
                                              'gx#module-import::t))
                                           (if (let ((__tmp74366
                                                      (##direct-structure-ref
                                                       _hd70719_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp74366))
                                               (let ((__tmp74364
                                                      (let ((__tmp74365
                                                             (##direct-structure-ref
                                                              _hd70719_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp74365
                                                              _rest70718_))))
                                                 (declare (not safe))
                                                 (_find-deps70690_
                                                  __tmp74364
                                                  _deps70698_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps70690_
                                                  _rest70718_
                                                  _deps70698_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd70719_
                                                  'gx#module-export::t))
                                               (let ((__tmp74362
                                                      (let ((__tmp74363
                                                             (##direct-structure-ref
                                                              _hd70719_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp74363
                                                              _rest70718_))))
                                                 (declare (not safe))
                                                 (_find-deps70690_
                                                  __tmp74362
                                                  _deps70698_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd70719_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp74361
                                                              (##direct-structure-ref
                                                               _hd70719_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp74361))
                                                       (let ((__tmp74359
                                                              (let ((__tmp74360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd70719_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp74360 _rest70718_))))
                 (declare (not safe))
                 (_find-deps70690_ __tmp74359 _deps70698_))
               (if (fxpositive?
                    (##direct-structure-ref _hd70719_ '2 gx#import-set::t '#f))
                   (let* ((_xdeps70737_
                           (let ()
                             (declare (not safe))
                             (_import-set-template70689_ _hd70719_ '0)))
                          (__tmp74358
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest70718_ _xdeps70737_))))
                     (declare (not safe))
                     (_find-deps70690_ __tmp74358 _deps70698_))
                   (let ()
                     (declare (not safe))
                     (_find-deps70690_ _rest70718_ _deps70698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd70719_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest7069970707_))
                           (let ((_hd7070470742_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest7069970707_)))
                                 (_tl7070570744_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest7069970707_))))
                             (let* ((_hd70747_ _hd7070470742_)
                                    (_rest70749_ _tl7070570744_))
                               (declare (not safe))
                               (_K7070370739_ _rest70749_ _hd70747_)))
                           (let ()
                             (declare (not safe))
                             (_else7070170715_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp74372
                                  (let ((_$e70692_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx70686_))))
                                    (if _$e70692_
                                        ((lambda (_pre70695_)
                                           (let ((__tmp74373
                                                  (##structure-ref
                                                   _ctx70686_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre70695_ __tmp74373)))
                                         _$e70692_)
                                        (##structure-ref
                                         _ctx70686_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps70690_ __tmp74372 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx70617_)
        (let* ((_context-id70619_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx70617_
                       'gx#module-context::t))
                    (##structure-ref _ctx70617_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx70617_)))
               (_scm70621_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id70619_))
                 '".scm"))
               (_dirs70623_ (gx#current-expander-module-library-path))
               (_dirs70629_
                (let ((_user-libpath70625_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath70625_
                      (let ((_user-libpath70627_
                             (path-expand '"lib" _user-libpath70625_)))
                        (if (member _user-libpath70627_ _dirs70623_)
                            _dirs70623_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath70627_ _dirs70623_))))
                      _dirs70623_)))
               (_dirs70638_
                (let ((_$e70631_ (gxc#current-compile-output-dir)))
                  (if _$e70631_
                      ((lambda (_g7063370635_)
                         (let ()
                           (declare (not safe))
                           (cons _g7063370635_ _dirs70629_)))
                       _$e70631_)
                      _dirs70629_)))
               (_dirs70644_
                (map (lambda (_g7063970641_)
                       (path-expand '"static" _g7063970641_))
                     _dirs70638_)))
          (let _lp70647_ ((_rest70649_ _dirs70644_))
            (let* ((_rest7065070658_ _rest70649_)
                   (_else7065270666_
                    (lambda ()
                      (let ((__tmp74374
                             (##structure-ref
                              _ctx70617_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp74374
                         _scm70621_))))
                   (_K7065470674_
                    (lambda (_rest70669_ _dir70670_)
                      (let ((_path70672_ (path-expand _scm70621_ _dir70670_)))
                        (if (file-exists? _path70672_)
                            _path70672_
                            (let ()
                              (declare (not safe))
                              (_lp70647_ _rest70669_)))))))
              (if (let () (declare (not safe)) (##pair? _rest7065070658_))
                  (let ((_hd7065570677_
                         (let ()
                           (declare (not safe))
                           (##car _rest7065070658_)))
                        (_tl7065670679_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7065070658_))))
                    (let* ((_dir70682_ _hd7065570677_)
                           (_rest70684_ _tl7065670679_))
                      (declare (not safe))
                      (_K7065470674_ _rest70684_ _dir70682_)))
                  (let () (declare (not safe)) (_else7065270666_))))))))
    (define gxc#file-empty?
      (lambda (_path70615_)
        (let ((__tmp74375 (file-info-size (file-info _path70615_ '#t))))
          (declare (not safe))
          (zero? __tmp74375))))
    (define gxc#compile-top-module
      (lambda (_ctx70604_)
        (let ((__tmp74379
               (lambda ()
                 (let ((__tmp74380
                        (##structure-ref
                         _ctx70604_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp74380))
                 (if (gxc#current-compile-optimize)
                     (with-lock
                      gxc#+driver-mutex+
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gxc#optimize! _ctx70604_))))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx70604_))
                 (if (let ((__tmp74383
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx70604_))))
                       (declare (not safe))
                       (null? __tmp74383))
                     (let* ((_thr170609_
                             (let ((__tmp74381
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx70604_)))))
                               (declare (not safe))
                               (spawn __tmp74381)))
                            (_thr270612_
                             (let ((__tmp74382
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx70604_)))))
                               (declare (not safe))
                               (spawn __tmp74382))))
                       (let () (declare (not safe)) (gxc#join! _thr170609_))
                       (let () (declare (not safe)) (gxc#join! _thr270612_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx70604_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx70604_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx70604_))
                     '#!void)))
              (__tmp74378
               (let ((__obj74227 (make-object gxc#symbol-table::t '2)))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj74227))
                 __obj74227))
              (__tmp74377
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp74376 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp74379
           gx#current-expander-context
           _ctx70604_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp74378
           gxc#current-compile-runtime-sections
           __tmp74377
           gxc#current-compile-runtime-names
           __tmp74376))))
    (define gxc#collect-bindings
      (lambda (_ctx70602_)
        (let ((__tmp74384
               (##structure-ref _ctx70602_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp74384))))
    (define gxc#compile-runtime-code
      (lambda (_ctx70548_)
        (letrec ((_compile170550_
                  (lambda (_ctx70591_)
                    (let* ((_code70593_
                            (##structure-ref
                             _ctx70591_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt70597_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code70593_))
                                (let ((_idstr70595_
                                       (let ((__tmp74385
                                              (##structure-ref
                                               _ctx70591_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp74385))))
                                  (string-append _idstr70595_ '"__0"))
                                '#f)))
                      (if _rt70597_
                          (begin
                            (let ((__tmp74386
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp74386 _ctx70591_ _rt70597_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code70552_
                               _ctx70591_
                               _code70593_)))
                          (let ((_path70600_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx70591_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file _path70600_ void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code70553_
                         _ctx70591_
                         _code70593_
                         _rt70597_)))))
                 (_context-timestamp70551_
                  (lambda (_ctx70589_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx70589_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code70552_
                  (lambda (_ctx70571_ _code70572_)
                    (let* ((_lifts70574_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code70577_
                            (let ((__tmp74389
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code70572_))))
                                  (__tmp74388
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp74387
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp74389
                               gx#current-expander-context
                               _ctx70571_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts70574_
                               gxc#current-compile-marks
                               __tmp74388
                               gxc#current-compile-identifiers
                               __tmp74387)))
                           (_runtime-code70579_
                            (if (let ((__tmp74393 (unbox _lifts70574_)))
                                  (declare (not safe))
                                  (null? __tmp74393))
                                _runtime-code70577_
                                (let ((__tmp74390
                                       (let ((__tmp74392
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code70577_
                                                      '())))
                                             (__tmp74391
                                              (reverse (unbox _lifts70574_))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp74392 __tmp74391))))
                                  (declare (not safe))
                                  (cons 'begin __tmp74390))))
                           (_runtime-code70581_
                            (let ((__tmp74394
                                   (let ((__tmp74396
                                          (let ((__tmp74397
                                                 (let ((__tmp74400
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp70551_
                                                           _ctx70571_)))
                                                       (__tmp74398
                                                        (let ((__tmp74399
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp74399
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp74400
                                                         __tmp74398))))
                                            (declare (not safe))
                                            (cons 'define __tmp74397)))
                                         (__tmp74395
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code70579_ '()))))
                                     (declare (not safe))
                                     (cons __tmp74396 __tmp74395))))
                              (declare (not safe))
                              (cons 'begin __tmp74394)))
                           (_scm070583_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx70571_
                               '0
                               '".scm"))))
                      (let ((_scms70586_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx70571_))))
                        (let ((__tmp74401
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm070583_
                                    _runtime-code70581_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp74401
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms70586_)
                            (delete-file _scms70586_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm070583_
                           '" => "
                           _scms70586_))
                        (copy-file _scm070583_ _scms70586_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm070583_))))))
                 (_generate-loader-code70553_
                  (lambda (_ctx70560_ _code70561_ _rt70562_)
                    (let* ((_loader-code70565_
                            (let ((__tmp74402
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code70561_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp74402
                               gx#current-expander-context
                               _ctx70560_)))
                           (_loader-code70567_
                            (if _rt70562_
                                (let ((__tmp74403
                                       (let ((__tmp74404
                                              (let ((__tmp74405
                                                     (let ((__tmp74406
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt70562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp74406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74405 '()))))
                                         (declare (not safe))
                                         (cons _loader-code70565_
                                               __tmp74404))))
                                  (declare (not safe))
                                  (cons 'begin __tmp74403))
                                _loader-code70565_)))
                      (let ((__tmp74407
                             (lambda ()
                               (let ((__tmp74408
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx70560_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp74408
                                  _loader-code70567_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp74407
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules70555_
                 (let ((__tmp74409
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx70548_))))
                   (declare (not safe))
                   (cons _ctx70548_ __tmp74409))))
            (for-each
             (lambda (_ctx70557_)
               (let ((__tmp74410
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile170550_ _ctx70557_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp74410
                  gxc#current-compile-decls
                  '())))
             _all-modules70555_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx70445_)
        (letrec ((_compile-ssi70447_
                  (lambda (_code70518_)
                    (let* ((_path70520_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx70445_
                               '#f
                               '".ssi")))
                           (_prelude70531_
                            (let* ((_super70522_
                                    (##structure-ref
                                     _ctx70445_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e70524_
                                    (##structure-ref
                                     _super70522_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e70524_
                                  ((lambda (_g7052670528_)
                                     (make-symbol '":" _g7052670528_))
                                   _$e70524_)
                                  ':<root>)))
                           (_ns70533_
                            (##structure-ref
                             _ctx70445_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr70535_
                            (symbol->string
                             (##structure-ref
                              _ctx70445_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg70542_
                            (let ((_$e70537_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr70535_ '#\/))))
                              (if _$e70537_
                                  ((lambda (_x70540_)
                                     (string->symbol
                                      (substring _idstr70535_ '0 _x70540_)))
                                   _$e70537_)
                                  '#f)))
                           (_rt70544_
                            (let ((__tmp74411
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp74411 _ctx70445_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path70520_))
                      (let ((__tmp74412
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude70531_))
                               (if _pkg70542_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg70542_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns70533_))
                               (newline)
                               (pretty-print _code70518_)
                               (if _rt70544_
                                   (pretty-print
                                    (let ((__tmp74413
                                           (let ((__tmp74417
                                                  (let ((__tmp74418
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp74418)))
                                                 (__tmp74414
                                                  (let ((__tmp74415
                                                         (let ((__tmp74416
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt70544_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp74416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74415 '()))))
                                             (declare (not safe))
                                             (cons __tmp74417 __tmp74414))))
                                      (declare (not safe))
                                      (cons '%#call __tmp74413)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path70520_
                         __tmp74412)))))
                 (_compile-phi70448_
                  (lambda (_part70458_)
                    (let* ((_part7045970472_ _part70458_)
                           (_E7046170476_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part7045970472_))))
                           (_K7046270487_
                            (lambda (_code70479_
                                     _n70480_
                                     _phi70481_
                                     _phi-ctx70482_)
                              (let* ((_code70485_
                                      (let ((__tmp74419
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code70479_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp74419
                                         gx#current-expander-context
                                         _phi-ctx70482_
                                         gx#current-expander-phi
                                         _phi70481_)))
                                     (__tmp74420
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx70445_
                                         _n70480_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp74420
                                 _code70485_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part7045970472_))
                          (let ((_hd7046370490_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part7045970472_)))
                                (_tl7046470492_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part7045970472_))))
                            (let ((_phi-ctx70495_ _hd7046370490_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl7046470492_))
                                  (let ((_hd7046570497_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl7046470492_)))
                                        (_tl7046670499_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl7046470492_))))
                                    (let ((_phi70502_ _hd7046570497_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7046670499_))
                                          (let ((_hd7046770504_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7046670499_)))
                                                (_tl7046870506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7046670499_))))
                                            (let ((_n70509_ _hd7046770504_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl7046870506_))
                                                  (let ((_hd7046970511_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl7046870506_)))
                                                        (_tl7047070513_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl7046870506_))))
                                                    (let ((_code70516_
                                                           _hd7046970511_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl7047070513_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K7046270487_
                                                             _code70516_
                                                             _n70509_
                                                             _phi70502_
                                                             _phi-ctx70495_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E7046170476_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E7046170476_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7046170476_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E7046170476_)))))
                          (let () (declare (not safe)) (_E7046170476_)))))))
          (let ((_g74421_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx70445_))))
            (begin
              (let ((_g74422_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g74421_)
                           (##vector-length _g74421_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g74422_ 2)))
                    (error "Context expects 2 values" _g74422_)))
              (let ((_ssi-code70450_
                     (let () (declare (not safe)) (##vector-ref _g74421_ 0)))
                    (_phi-code70451_
                     (let () (declare (not safe)) (##vector-ref _g74421_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi70447_ _ssi-code70450_))
                  (let ((_threads70456_
                         (map (lambda (_code70453_)
                                (let ((__tmp74423
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi70448_ _code70453_)))))
                                  (declare (not safe))
                                  (spawn __tmp74423)))
                              _phi-code70451_)))
                    (for-each gxc#join! _threads70456_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx70428_)
        (let* ((_path70430_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx70428_ '#f '".ssxi.ss")))
               (_code70432_
                (let ((__tmp74424
                       (##structure-ref
                        _ctx70428_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp74424)))
               (_idstr70434_
                (symbol->string
                 (##structure-ref _ctx70428_ '1 gx#expander-context::t '#f)))
               (_pkg70441_
                (let ((_$e70436_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr70434_ '#\/))))
                  (if _$e70436_
                      ((lambda (_x70439_)
                         (string->symbol (substring _idstr70434_ '0 _x70439_)))
                       _$e70436_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path70430_))
          (let ((__tmp74425
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg70441_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg70441_))
                       '#!void)
                   (newline)
                   (pretty-print _code70432_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path70430_ __tmp74425)))))
    (define gxc#generate-meta-code
      (lambda (_ctx70421_)
        (let* ((_state70423_
                (let ((__obj74228 (make-object gxc#meta-state::t '4)))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj74228 _ctx70421_))
                  __obj74228))
               (_ssi-code70425_
                (let ((__tmp74426
                       (##structure-ref
                        _ctx70421_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp74426 _state70423_))))
          (values _ssi-code70425_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state70423_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx70414_)
        (let ((_lifts70416_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp74429
                 (lambda ()
                   (let ((_code70419_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx70414_))))
                     (if (let ((__tmp74433 (unbox _lifts70416_)))
                           (declare (not safe))
                           (null? __tmp74433))
                         _code70419_
                         (let ((__tmp74430
                                (let ((__tmp74432
                                       (let ()
                                         (declare (not safe))
                                         (cons _code70419_ '())))
                                      (__tmp74431
                                       (reverse (unbox _lifts70416_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp74432 __tmp74431))))
                           (declare (not safe))
                           (cons 'begin __tmp74430))))))
                (__tmp74428
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp74427
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp74429
             gxc#current-compile-lift
             _lifts70416_
             gxc#current-compile-marks
             __tmp74428
             gxc#current-compile-identifiers
             __tmp74427)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx70410_)
        (let ((_modules70412_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp74434
                 (##structure-ref _ctx70410_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp74434 _modules70412_))
          (reverse (unbox _modules70412_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path70393_ _code70394_ _phi?70395_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path70393_))
        (let ((__tmp74435
               (lambda ()
                 (pretty-print
                  (let ((__tmp74436
                         (let ((__tmp74443
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp74437
                                (let ((__tmp74442
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp74438
                                       (let ((__tmp74441
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp74439
                                              (let ((__tmp74440
                                                     (if _phi?70395_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons '() __tmp74440))))
                                         (declare (not safe))
                                         (cons __tmp74441 __tmp74439))))
                                  (declare (not safe))
                                  (cons __tmp74442 __tmp74438))))
                           (declare (not safe))
                           (cons __tmp74443 __tmp74437))))
                    (declare (not safe))
                    (cons 'declare __tmp74436)))
                 (pretty-print _code70394_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path70393_ __tmp74435))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path70393_ _phi?70395_))
            '#!void)
        (if (gxc#current-compile-keep-scm) '#!void (delete-file _path70393_))))
    (define gxc#compile-scm-file__0
      (lambda (_path70401_ _code70402_)
        (let ((_phi?70404_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path70401_ _code70402_ _phi?70404_))))
    (define gxc#compile-scm-file
      (lambda _g74445_
        (let ((_g74444_ (let () (declare (not safe)) (##length _g74445_))))
          (cond ((let () (declare (not safe)) (##fx= _g74444_ 2))
                 (apply (lambda (_path70401_ _code70402_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0 _path70401_ _code70402_)))
                        _g74445_))
                ((let () (declare (not safe)) (##fx= _g74444_ 3))
                 (apply (lambda (_path70406_ _code70407_ _phi?70408_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path70406_
                             _code70407_
                             _phi?70408_)))
                        _g74445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g74445_))))))
    (define gxc#gsc-debug-options__%
      (lambda (_phi?70313_)
        (if (gxc#current-compile-debug)
            (if _phi?70313_
                '()
                (let ((__tmp74446
                       (let ((__tmp74447
                              (let ((__tmp74448
                                     (let ()
                                       (declare (not safe))
                                       (cons '"-g" '()))))
                                (declare (not safe))
                                (cons '"-cc-options" __tmp74448))))
                         (declare (not safe))
                         (cons '"-track-scheme" __tmp74447))))
                  (declare (not safe))
                  (cons '"-debug-source" __tmp74446)))
            '())))
    (define gxc#gsc-debug-options__0
      (lambda ()
        (let ((_phi?70388_ '#f))
          (declare (not safe))
          (gxc#gsc-debug-options__% _phi?70388_))))
    (define gxc#gsc-debug-options
      (lambda _g74450_
        (let ((_g74449_ (let () (declare (not safe)) (##length _g74450_))))
          (cond ((let () (declare (not safe)) (##fx= _g74449_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-debug-options__0)))
                        _g74450_))
                ((let () (declare (not safe)) (##fx= _g74449_ 1))
                 (apply (lambda (_phi?70390_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-debug-options__% _phi?70390_)))
                        _g74450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-debug-options
                  _g74450_))))))
    (define gxc#gsc-link-options
      (lambda (_phi?70222_)
        (let _lp70224_ ((_rest70226_ (gxc#current-compile-gsc-options))
                        (_opts70227_ '()))
          (let* ((_rest7022870248_ _rest70226_)
                 (_else7023270256_
                  (lambda ()
                    (let ((__tmp74452 (reverse _opts70227_))
                          (__tmp74451
                           (let ()
                             (declare (not safe))
                             (gxc#gsc-debug-options__% _phi?70222_))))
                      (declare (not safe))
                      (foldr1 cons __tmp74452 __tmp74451)))))
            (let ((_K7024270299_
                   (lambda (_rest70297_)
                     (let ()
                       (declare (not safe))
                       (_lp70224_ _rest70297_ _opts70227_))))
                  (_K7023770281_
                   (lambda (_rest70279_)
                     (let ()
                       (declare (not safe))
                       (_lp70224_ _rest70279_ _opts70227_))))
                  (_K7023470263_
                   (lambda (_rest70260_ _opt70261_)
                     (let ((__tmp74453
                            (let ()
                              (declare (not safe))
                              (cons _opt70261_ _opts70227_))))
                       (declare (not safe))
                       (_lp70224_ _rest70260_ __tmp74453)))))
              (if (let () (declare (not safe)) (##pair? _rest7022870248_))
                  (let ((_tl7024470304_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7022870248_)))
                        (_hd7024370302_
                         (let ()
                           (declare (not safe))
                           (##car _rest7022870248_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd7024370302_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7024470304_))
                            (let* ((_tl7024670307_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl7024470304_)))
                                   (_rest70310_ _tl7024670307_))
                              (declare (not safe))
                              (_K7024270299_ _rest70310_))
                            (let ((_opt70271_ _hd7024370302_)
                                  (_rest70273_ _tl7024470304_))
                              (let ()
                                (declare (not safe))
                                (_K7023470263_ _rest70273_ _opt70271_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd7024370302_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl7024470304_))
                                (let* ((_tl7024170289_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl7024470304_)))
                                       (_rest70292_ _tl7024170289_))
                                  (declare (not safe))
                                  (_K7023770281_ _rest70292_))
                                (let ((_opt70271_ _hd7024370302_)
                                      (_rest70273_ _tl7024470304_))
                                  (let ()
                                    (declare (not safe))
                                    (_K7023470263_ _rest70273_ _opt70271_))))
                            (let ((_opt70271_ _hd7024370302_)
                                  (_rest70273_ _tl7024470304_))
                              (let ()
                                (declare (not safe))
                                (_K7023470263_ _rest70273_ _opt70271_))))))
                  (let () (declare (not safe)) (_else7023270256_))))))))
    (define gxc#gsc-cc-options
      (lambda ()
        (let _lp70134_ ((_rest70136_ (gxc#current-compile-gsc-options))
                        (_opts70137_ '()))
          (let* ((_rest7013870158_ _rest70136_)
                 (_else7014270166_ (lambda () (reverse _opts70137_))))
            (let ((_K7015270205_
                   (lambda (_rest70202_ _opt70203_)
                     (let ((__tmp74454
                            (let ((__tmp74455
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts70137_))))
                              (declare (not safe))
                              (cons _opt70203_ __tmp74455))))
                       (declare (not safe))
                       (_lp70134_ _rest70202_ __tmp74454))))
                  (_K7014770186_
                   (lambda (_rest70184_)
                     (let ()
                       (declare (not safe))
                       (_lp70134_ _rest70184_ _opts70137_))))
                  (_K7014470172_
                   (lambda (_rest70170_)
                     (let ()
                       (declare (not safe))
                       (_lp70134_ _rest70170_ _opts70137_)))))
              (if (let () (declare (not safe)) (##pair? _rest7013870158_))
                  (let ((_tl7015470210_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7013870158_)))
                        (_hd7015370208_
                         (let ()
                           (declare (not safe))
                           (##car _rest7013870158_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd7015370208_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7015470210_))
                            (let ((_tl7015670215_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7015470210_)))
                                  (_hd7015570213_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7015470210_))))
                              (let ((_opt70218_ _hd7015570213_)
                                    (_rest70220_ _tl7015670215_))
                                (let ()
                                  (declare (not safe))
                                  (_K7015270205_ _rest70220_ _opt70218_))))
                            (let ((_rest70178_ _tl7015470210_))
                              (declare (not safe))
                              (_K7014470172_ _rest70178_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd7015370208_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl7015470210_))
                                (let* ((_tl7015170194_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl7015470210_)))
                                       (_rest70197_ _tl7015170194_))
                                  (declare (not safe))
                                  (_K7014770186_ _rest70197_))
                                (let ((_rest70178_ _tl7015470210_))
                                  (declare (not safe))
                                  (_K7014470172_ _rest70178_)))
                            (let ((_rest70178_ _tl7015470210_))
                              (declare (not safe))
                              (_K7014470172_ _rest70178_)))))
                  (let () (declare (not safe)) (_else7014270166_))))))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp70045_ ((_rest70047_ (gxc#current-compile-gsc-options))
                        (_opts70048_ '()))
          (let* ((_rest7004970069_ _rest70047_)
                 (_else7005370077_ (lambda () _opts70048_)))
            (let ((_K7006370120_
                   (lambda (_rest70118_)
                     (let ()
                       (declare (not safe))
                       (_lp70045_ _rest70118_ _opts70048_))))
                  (_K7005870098_
                   (lambda (_rest70095_ _opt70096_)
                     (let ((__tmp74456
                            (append _opts70048_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt70096_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp70045_ _rest70095_ __tmp74456))))
                  (_K7005570083_
                   (lambda (_rest70081_)
                     (let ()
                       (declare (not safe))
                       (_lp70045_ _rest70081_ _opts70048_)))))
              (if (let () (declare (not safe)) (##pair? _rest7004970069_))
                  (let ((_tl7006570125_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7004970069_)))
                        (_hd7006470123_
                         (let ()
                           (declare (not safe))
                           (##car _rest7004970069_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd7006470123_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7006570125_))
                            (let* ((_tl7006770128_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl7006570125_)))
                                   (_rest70131_ _tl7006770128_))
                              (declare (not safe))
                              (_K7006370120_ _rest70131_))
                            (let ((_rest70089_ _tl7006570125_))
                              (declare (not safe))
                              (_K7005570083_ _rest70089_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd7006470123_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl7006570125_))
                                (let ((_tl7006270108_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl7006570125_)))
                                      (_hd7006170106_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl7006570125_))))
                                  (let ((_opt70111_ _hd7006170106_)
                                        (_rest70113_ _tl7006270108_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7005870098_ _rest70113_ _opt70111_))))
                                (let ((_rest70089_ _tl7006570125_))
                                  (declare (not safe))
                                  (_K7005570083_ _rest70089_)))
                            (let ((_rest70089_ _tl7006570125_))
                              (declare (not safe))
                              (_K7005570083_ _rest70089_)))))
                  (let () (declare (not safe)) (_else7005370077_))))))))
    (define gxc#not-string-empty?
      (lambda (_str70042_)
        (let ((__tmp74457
               (let () (declare (not safe)) (string-empty? _str70042_))))
          (declare (not safe))
          (not __tmp74457))))
    (define gxc#gsc-compile-file
      (lambda (_path70010_ _phi?70011_)
        (letrec ((_gsc-link-path70013_
                  (lambda (_base-path70034_)
                    (let _lp70036_ ((_n70038_ '1))
                      (let ((_path70040_
                             (string-append
                              _base-path70034_
                              '".o"
                              (number->string _n70038_))))
                        (if (file-exists? _path70040_)
                            (let ((__tmp74458
                                   (let ()
                                     (declare (not safe))
                                     (+ _n70038_ '1))))
                              (declare (not safe))
                              (_lp70036_ __tmp74458))
                            _path70040_))))))
          (let* ((_base-path70015_ (path-strip-extension _path70010_))
                 (_path-c70017_ (string-append _base-path70015_ '".c"))
                 (_path-o70019_ (string-append _base-path70015_ '".o"))
                 (_link-path70021_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path70013_ _base-path70015_)))
                 (_link-path-c70023_ (string-append _link-path70021_ '".c"))
                 (_link-path-o70025_ (string-append _link-path70021_ '".o"))
                 (_gsc-link-opts70027_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options _phi?70011_)))
                 (_gsc-cc-opts70029_
                  (let () (declare (not safe)) (gxc#gsc-cc-options)))
                 (_gcc-ld-opts70031_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp74465 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp74459
                   (let ((__tmp74460
                          (let ((__tmp74461
                                 (let ((__tmp74462
                                        (let ((__tmp74463
                                               (let ((__tmp74464
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path70010_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp74464
                                                         _gsc-link-opts70027_))))
                                          (declare (not safe))
                                          (cons _link-path-c70023_
                                                __tmp74463))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp74462))))
                            (declare (not safe))
                            (cons '"-flat" __tmp74461))))
                     (declare (not safe))
                     (cons '"-link" __tmp74460))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp74465 __tmp74459))
            (let ((__tmp74472 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp74466
                   (let ((__tmp74467
                          (let ((__tmp74468
                                 (let ((__tmp74469
                                        (let ((__tmp74470
                                               (let ((__tmp74471
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c70023_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c70017_
                                                       __tmp74471))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp74470
                                                  _gsc-cc-opts70029_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp74469))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp74468))))
                     (declare (not safe))
                     (cons '"-obj" __tmp74467))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp74472 __tmp74466))
            (let ((__tmp74478 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp74473
                   (let ((__tmp74474
                          (let ((__tmp74475
                                 (let ((__tmp74476
                                        (let ((__tmp74477
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o70025_
                                                       _gcc-ld-opts70031_))))
                                          (declare (not safe))
                                          (cons _path-o70019_ __tmp74477))))
                                   (declare (not safe))
                                   (cons _link-path70021_ __tmp74476))))
                            (declare (not safe))
                            (cons '"-o" __tmp74475))))
                     (declare (not safe))
                     (cons '"-shared" __tmp74474))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp74478
               __tmp74473))
            (for-each
             delete-file
             (let ((__tmp74479
                    (let ((__tmp74480
                           (let ((__tmp74481
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o70025_ '()))))
                             (declare (not safe))
                             (cons _link-path-c70023_ __tmp74481))))
                      (declare (not safe))
                      (cons _path-o70019_ __tmp74480))))
               (declare (not safe))
               (cons _path-c70017_ __tmp74479)))))))
    (define gxc#compile-output-file
      (lambda (_ctx69982_ _n69983_ _ext69984_)
        (letrec ((_module-relative-path69986_
                  (lambda (_ctx70008_)
                    (path-strip-directory
                     (let ((__tmp74482
                            (##structure-ref
                             _ctx70008_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp74482)))))
                 (_module-source-directory69987_
                  (lambda (_ctx70004_)
                    (path-directory
                     (let ((_mpath70006_
                            (##structure-ref
                             _ctx70004_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let () (declare (not safe)) (string? _mpath70006_))
                           _mpath70006_
                           (let ()
                             (declare (not safe))
                             (last _mpath70006_)))))))
                 (_section-string69988_
                  (lambda (_n70002_)
                    (if (let () (declare (not safe)) (number? _n70002_))
                        (number->string _n70002_)
                        (if (let () (declare (not safe)) (symbol? _n70002_))
                            (symbol->string _n70002_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n70002_))
                                _n70002_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n70002_)))))))
                 (_file-name69989_
                  (lambda (_path70000_)
                    (if _n69983_
                        (string-append
                         _path70000_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string69988_ _n69983_))
                         _ext69984_)
                        (string-append _path70000_ _ext69984_))))
                 (_file-path69990_
                  (lambda ()
                    (let ((_$e69995_ (gxc#current-compile-output-dir)))
                      (if _$e69995_
                          ((lambda (_outdir69998_)
                             (path-expand
                              (let ((__tmp74484
                                     (let ((__tmp74485
                                            (##structure-ref
                                             _ctx69982_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp74485))))
                                (declare (not safe))
                                (_file-name69989_ __tmp74484))
                              _outdir69998_))
                           _$e69995_)
                          (path-expand
                           (let ((__tmp74483
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path69986_ _ctx69982_))))
                             (declare (not safe))
                             (_file-name69989_ __tmp74483))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory69987_ _ctx69982_))))))))
          (let ((_path69992_ (let () (declare (not safe)) (_file-path69990_))))
            (let ((__tmp74486 (path-directory _path69992_)))
              (declare (not safe))
              (create-directory* __tmp74486))
            _path69992_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx69965_)
        (letrec ((_file-name69967_
                  (lambda (_id69980_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id69980_))
                     '".scm")))
                 (_file-path69968_
                  (lambda ()
                    (let* ((_file69973_
                            (let ((__tmp74487
                                   (##structure-ref
                                    _ctx69965_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name69967_ __tmp74487)))
                           (_$e69975_ (gxc#current-compile-output-dir)))
                      (if _$e69975_
                          ((lambda (_outdir69978_)
                             (path-expand
                              _file69973_
                              (path-expand '"static" _outdir69978_)))
                           _$e69975_)
                          (path-expand _file69973_ '"static"))))))
          (let ((_path69970_ (let () (declare (not safe)) (_file-path69968_))))
            (let ((__tmp74488 (path-directory _path69970_)))
              (declare (not safe))
              (create-directory* __tmp74488))
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
                (let ((__tmp74489 (symbol->string _idstr69945_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp74489))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr69945_))))))
    (define gxc#invoke__%
      (lambda (_g74490_
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
          (let ((__tmp74491
                 (let ()
                   (declare (not safe))
                   (cons _program69917_ _args69918_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp74491))
          (let ((_proc69924_
                 (open-process
                  (let ((__tmp74492
                         (let ((__tmp74493
                                (let ((__tmp74494
                                       (let ((__tmp74495
                                              (let ((__tmp74496
                                                     (let ((__tmp74497
                                                            (let ((__tmp74498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection69922_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp74498))))
               (declare (not safe))
               (cons _stdout-redirection69920_ __tmp74497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp74496))))
                                         (declare (not safe))
                                         (cons _args69918_ __tmp74495))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp74494))))
                           (declare (not safe))
                           (cons _program69917_ __tmp74493))))
                    (declare (not safe))
                    (cons 'path: __tmp74492)))))
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
        (let ((__tmp74500
               (lambda (_exn69904_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn69904_))
                     (let ((__tmp74501
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn69904_))))
                       (declare (not safe))
                       (raise __tmp74501))
                     (let () (declare (not safe)) (raise _exn69904_)))))
              (__tmp74499 (lambda () (thread-join! _thread69902_))))
          (declare (not safe))
          (with-catch __tmp74500 __tmp74499))))))
