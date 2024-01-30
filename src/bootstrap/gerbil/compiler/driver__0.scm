(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1704735502)
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
      (lambda (_path71148_ _fun71149_)
        (with-output-to-file
         (let ((__tmp74155
                (let ()
                  (declare (not safe))
                  (cons _path71148_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp74155))
         _fun71149_)))
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
      (lambda (_gerbil-libdir71143_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir71143_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/system"
        "gerbil/runtime/loader"
        "gerbil/runtime/control"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
        "gerbil/runtime/error"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir71141_) (delete-file-or-directory _dir71141_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath71115_ _opts71116_)
        (if (let () (declare (not safe)) (string? _srcpath71115_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath71115_)))
        (let ((_outdir71118_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts71116_)))
              (_invoke-gsc?71119_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts71116_)))
              (_gsc-options71120_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts71116_)))
              (_keep-scm?71121_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts71116_)))
              (_verbosity71122_
               (let () (declare (not safe)) (pgetq 'verbose: _opts71116_)))
              (_optimize71123_
               (let () (declare (not safe)) (pgetq 'optimize: _opts71116_)))
              (_debug71124_
               (let () (declare (not safe)) (pgetq 'debug: _opts71116_)))
              (_gen-ssxi71125_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts71116_))))
          (if _outdir71118_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir71118_))))
              '#!void)
          (if _optimize71123_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let () (declare (not safe)) (gxc#optimizer-info-init!))))
              '#!void)
          (let ((__tmp74157
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath71115_))
                   (let ((__tmp74158
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath71115_))))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp74158))))
                (__tmp74156
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp74157
             gxc#current-compile-output-dir
             _outdir71118_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?71119_
             gxc#current-compile-gsc-options
             _gsc-options71120_
             gxc#current-compile-keep-scm
             _keep-scm?71121_
             gxc#current-compile-verbose
             _verbosity71122_
             gxc#current-compile-optimize
             _optimize71123_
             gxc#current-compile-debug
             _debug71124_
             gxc#current-compile-generate-ssxi
             _gen-ssxi71125_
             gxc#current-compile-timestamp
             __tmp74156
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath71134_)
        (let ((_opts71136_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath71134_ _opts71136_))))
    (define gxc#compile-module
      (lambda _g74160_
        (let ((_g74159_ (let () (declare (not safe)) (##length _g74160_))))
          (cond ((let () (declare (not safe)) (##fx= _g74159_ 1))
                 (apply (lambda (_srcpath71134_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath71134_)))
                        _g74160_))
                ((let () (declare (not safe)) (##fx= _g74159_ 2))
                 (apply (lambda (_srcpath71138_ _opts71139_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath71138_
                             _opts71139_)))
                        _g74160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g74160_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath71091_ _opts71092_)
        (if (let () (declare (not safe)) (string? _srcpath71091_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath71091_)))
        (let ((_outdir71094_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts71092_)))
              (_invoke-gsc?71095_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts71092_)))
              (_gsc-options71096_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts71092_)))
              (_keep-scm?71097_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts71092_)))
              (_verbosity71098_
               (let () (declare (not safe)) (pgetq 'verbose: _opts71092_)))
              (_debug71099_
               (let () (declare (not safe)) (pgetq 'debug: _opts71092_))))
          (if _outdir71094_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir71094_))))
              '#!void)
          (let ((__tmp74162
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath71091_))
                   (let ((__tmp74163
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath71091_))))))
                     (declare (not safe))
                     (gxc#compile-executable-module __tmp74163 _opts71092_))))
                (__tmp74161
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp74162
             gxc#current-compile-output-dir
             _outdir71094_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?71095_
             gxc#current-compile-gsc-options
             _gsc-options71096_
             gxc#current-compile-keep-scm
             _keep-scm?71097_
             gxc#current-compile-verbose
             _verbosity71098_
             gxc#current-compile-debug
             _debug71099_
             gxc#current-compile-timestamp
             __tmp74161
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath71107_)
        (let ((_opts71109_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath71107_ _opts71109_))))
    (define gxc#compile-exe
      (lambda _g74165_
        (let ((_g74164_ (let () (declare (not safe)) (##length _g74165_))))
          (cond ((let () (declare (not safe)) (##fx= _g74164_ 1))
                 (apply (lambda (_srcpath71107_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath71107_)))
                        _g74165_))
                ((let () (declare (not safe)) (##fx= _g74164_ 2))
                 (apply (lambda (_srcpath71111_ _opts71112_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath71111_ _opts71112_)))
                        _g74165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g74165_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx71087_ _opts71088_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts71088_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx71087_
               _opts71088_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx71087_
               _opts71088_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx70970_ _opts70971_)
        (letrec ((_generate-stub70973_
                  (lambda (_builtin-modules71083_)
                    (let ((_mod-main71085_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx70970_ 'main))))
                      (write (let ((__tmp74166
                                    (let ((__tmp74167
                                           (let ((__tmp74168
                                                  (let ((__tmp74169
                                                         (let ((__tmp74171
                                                                (let ((__tmp74172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules71083_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp74172)))
                       (__tmp74170
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp74171 __tmp74170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp74169))))
                                             (declare (not safe))
                                             (cons __tmp74168 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp74167))))
                               (declare (not safe))
                               (cons 'define __tmp74166)))
                      (write (let ((__tmp74173
                                    (let ((__tmp74212
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp74174
                                           (let ((__tmp74175
                                                  (let ((__tmp74176
                                                         (let ((__tmp74200
                                                                (let ((__tmp74201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp74202
                                      (let ((__tmp74210
                                             (let ((__tmp74211
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp74211)))
                                            (__tmp74203
                                             (let ((__tmp74204
                                                    (let ((__tmp74205
                                                           (let ((__tmp74206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp74207
                                 (let ((__tmp74208
                                        (let ((__tmp74209
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp74209 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp74208))))
                            (declare (not safe))
                            (cons __tmp74207 '()))))
                     (declare (not safe))
                     (cons _mod-main71085_ __tmp74206))))
              (declare (not safe))
              (cons 'apply __tmp74205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp74204 '()))))
                                        (declare (not safe))
                                        (cons __tmp74210 __tmp74203))))
                                 (declare (not safe))
                                 (cons '() __tmp74202))))
                          (declare (not safe))
                          (cons 'lambda __tmp74201)))
                       (__tmp74177
                        (let ((__tmp74178
                               (let ((__tmp74179
                                      (let ((__tmp74180
                                             (let ((__tmp74191
                                                    (let ((__tmp74192
                                                           (let ((__tmp74193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp74194
                                 (let ((__tmp74195
                                        (let ((__tmp74196
                                               (let ((__tmp74197
                                                      (let ((__tmp74198
                                                             (let ((__tmp74199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp74199 '()))))
                (declare (not safe))
                (cons 'force-output __tmp74198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp74197 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp74196))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp74195))))
                            (declare (not safe))
                            (cons __tmp74194 '()))))
                     (declare (not safe))
                     (cons 'void __tmp74193))))
              (declare (not safe))
              (cons 'with-catch __tmp74192)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp74181
                                                    (let ((__tmp74182
                                                           (let ((__tmp74183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp74184
                                 (let ((__tmp74185
                                        (let ((__tmp74186
                                               (let ((__tmp74187
                                                      (let ((__tmp74188
                                                             (let ((__tmp74189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp74190
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp74190 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp74189))))
                (declare (not safe))
                (cons __tmp74188 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp74187))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp74186))))
                                   (declare (not safe))
                                   (cons __tmp74185 '()))))
                            (declare (not safe))
                            (cons 'void __tmp74184))))
                     (declare (not safe))
                     (cons 'with-catch __tmp74183))))
              (declare (not safe))
              (cons __tmp74182 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp74191 __tmp74181))))
                                        (declare (not safe))
                                        (cons '() __tmp74180))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp74179))))
                          (declare (not safe))
                          (cons __tmp74178 '()))))
                   (declare (not safe))
                   (cons __tmp74200 __tmp74177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp74176))))
                                             (declare (not safe))
                                             (cons __tmp74175 '()))))
                                      (declare (not safe))
                                      (cons __tmp74212 __tmp74174))))
                               (declare (not safe))
                               (cons 'define __tmp74173)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts70974_
                  (lambda (_libgerbil71081_)
                    (call-with-input-file
                     (string-append _libgerbil71081_ '".ldd")
                     read)))
                 (_replace-extension70975_
                  (lambda (_path71078_ _ext71079_)
                    (string-append
                     (path-strip-extension _path71078_)
                     _ext71079_)))
                 (_not-exclude-module?70976_
                  (lambda (_ctx71074_)
                    (let ((_id-str71076_
                           (symbol->string
                            (##structure-ref
                             _ctx71074_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp74214
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"gerbil/" _id-str71076_))))
                            (declare (not safe))
                            (not __tmp74214))
                          (let ((__tmp74213
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str71076_))))
                            (declare (not safe))
                            (not __tmp74213))
                          '#f))))
                 (_not-file-empty?70977_
                  (lambda (_path71072_)
                    (let ((__tmp74215
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path71072_))))
                      (declare (not safe))
                      (not __tmp74215))))
                 (_compile-stub70978_
                  (lambda (_output-scm70985_ _output-bin70986_)
                    (let* ((_gerbil-home70988_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_gerbil-libdir70990_
                            (path-expand '"lib" _gerbil-home70988_))
                           (_gerbil-staticdir70992_
                            (path-expand '"static" _gerbil-libdir70990_))
                           (_gxlink70994_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir70990_))
                           (_tmp70996_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path71000_
                            (lambda (_f70998_)
                              (path-expand
                               (path-strip-directory _f70998_)
                               _tmp70996_)))
                           (_deps71002_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx70970_)))
                           (_deps71004_
                            (filter _not-exclude-module?70976_ _deps71002_))
                           (_src-deps-scm71006_
                            (map gxc#find-static-module-file _deps71004_))
                           (_src-deps-scm71008_
                            (filter _not-file-empty?70977_
                                    _src-deps-scm71006_))
                           (_src-deps-scm71010_
                            (map path-expand _src-deps-scm71008_))
                           (_deps-scm71012_
                            (map _tmp-path71000_ _src-deps-scm71010_))
                           (_deps-c71018_
                            (map (lambda (_g7101371015_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension70975_
                                      _g7101371015_
                                      '".c")))
                                 _deps-scm71012_))
                           (_deps-o71024_
                            (map (lambda (_g7101971021_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension70975_
                                      _g7101971021_
                                      '".o")))
                                 _deps-scm71012_))
                           (_src-bin-scm71026_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx70970_)))
                           (_src-bin-scm71028_
                            (path-expand _src-bin-scm71026_))
                           (_bin-scm71030_
                            (let ()
                              (declare (not safe))
                              (_tmp-path71000_ _src-bin-scm71028_)))
                           (_bin-c71032_
                            (let ()
                              (declare (not safe))
                              (_replace-extension70975_ _bin-scm71030_ '".c")))
                           (_bin-o71034_
                            (let ()
                              (declare (not safe))
                              (_replace-extension70975_ _bin-scm71030_ '".o")))
                           (_output-bin71036_ (path-expand _output-bin70986_))
                           (_output-scm71038_ (path-expand _output-scm70985_))
                           (_output-c71040_
                            (let ()
                              (declare (not safe))
                              (_replace-extension70975_
                               _output-scm71038_
                               '".c")))
                           (_output-o71042_
                            (let ()
                              (declare (not safe))
                              (_replace-extension70975_
                               _output-scm71038_
                               '".o")))
                           (_output_-c71044_
                            (let ()
                              (declare (not safe))
                              (_replace-extension70975_
                               _output-scm71038_
                               '"_.c")))
                           (_output_-o71046_
                            (let ()
                              (declare (not safe))
                              (_replace-extension70975_
                               _output-scm71038_
                               '"_.o")))
                           (_gsc-link-opts71048_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts71050_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts71052_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir70992_)))
                           (_output-ld-opts71054_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a71056_
                            (path-expand '"libgerbil.a" _gerbil-libdir70990_))
                           (_libgerbil.so71058_
                            (path-expand '"libgerbil.so" _gerbil-libdir70990_))
                           (_libgerbil-ld-opts71060_
                            (if (file-exists? _libgerbil.so71058_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts70974_
                                   _libgerbil.so71058_))
                                (if (file-exists? _libgerbil.a71056_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts70974_
                                       _libgerbil.a71056_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a71056_
                                       _libgerbil.so71058_)))))
                           (_rpath71062_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir70990_)))
                           (_builtin-modules71066_
                            (map (lambda (_mod71064_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod71064_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx70970_ _deps71004_)))))
                      (with-lock
                       gxc#+driver-mutex+
                       (lambda ()
                         (let ((__tmp74216 (path-directory _output-bin71036_)))
                           (declare (not safe))
                           (create-directory* __tmp74216))))
                      (let ((__tmp74217
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub70973_
                                  _builtin-modules71066_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm71038_
                         __tmp74217))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (with-lock
                             gxc#+driver-mutex+
                             (lambda () (create-directory _tmp70996_)))
                            (for-each
                             copy-file
                             _src-deps-scm71010_
                             _deps-scm71012_)
                            (copy-file _src-bin-scm71028_ _bin-scm71030_)
                            (let ((__tmp74225
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74218
                                   (let ((__tmp74219
                                          (let ((__tmp74220
                                                 (let ((__tmp74221
                                                        (let ((__tmp74222
                                                               (let ((__tmp74223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74224
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm71038_ '()))))
                                (declare (not safe))
                                (cons _bin-scm71030_ __tmp74224))))
                         (declare (not safe))
                         (foldr1 cons __tmp74223 _deps-scm71012_))))
                  (declare (not safe))
                  (foldr1 cons __tmp74222 _gsc-link-opts71048_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink70994_
                                                         __tmp74221))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp74220))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp74219))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74225
                               __tmp74218))
                            (let ((__tmp74233
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74226
                                   (let ((__tmp74227
                                          (let ((__tmp74228
                                                 (let ((__tmp74229
                                                        (let ((__tmp74230
                                                               (let ((__tmp74231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74232
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c71044_ '()))))
                                (declare (not safe))
                                (cons _output-c71040_ __tmp74232))))
                         (declare (not safe))
                         (cons _bin-c71032_ __tmp74231))))
                  (declare (not safe))
                  (foldr1 cons __tmp74230 _deps-c71018_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp74229
                                                           _gsc-static-opts71052_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp74228
                                                    _gsc-cc-opts71050_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp74227))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74233
                               __tmp74226))
                            (let ((__tmp74246
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp74234
                                   (let ((__tmp74235
                                          (let ((__tmp74236
                                                 (let ((__tmp74237
                                                        (let ((__tmp74238
                                                               (let ((__tmp74239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74240
                                     (let ((__tmp74241
                                            (let ((__tmp74242
                                                   (let ((__tmp74243
                                                          (let ((__tmp74244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp74245
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts71060_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp74245))))
                    (declare (not safe))
                    (cons _gerbil-libdir70990_ __tmp74244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L" __tmp74243))))
                                              (declare (not safe))
                                              (cons _rpath71062_ __tmp74242))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp74241
                                               _output-ld-opts71054_))))
                                (declare (not safe))
                                (cons _output_-o71046_ __tmp74240))))
                         (declare (not safe))
                         (cons _output-o71042_ __tmp74239))))
                  (declare (not safe))
                  (cons _bin-o71034_ __tmp74238))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp74237
                                                           _deps-o71024_))))
                                            (declare (not safe))
                                            (cons _output-bin71036_
                                                  __tmp74236))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp74235))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74246
                               __tmp74234))
                            (for-each
                             delete-file
                             (let ((__tmp74247
                                    (let ((__tmp74248
                                           (let ((__tmp74249
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o71046_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o71042_
                                                   __tmp74249))))
                                      (declare (not safe))
                                      (cons _output_-c71044_ __tmp74248))))
                               (declare (not safe))
                               (cons _output-c71040_ __tmp74247)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp70996_)))
                          '#!void)))))
          (let* ((_output-bin70980_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx70970_ _opts70971_)))
                 (_output-scm70982_
                  (string-append _output-bin70980_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub70978_ _output-scm70982_ _output-bin70980_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm70982_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx70795_ _opts70796_)
        (letrec ((_reset-declare70798_
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
                 (_generate-stub70799_
                  (lambda (_deps70961_)
                    (let ((_mod-main70963_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx70795_ 'main)))
                          (_reset-decl70964_
                           (let ()
                             (declare (not safe))
                             (_reset-declare70798_)))
                          (_user-decl70965_
                           (let ()
                             (declare (not safe))
                             (_user-declare70800_))))
                      (for-each
                       (lambda (_dep70967_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl70964_)
                         (newline)
                         (if _user-decl70965_
                             (begin (write _user-decl70965_) (newline))
                             '#!void)
                         (write (let ((__tmp74250
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep70967_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp74250)))
                         (newline))
                       _deps70961_)
                      (write (let ((__tmp74251
                                    (let ((__tmp74264
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp74252
                                           (let ((__tmp74260
                                                  (let ((__tmp74261
                                                         (let ((__tmp74262
                                                                (let ((__tmp74263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp74263))))
                   (declare (not safe))
                   (cons __tmp74262 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp74261)))
                                                 (__tmp74253
                                                  (let ((__tmp74254
                                                         (let ((__tmp74255
                                                                (let ((__tmp74256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp74257
                                      (let ((__tmp74258
                                             (let ((__tmp74259
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp74259 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp74258))))
                                 (declare (not safe))
                                 (cons __tmp74257 '()))))
                          (declare (not safe))
                          (cons _mod-main70963_ __tmp74256))))
                   (declare (not safe))
                   (cons 'apply __tmp74255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74254 '()))))
                                             (declare (not safe))
                                             (cons __tmp74260 __tmp74253))))
                                      (declare (not safe))
                                      (cons __tmp74264 __tmp74252))))
                               (declare (not safe))
                               (cons 'define __tmp74251)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare70800_
                  (lambda ()
                    (let* ((_gsc-opts70866_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts70796_)))
                           (_gsc-prelude70868_
                            (if _gsc-opts70866_
                                (member '"-prelude" _gsc-opts70866_)
                                '#f))
                           (_gsc-prelude70870_
                            (if _gsc-prelude70868_
                                (read (open-input-string
                                       (cadr _gsc-prelude70868_)))
                                '#f)))
                      (let _lp70873_ ((_rest70875_
                                       (let ()
                                         (declare (not safe))
                                         (cons _gsc-prelude70870_ '())))
                                      (_user-decls70876_ '()))
                        (let* ((_rest7087770885_ _rest70875_)
                               (_else7087970893_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls70876_))
                                      '#f
                                      (let ((__tmp74265
                                             (reverse _user-decls70876_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp74265)))))
                               (_K7088170949_
                                (lambda (_rest70896_ _expr70897_)
                                  (let* ((_expr7089870910_ _expr70897_)
                                         (_else7090170918_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp70873_
                                               _rest70896_
                                               _user-decls70876_)))))
                                    (let ((_K7090670939_
                                           (lambda (_decls70937_)
                                             (let ((__tmp74266
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls70876_
                                                              _decls70937_))))
                                               (declare (not safe))
                                               (_lp70873_
                                                _rest70896_
                                                __tmp74266))))
                                          (_K7090370924_
                                           (lambda (_exprs70922_)
                                             (let ((__tmp74267
                                                    (append _exprs70922_
                                                            _rest70896_)))
                                               (declare (not safe))
                                               (_lp70873_
                                                __tmp74267
                                                _user-decls70876_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr7089870910_))
                                          (let ((_tl7090870944_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr7089870910_)))
                                                (_hd7090770942_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr7089870910_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd7090770942_
                                                         'declare))
                                                (let ((_decls70947_
                                                       _tl7090870944_))
                                                  (declare (not safe))
                                                  (_K7090670939_ _decls70947_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd7090770942_
                                                             'begin))
                                                    (let ((_exprs70932_
                                                           _tl7090870944_))
                                                      (declare (not safe))
                                                      (_K7090370924_
                                                       _exprs70932_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else7090170918_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else7090170918_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7087770885_))
                              (let ((_hd7088270952_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7087770885_)))
                                    (_tl7088370954_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7087770885_))))
                                (let* ((_expr70957_ _hd7088270952_)
                                       (_rest70959_ _tl7088370954_))
                                  (declare (not safe))
                                  (_K7088170949_ _rest70959_ _expr70957_)))
                              (let ()
                                (declare (not safe))
                                (_else7087970893_))))))))
                 (_compile-stub70801_
                  (lambda (_output-scm70808_ _output-bin70809_)
                    (let* ((_gerbil-home70811_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_gerbil-libdir70813_
                            (path-expand '"lib" _gerbil-home70811_))
                           (_runtime70815_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp70817_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home70811_))
                           (_include-gambit-sharp70819_
                            (string-append
                             '"(include \""
                             _gambit-sharp70817_
                             '"\")"))
                           (_bin-scm70821_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx70795_)))
                           (_deps70823_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx70795_)))
                           (_deps70825_
                            (map gxc#find-static-module-file _deps70823_))
                           (_deps70830_
                            (filter (lambda (_$obj70827_)
                                      (let ((__tmp74268
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty? _$obj70827_))))
                                        (declare (not safe))
                                        (not __tmp74268)))
                                    _deps70825_))
                           (_deps70834_
                            (filter (lambda (_f70832_)
                                      (let ((__tmp74269
                                             (member _f70832_ _runtime70815_)))
                                        (declare (not safe))
                                        (not __tmp74269)))
                                    _deps70830_))
                           (_output-base70836_
                            (string-append
                             (path-strip-extension _output-scm70808_)))
                           (_output-c70838_
                            (string-append _output-base70836_ '".c"))
                           (_output-o70840_
                            (string-append _output-base70836_ '".o"))
                           (_output-c_70842_
                            (string-append _output-base70836_ '"_.c"))
                           (_output-o_70844_
                            (string-append _output-base70836_ '"_.o"))
                           (_gsc-link-opts70846_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts70848_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts70850_
                            (let ((__tmp74270
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir70813_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp74270)))
                           (_output-ld-opts70852_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros70854_
                            (if (gerbil-runtime-smp?)
                                (let ((__tmp74272
                                       (let ((__tmp74273
                                              (let ((__tmp74274
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp70819_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp74274))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp74273))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp74272))
                                (let ((__tmp74271
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp70819_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp74271))))
                           (_gsc-link-opts70856_
                            (append _gsc-link-opts70846_ _gsc-gx-macros70854_))
                           (_rpath70858_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir70813_)))
                           (_default-ld-options70860_
                            (let ((__tmp74275
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp74275))))
                      (with-lock
                       gxc#+driver-mutex+
                       (lambda ()
                         (let ((__tmp74276 (path-directory _output-bin70809_)))
                           (declare (not safe))
                           (create-directory* __tmp74276))))
                      (let ((__tmp74277
                             (lambda ()
                               (let ((__tmp74278
                                      (let ((__tmp74279
                                             (let ((__tmp74280
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm70821_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp74280
                                                       _deps70834_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp74279
                                                _runtime70815_))))
                                 (declare (not safe))
                                 (_generate-stub70799_ __tmp74278)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm70808_
                         __tmp74277))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp74286
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74281
                                   (let ((__tmp74282
                                          (let ((__tmp74283
                                                 (let ((__tmp74284
                                                        (let ((__tmp74285
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm70808_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp74285 _gsc-link-opts70856_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_70842_
                                                         __tmp74284))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp74283))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp74282))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74286
                               __tmp74281))
                            (let ((__tmp74292
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74287
                                   (let ((__tmp74288
                                          (let ((__tmp74289
                                                 (let ((__tmp74290
                                                        (let ((__tmp74291
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_70842_ '()))))
                  (declare (not safe))
                  (cons _output-c70838_ __tmp74291))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp74290
                                                           _gsc-static-opts70850_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp74289
                                                    _gsc-cc-opts70848_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp74288))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74292
                               __tmp74287))
                            (let ((__tmp74302
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp74293
                                   (let ((__tmp74294
                                          (let ((__tmp74295
                                                 (let ((__tmp74296
                                                        (let ((__tmp74297
                                                               (let ((__tmp74298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74299
                                     (let ((__tmp74300
                                            (let ((__tmp74301
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options70860_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir70813_
                                                    __tmp74301))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp74300))))
                                (declare (not safe))
                                (cons _rpath70858_ __tmp74299))))
                         (declare (not safe))
                         (foldr1 cons __tmp74298 _output-ld-opts70852_))))
                  (declare (not safe))
                  (cons _output-o_70844_ __tmp74297))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o70840_
                                                         __tmp74296))))
                                            (declare (not safe))
                                            (cons _output-bin70809_
                                                  __tmp74295))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp74294))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74302
                               __tmp74293)))
                          '#!void)))))
          (let* ((_output-bin70803_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx70795_ _opts70796_)))
                 (_output-scm70805_
                  (string-append _output-bin70803_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub70801_ _output-scm70805_ _output-bin70803_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm70805_))))))
    (define gxc#find-export-binding
      (lambda (_ctx70745_ _id70746_)
        (let ((_$e70792_
               (let ((__tmp74304
                      (lambda (_e7074770749_)
                        (let* ((_g7075170761_ _e7074770749_)
                               (_else7075370769_ (lambda () '#f))
                               (_K7075570773_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g7075170761_
                                 'gx#module-export::t))
                              (let* ((_e7075670776_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g7075170761_ '1)))
                                     (_e7075770779_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g7075170761_ '2)))
                                     (_e7075870782_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g7075170761_ '3))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e7075870782_ '0))
                                    (let ((_e7075970785_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g7075170761_ '4))))
                                      (if ((lambda (_g7078770789_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g7078770789_ _id70746_)))
                                           _e7075970785_)
                                          (let ()
                                            (declare (not safe))
                                            (_K7075570773_))
                                          (let ()
                                            (declare (not safe))
                                            (_else7075370769_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else7075370769_))))
                              (let ()
                                (declare (not safe))
                                (_else7075370769_))))))
                     (__tmp74303
                      (##structure-ref
                       _ctx70745_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp74304 __tmp74303))))
          (if _$e70792_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e70792_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx70737_ _id70738_)
        (let ((_$e70740_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx70737_ _id70738_))))
          (if _$e70740_
              ((lambda (_bind70743_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind70743_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id70738_)))
                 (##structure-ref _bind70743_ '1 gx#binding::t '#f))
               _$e70740_)
              (let ((__tmp74305
                     (##structure-ref
                      _ctx70737_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp74305
                 _id70738_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx70624_)
        (letrec* ((_ht70626_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template70627_
                   (lambda (_in70689_ _phi70690_)
                     (let ((_iphi70692_
                            (fx+ _phi70690_
                                 (##direct-structure-ref
                                  _in70689_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports70693_
                            (##structure-ref
                             (##direct-structure-ref
                              _in70689_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp70695_ ((_rest70697_ _imports70693_)
                                       (_r70698_ '()))
                         (let* ((_rest7069970707_ _rest70697_)
                                (_else7070170715_ (lambda () _r70698_))
                                (_K7070370725_
                                 (lambda (_rest70718_ _in70719_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in70719_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi70692_))
                                           (let ((__tmp74312
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in70719_
                                                          _r70698_))))
                                             (declare (not safe))
                                             (_lp70695_
                                              _rest70718_
                                              __tmp74312))
                                           (let ()
                                             (declare (not safe))
                                             (_lp70695_ _rest70718_ _r70698_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in70719_
                                              'gx#module-import::t))
                                           (let ((_iphi70721_
                                                  (fx+ _phi70690_
                                                       (##direct-structure-ref
                                                        _in70719_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi70721_))
                                                 (let ((__tmp74310
                                                        (let ((__tmp74311
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in70719_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp74311 _r70698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp70695_
                                                    _rest70718_
                                                    __tmp74310))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp70695_
                                                    _rest70718_
                                                    _r70698_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in70719_
                                                  'gx#import-set::t))
                                               (let ((_xphi70723_
                                                      (fx+ _iphi70692_
                                                           (##direct-structure-ref
                                                            _in70719_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi70723_))
                                                     (let ((__tmp74308
                                                            (let ((__tmp74309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in70719_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp74309 _r70698_))))
               (declare (not safe))
               (_lp70695_ _rest70718_ __tmp74308))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi70723_)
                                                         (let ((__tmp74306
                                                                (let ((__tmp74307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template70627_
                                  _in70719_
                                  _iphi70692_))))
                          (declare (not safe))
                          (foldl1 cons _r70698_ __tmp74307))))
                   (declare (not safe))
                   (_lp70695_ _rest70718_ __tmp74306))
                 (let ()
                   (declare (not safe))
                   (_lp70695_ _rest70718_ _r70698_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp70695_
                                                  _rest70718_
                                                  _r70698_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest7069970707_))
                               (let ((_hd7070470728_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest7069970707_)))
                                     (_tl7070570730_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest7069970707_))))
                                 (let* ((_in70733_ _hd7070470728_)
                                        (_rest70735_ _tl7070570730_))
                                   (declare (not safe))
                                   (_K7070370725_ _rest70735_ _in70733_)))
                               (let ()
                                 (declare (not safe))
                                 (_else7070170715_))))))))
                  (_find-deps70628_
                   (lambda (_rest70635_ _deps70636_)
                     (let* ((_rest7063770645_ _rest70635_)
                            (_else7063970653_ (lambda () _deps70636_))
                            (_K7064170677_
                             (lambda (_rest70656_ _hd70657_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd70657_
                                      'gx#module-context::t))
                                   (let ((_id70659_
                                          (##structure-ref
                                           _hd70657_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports70660_
                                          (##structure-ref
                                           _hd70657_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref _ht70626_ _id70659_ '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps70628_
                                            _rest70656_
                                            _deps70636_))
                                         (let ((_$e70662_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd70657_))))
                                           (if _$e70662_
                                               ((lambda (_pre70665_)
                                                  (let ((_xdeps70667_
                                                         (let ((__tmp74325
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre70665_ _imports70660_))))
                   (declare (not safe))
                   (_find-deps70628_ __tmp74325 _deps70636_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht70626_
                                                       _id70659_
                                                       _hd70657_))
                                                    (let ((__tmp74326
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd70657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps70667_))))
              (declare (not safe))
              (_find-deps70628_ _rest70656_ __tmp74326))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e70662_)
                                               (let ((_xdeps70669_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps70628_
                                                         _imports70660_
                                                         _deps70636_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht70626_
                                                    _id70659_
                                                    _hd70657_))
                                                 (let ((__tmp74324
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd70657_
                                                                _xdeps70669_))))
                                                   (declare (not safe))
                                                   (_find-deps70628_
                                                    _rest70656_
                                                    __tmp74324)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd70657_
                                          'gx#prelude-context::t))
                                       (let ((_id70671_
                                              (##structure-ref
                                               _hd70657_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht70626_
                                                _id70671_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps70628_
                                                _rest70656_
                                                _deps70636_))
                                             (let ((_xdeps70673_
                                                    (let ((__tmp74322
                                                           (##structure-ref
                                                            _hd70657_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps70628_
                                                       __tmp74322
                                                       _deps70636_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht70626_
                                                      _id70671_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps70628_
                                                      _rest70656_
                                                      _xdeps70673_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht70626_
                                                        _id70671_
                                                        _hd70657_))
                                                     (let ((__tmp74323
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd70657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps70673_))))
               (declare (not safe))
               (_find-deps70628_ _rest70656_ __tmp74323)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd70657_
                                              'gx#module-import::t))
                                           (if (let ((__tmp74321
                                                      (##direct-structure-ref
                                                       _hd70657_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp74321))
                                               (let ((__tmp74319
                                                      (let ((__tmp74320
                                                             (##direct-structure-ref
                                                              _hd70657_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp74320
                                                              _rest70656_))))
                                                 (declare (not safe))
                                                 (_find-deps70628_
                                                  __tmp74319
                                                  _deps70636_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps70628_
                                                  _rest70656_
                                                  _deps70636_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd70657_
                                                  'gx#module-export::t))
                                               (let ((__tmp74317
                                                      (let ((__tmp74318
                                                             (##direct-structure-ref
                                                              _hd70657_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp74318
                                                              _rest70656_))))
                                                 (declare (not safe))
                                                 (_find-deps70628_
                                                  __tmp74317
                                                  _deps70636_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd70657_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp74316
                                                              (##direct-structure-ref
                                                               _hd70657_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp74316))
                                                       (let ((__tmp74314
                                                              (let ((__tmp74315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd70657_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp74315 _rest70656_))))
                 (declare (not safe))
                 (_find-deps70628_ __tmp74314 _deps70636_))
               (if (fxpositive?
                    (##direct-structure-ref _hd70657_ '2 gx#import-set::t '#f))
                   (let* ((_xdeps70675_
                           (let ()
                             (declare (not safe))
                             (_import-set-template70627_ _hd70657_ '0)))
                          (__tmp74313
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest70656_ _xdeps70675_))))
                     (declare (not safe))
                     (_find-deps70628_ __tmp74313 _deps70636_))
                   (let ()
                     (declare (not safe))
                     (_find-deps70628_ _rest70656_ _deps70636_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd70657_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest7063770645_))
                           (let ((_hd7064270680_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest7063770645_)))
                                 (_tl7064370682_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest7063770645_))))
                             (let* ((_hd70685_ _hd7064270680_)
                                    (_rest70687_ _tl7064370682_))
                               (declare (not safe))
                               (_K7064170677_ _rest70687_ _hd70685_)))
                           (let ()
                             (declare (not safe))
                             (_else7063970653_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp74327
                                  (let ((_$e70630_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx70624_))))
                                    (if _$e70630_
                                        ((lambda (_pre70633_)
                                           (let ((__tmp74328
                                                  (##structure-ref
                                                   _ctx70624_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre70633_ __tmp74328)))
                                         _$e70630_)
                                        (##structure-ref
                                         _ctx70624_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps70628_ __tmp74327 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx70555_)
        (let* ((_context-id70557_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx70555_
                       'gx#module-context::t))
                    (##structure-ref _ctx70555_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx70555_)))
               (_scm70559_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id70557_))
                 '".scm"))
               (_dirs70561_ (gx#current-expander-module-library-path))
               (_dirs70567_
                (let ((_user-libpath70563_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath70563_
                      (let ((_user-libpath70565_
                             (path-expand '"lib" _user-libpath70563_)))
                        (if (member _user-libpath70565_ _dirs70561_)
                            _dirs70561_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath70565_ _dirs70561_))))
                      _dirs70561_)))
               (_dirs70576_
                (let ((_$e70569_ (gxc#current-compile-output-dir)))
                  (if _$e70569_
                      ((lambda (_g7057170573_)
                         (let ()
                           (declare (not safe))
                           (cons _g7057170573_ _dirs70567_)))
                       _$e70569_)
                      _dirs70567_)))
               (_dirs70582_
                (map (lambda (_g7057770579_)
                       (path-expand '"static" _g7057770579_))
                     _dirs70576_)))
          (let _lp70585_ ((_rest70587_ _dirs70582_))
            (let* ((_rest7058870596_ _rest70587_)
                   (_else7059070604_
                    (lambda ()
                      (let ((__tmp74329
                             (##structure-ref
                              _ctx70555_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp74329
                         _scm70559_))))
                   (_K7059270612_
                    (lambda (_rest70607_ _dir70608_)
                      (let ((_path70610_ (path-expand _scm70559_ _dir70608_)))
                        (if (file-exists? _path70610_)
                            _path70610_
                            (let ()
                              (declare (not safe))
                              (_lp70585_ _rest70607_)))))))
              (if (let () (declare (not safe)) (##pair? _rest7058870596_))
                  (let ((_hd7059370615_
                         (let ()
                           (declare (not safe))
                           (##car _rest7058870596_)))
                        (_tl7059470617_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7058870596_))))
                    (let* ((_dir70620_ _hd7059370615_)
                           (_rest70622_ _tl7059470617_))
                      (declare (not safe))
                      (_K7059270612_ _rest70622_ _dir70620_)))
                  (let () (declare (not safe)) (_else7059070604_))))))))
    (define gxc#file-empty?
      (lambda (_path70553_)
        (let ((__tmp74330 (file-info-size (file-info _path70553_ '#t))))
          (declare (not safe))
          (zero? __tmp74330))))
    (define gxc#compile-top-module
      (lambda (_ctx70542_)
        (let ((__tmp74334
               (lambda ()
                 (let ((__tmp74335
                        (##structure-ref
                         _ctx70542_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp74335))
                 (if (gxc#current-compile-optimize)
                     (with-lock
                      gxc#+driver-mutex+
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gxc#optimize! _ctx70542_))))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx70542_))
                 (if (let ((__tmp74338
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx70542_))))
                       (declare (not safe))
                       (null? __tmp74338))
                     (let* ((_thr170547_
                             (let ((__tmp74336
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx70542_)))))
                               (declare (not safe))
                               (spawn __tmp74336)))
                            (_thr270550_
                             (let ((__tmp74337
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx70542_)))))
                               (declare (not safe))
                               (spawn __tmp74337))))
                       (let () (declare (not safe)) (gxc#join! _thr170547_))
                       (let () (declare (not safe)) (gxc#join! _thr270550_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx70542_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx70542_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx70542_))
                     '#!void)))
              (__tmp74333
               (let ((__obj74153 (make-object gxc#symbol-table::t '2)))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj74153))
                 __obj74153))
              (__tmp74332
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp74331 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp74334
           gx#current-expander-context
           _ctx70542_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp74333
           gxc#current-compile-runtime-sections
           __tmp74332
           gxc#current-compile-runtime-names
           __tmp74331))))
    (define gxc#collect-bindings
      (lambda (_ctx70540_)
        (let ((__tmp74339
               (##structure-ref _ctx70540_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp74339))))
    (define gxc#compile-runtime-code
      (lambda (_ctx70486_)
        (letrec ((_compile170488_
                  (lambda (_ctx70529_)
                    (let* ((_code70531_
                            (##structure-ref
                             _ctx70529_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt70535_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code70531_))
                                (let ((_idstr70533_
                                       (let ((__tmp74340
                                              (##structure-ref
                                               _ctx70529_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp74340))))
                                  (string-append _idstr70533_ '"__0"))
                                '#f)))
                      (if _rt70535_
                          (begin
                            (let ((__tmp74341
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp74341 _ctx70529_ _rt70535_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code70490_
                               _ctx70529_
                               _code70531_)))
                          (let ((_path70538_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx70529_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file _path70538_ void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code70491_
                         _ctx70529_
                         _code70531_
                         _rt70535_)))))
                 (_context-timestamp70489_
                  (lambda (_ctx70527_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx70527_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code70490_
                  (lambda (_ctx70509_ _code70510_)
                    (let* ((_lifts70512_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code70515_
                            (let ((__tmp74344
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code70510_))))
                                  (__tmp74343
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp74342
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp74344
                               gx#current-expander-context
                               _ctx70509_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts70512_
                               gxc#current-compile-marks
                               __tmp74343
                               gxc#current-compile-identifiers
                               __tmp74342)))
                           (_runtime-code70517_
                            (if (let ((__tmp74348 (unbox _lifts70512_)))
                                  (declare (not safe))
                                  (null? __tmp74348))
                                _runtime-code70515_
                                (let ((__tmp74345
                                       (let ((__tmp74347
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code70515_
                                                      '())))
                                             (__tmp74346
                                              (reverse (unbox _lifts70512_))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp74347 __tmp74346))))
                                  (declare (not safe))
                                  (cons 'begin __tmp74345))))
                           (_runtime-code70519_
                            (let ((__tmp74349
                                   (let ((__tmp74351
                                          (let ((__tmp74352
                                                 (let ((__tmp74355
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp70489_
                                                           _ctx70509_)))
                                                       (__tmp74353
                                                        (let ((__tmp74354
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp74354
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp74355
                                                         __tmp74353))))
                                            (declare (not safe))
                                            (cons 'define __tmp74352)))
                                         (__tmp74350
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code70517_ '()))))
                                     (declare (not safe))
                                     (cons __tmp74351 __tmp74350))))
                              (declare (not safe))
                              (cons 'begin __tmp74349)))
                           (_scm070521_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx70509_
                               '0
                               '".scm"))))
                      (let ((_scms70524_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx70509_))))
                        (let ((__tmp74356
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm070521_
                                    _runtime-code70519_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp74356
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms70524_)
                            (delete-file _scms70524_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm070521_
                           '" => "
                           _scms70524_))
                        (copy-file _scm070521_ _scms70524_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm070521_))))))
                 (_generate-loader-code70491_
                  (lambda (_ctx70498_ _code70499_ _rt70500_)
                    (let* ((_loader-code70503_
                            (let ((__tmp74357
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code70499_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp74357
                               gx#current-expander-context
                               _ctx70498_)))
                           (_loader-code70505_
                            (if _rt70500_
                                (let ((__tmp74358
                                       (let ((__tmp74359
                                              (let ((__tmp74360
                                                     (let ((__tmp74361
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt70500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp74361))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74360 '()))))
                                         (declare (not safe))
                                         (cons _loader-code70503_
                                               __tmp74359))))
                                  (declare (not safe))
                                  (cons 'begin __tmp74358))
                                _loader-code70503_)))
                      (let ((__tmp74362
                             (lambda ()
                               (let ((__tmp74363
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx70498_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp74363
                                  _loader-code70505_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp74362
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules70493_
                 (let ((__tmp74364
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx70486_))))
                   (declare (not safe))
                   (cons _ctx70486_ __tmp74364))))
            (for-each
             (lambda (_ctx70495_)
               (let ((__tmp74365
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile170488_ _ctx70495_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp74365
                  gxc#current-compile-decls
                  '())))
             _all-modules70493_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx70383_)
        (letrec ((_compile-ssi70385_
                  (lambda (_code70456_)
                    (let* ((_path70458_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx70383_
                               '#f
                               '".ssi")))
                           (_prelude70469_
                            (let* ((_super70460_
                                    (##structure-ref
                                     _ctx70383_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e70462_
                                    (##structure-ref
                                     _super70460_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e70462_
                                  ((lambda (_g7046470466_)
                                     (make-symbol '":" _g7046470466_))
                                   _$e70462_)
                                  ':<root>)))
                           (_ns70471_
                            (##structure-ref
                             _ctx70383_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr70473_
                            (symbol->string
                             (##structure-ref
                              _ctx70383_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg70480_
                            (let ((_$e70475_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr70473_ '#\/))))
                              (if _$e70475_
                                  ((lambda (_x70478_)
                                     (string->symbol
                                      (substring _idstr70473_ '0 _x70478_)))
                                   _$e70475_)
                                  '#f)))
                           (_rt70482_
                            (let ((__tmp74366
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp74366 _ctx70383_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path70458_))
                      (let ((__tmp74367
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude70469_))
                               (if _pkg70480_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg70480_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns70471_))
                               (newline)
                               (pretty-print _code70456_)
                               (if _rt70482_
                                   (pretty-print
                                    (let ((__tmp74368
                                           (let ((__tmp74372
                                                  (let ((__tmp74373
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp74373)))
                                                 (__tmp74369
                                                  (let ((__tmp74370
                                                         (let ((__tmp74371
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt70482_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp74371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74370 '()))))
                                             (declare (not safe))
                                             (cons __tmp74372 __tmp74369))))
                                      (declare (not safe))
                                      (cons '%#call __tmp74368)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path70458_
                         __tmp74367)))))
                 (_compile-phi70386_
                  (lambda (_part70396_)
                    (let* ((_part7039770410_ _part70396_)
                           (_E7039970414_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part7039770410_))))
                           (_K7040070425_
                            (lambda (_code70417_
                                     _n70418_
                                     _phi70419_
                                     _phi-ctx70420_)
                              (let* ((_code70423_
                                      (let ((__tmp74374
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code70417_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp74374
                                         gx#current-expander-context
                                         _phi-ctx70420_
                                         gx#current-expander-phi
                                         _phi70419_)))
                                     (__tmp74375
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx70383_
                                         _n70418_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp74375
                                 _code70423_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part7039770410_))
                          (let ((_hd7040170428_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part7039770410_)))
                                (_tl7040270430_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part7039770410_))))
                            (let ((_phi-ctx70433_ _hd7040170428_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl7040270430_))
                                  (let ((_hd7040370435_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl7040270430_)))
                                        (_tl7040470437_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl7040270430_))))
                                    (let ((_phi70440_ _hd7040370435_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7040470437_))
                                          (let ((_hd7040570442_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7040470437_)))
                                                (_tl7040670444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7040470437_))))
                                            (let ((_n70447_ _hd7040570442_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl7040670444_))
                                                  (let ((_hd7040770449_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl7040670444_)))
                                                        (_tl7040870451_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl7040670444_))))
                                                    (let ((_code70454_
                                                           _hd7040770449_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl7040870451_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K7040070425_
                                                             _code70454_
                                                             _n70447_
                                                             _phi70440_
                                                             _phi-ctx70433_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E7039970414_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E7039970414_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7039970414_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E7039970414_)))))
                          (let () (declare (not safe)) (_E7039970414_)))))))
          (let ((_g74376_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx70383_))))
            (begin
              (let ((_g74377_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g74376_)
                           (##vector-length _g74376_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g74377_ 2)))
                    (error "Context expects 2 values" _g74377_)))
              (let ((_ssi-code70388_
                     (let () (declare (not safe)) (##vector-ref _g74376_ 0)))
                    (_phi-code70389_
                     (let () (declare (not safe)) (##vector-ref _g74376_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi70385_ _ssi-code70388_))
                  (let ((_threads70394_
                         (map (lambda (_code70391_)
                                (let ((__tmp74378
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi70386_ _code70391_)))))
                                  (declare (not safe))
                                  (spawn __tmp74378)))
                              _phi-code70389_)))
                    (for-each gxc#join! _threads70394_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx70366_)
        (let* ((_path70368_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx70366_ '#f '".ssxi.ss")))
               (_code70370_
                (let ((__tmp74379
                       (##structure-ref
                        _ctx70366_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp74379)))
               (_idstr70372_
                (symbol->string
                 (##structure-ref _ctx70366_ '1 gx#expander-context::t '#f)))
               (_pkg70379_
                (let ((_$e70374_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr70372_ '#\/))))
                  (if _$e70374_
                      ((lambda (_x70377_)
                         (string->symbol (substring _idstr70372_ '0 _x70377_)))
                       _$e70374_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path70368_))
          (let ((__tmp74380
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg70379_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg70379_))
                       '#!void)
                   (newline)
                   (pretty-print _code70370_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path70368_ __tmp74380)))))
    (define gxc#generate-meta-code
      (lambda (_ctx70359_)
        (let* ((_state70361_
                (let ((__obj74154 (make-object gxc#meta-state::t '4)))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj74154 _ctx70359_))
                  __obj74154))
               (_ssi-code70363_
                (let ((__tmp74381
                       (##structure-ref
                        _ctx70359_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp74381 _state70361_))))
          (values _ssi-code70363_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state70361_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx70352_)
        (let ((_lifts70354_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp74384
                 (lambda ()
                   (let ((_code70357_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx70352_))))
                     (if (let ((__tmp74388 (unbox _lifts70354_)))
                           (declare (not safe))
                           (null? __tmp74388))
                         _code70357_
                         (let ((__tmp74385
                                (let ((__tmp74387
                                       (let ()
                                         (declare (not safe))
                                         (cons _code70357_ '())))
                                      (__tmp74386
                                       (reverse (unbox _lifts70354_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp74387 __tmp74386))))
                           (declare (not safe))
                           (cons 'begin __tmp74385))))))
                (__tmp74383
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp74382
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp74384
             gxc#current-compile-lift
             _lifts70354_
             gxc#current-compile-marks
             __tmp74383
             gxc#current-compile-identifiers
             __tmp74382)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx70348_)
        (let ((_modules70350_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp74389
                 (##structure-ref _ctx70348_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp74389 _modules70350_))
          (reverse (unbox _modules70350_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path70331_ _code70332_ _phi?70333_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path70331_))
        (let ((__tmp74390
               (lambda ()
                 (pretty-print
                  (let ((__tmp74391
                         (let ((__tmp74398
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp74392
                                (let ((__tmp74397
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp74393
                                       (let ((__tmp74396
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp74394
                                              (let ((__tmp74395
                                                     (if _phi?70333_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons '() __tmp74395))))
                                         (declare (not safe))
                                         (cons __tmp74396 __tmp74394))))
                                  (declare (not safe))
                                  (cons __tmp74397 __tmp74393))))
                           (declare (not safe))
                           (cons __tmp74398 __tmp74392))))
                    (declare (not safe))
                    (cons 'declare __tmp74391)))
                 (pretty-print _code70332_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path70331_ __tmp74390))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path70331_ _phi?70333_))
            '#!void)
        (if (gxc#current-compile-keep-scm) '#!void (delete-file _path70331_))))
    (define gxc#compile-scm-file__0
      (lambda (_path70339_ _code70340_)
        (let ((_phi?70342_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path70339_ _code70340_ _phi?70342_))))
    (define gxc#compile-scm-file
      (lambda _g74400_
        (let ((_g74399_ (let () (declare (not safe)) (##length _g74400_))))
          (cond ((let () (declare (not safe)) (##fx= _g74399_ 2))
                 (apply (lambda (_path70339_ _code70340_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0 _path70339_ _code70340_)))
                        _g74400_))
                ((let () (declare (not safe)) (##fx= _g74399_ 3))
                 (apply (lambda (_path70344_ _code70345_ _phi?70346_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path70344_
                             _code70345_
                             _phi?70346_)))
                        _g74400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g74400_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?70232_)
        (let _lp70234_ ((_rest70236_ (gxc#current-compile-gsc-options))
                        (_opts70237_ '()))
          (let* ((_rest7023870258_ _rest70236_)
                 (_else7024270266_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?70232_))
                             (gxc#current-compile-debug))
                        (let ((__tmp74401
                               (let ((__tmp74402 (reverse _opts70237_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp74402))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp74401))
                        (reverse _opts70237_)))))
            (let ((_K7025270309_
                   (lambda (_rest70307_)
                     (let ()
                       (declare (not safe))
                       (_lp70234_ _rest70307_ _opts70237_))))
                  (_K7024770291_
                   (lambda (_rest70289_)
                     (let ()
                       (declare (not safe))
                       (_lp70234_ _rest70289_ _opts70237_))))
                  (_K7024470273_
                   (lambda (_rest70270_ _opt70271_)
                     (let ((__tmp74403
                            (let ()
                              (declare (not safe))
                              (cons _opt70271_ _opts70237_))))
                       (declare (not safe))
                       (_lp70234_ _rest70270_ __tmp74403)))))
              (if (let () (declare (not safe)) (##pair? _rest7023870258_))
                  (let ((_tl7025470314_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7023870258_)))
                        (_hd7025370312_
                         (let ()
                           (declare (not safe))
                           (##car _rest7023870258_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd7025370312_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7025470314_))
                            (let* ((_tl7025670317_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl7025470314_)))
                                   (_rest70320_ _tl7025670317_))
                              (declare (not safe))
                              (_K7025270309_ _rest70320_))
                            (let ((_opt70281_ _hd7025370312_)
                                  (_rest70283_ _tl7025470314_))
                              (let ()
                                (declare (not safe))
                                (_K7024470273_ _rest70283_ _opt70281_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd7025370312_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl7025470314_))
                                (let* ((_tl7025170299_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl7025470314_)))
                                       (_rest70302_ _tl7025170299_))
                                  (declare (not safe))
                                  (_K7024770291_ _rest70302_))
                                (let ((_opt70281_ _hd7025370312_)
                                      (_rest70283_ _tl7025470314_))
                                  (let ()
                                    (declare (not safe))
                                    (_K7024470273_ _rest70283_ _opt70281_))))
                            (let ((_opt70281_ _hd7025370312_)
                                  (_rest70283_ _tl7025470314_))
                              (let ()
                                (declare (not safe))
                                (_K7024470273_ _rest70283_ _opt70281_))))))
                  (let () (declare (not safe)) (_else7024270266_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?70326_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?70326_))))
    (define gxc#gsc-link-options
      (lambda _g74405_
        (let ((_g74404_ (let () (declare (not safe)) (##length _g74405_))))
          (cond ((let () (declare (not safe)) (##fx= _g74404_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g74405_))
                ((let () (declare (not safe)) (##fx= _g74404_ 1))
                 (apply (lambda (_phi?70328_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?70328_)))
                        _g74405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g74405_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?70133_)
        (let _lp70135_ ((_rest70137_ (gxc#current-compile-gsc-options))
                        (_opts70138_ '()))
          (let* ((_rest7013970159_ _rest70137_)
                 (_else7014370167_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?70133_))
                             (gxc#current-compile-debug))
                        (let ((__tmp74406
                               (let ((__tmp74407 (reverse _opts70138_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp74407))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp74406))
                        (reverse _opts70138_)))))
            (let ((_K7015370206_
                   (lambda (_rest70203_ _opt70204_)
                     (let ((__tmp74408
                            (let ((__tmp74409
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts70138_))))
                              (declare (not safe))
                              (cons _opt70204_ __tmp74409))))
                       (declare (not safe))
                       (_lp70135_ _rest70203_ __tmp74408))))
                  (_K7014870187_
                   (lambda (_rest70185_)
                     (let ()
                       (declare (not safe))
                       (_lp70135_ _rest70185_ _opts70138_))))
                  (_K7014570173_
                   (lambda (_rest70171_)
                     (let ()
                       (declare (not safe))
                       (_lp70135_ _rest70171_ _opts70138_)))))
              (if (let () (declare (not safe)) (##pair? _rest7013970159_))
                  (let ((_tl7015570211_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7013970159_)))
                        (_hd7015470209_
                         (let ()
                           (declare (not safe))
                           (##car _rest7013970159_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd7015470209_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7015570211_))
                            (let ((_tl7015770216_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7015570211_)))
                                  (_hd7015670214_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7015570211_))))
                              (let ((_opt70219_ _hd7015670214_)
                                    (_rest70221_ _tl7015770216_))
                                (let ()
                                  (declare (not safe))
                                  (_K7015370206_ _rest70221_ _opt70219_))))
                            (let ((_rest70179_ _tl7015570211_))
                              (declare (not safe))
                              (_K7014570173_ _rest70179_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd7015470209_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl7015570211_))
                                (let* ((_tl7015270195_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl7015570211_)))
                                       (_rest70198_ _tl7015270195_))
                                  (declare (not safe))
                                  (_K7014870187_ _rest70198_))
                                (let ((_rest70179_ _tl7015570211_))
                                  (declare (not safe))
                                  (_K7014570173_ _rest70179_)))
                            (let ((_rest70179_ _tl7015570211_))
                              (declare (not safe))
                              (_K7014570173_ _rest70179_)))))
                  (let () (declare (not safe)) (_else7014370167_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?70227_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?70227_))))
    (define gxc#gsc-cc-options
      (lambda _g74411_
        (let ((_g74410_ (let () (declare (not safe)) (##length _g74411_))))
          (cond ((let () (declare (not safe)) (##fx= _g74410_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g74411_))
                ((let () (declare (not safe)) (##fx= _g74410_ 1))
                 (apply (lambda (_phi?70229_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?70229_)))
                        _g74411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g74411_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir70128_)
        (let* ((_user-staticdir70130_
                (path-expand (path-expand '"lib/static" (gerbil-path))))
               (__tmp74412
                (let ((__tmp74413
                       (string-append
                        '"-I "
                        _staticdir70128_
                        '" -I "
                        _user-staticdir70130_)))
                  (declare (not safe))
                  (cons __tmp74413 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp74412))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp70040_ ((_rest70042_ (gxc#current-compile-gsc-options))
                        (_opts70043_ '()))
          (let* ((_rest7004470064_ _rest70042_)
                 (_else7004870072_ (lambda () _opts70043_)))
            (let ((_K7005870115_
                   (lambda (_rest70113_)
                     (let ()
                       (declare (not safe))
                       (_lp70040_ _rest70113_ _opts70043_))))
                  (_K7005370093_
                   (lambda (_rest70090_ _opt70091_)
                     (let ((__tmp74414
                            (append _opts70043_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt70091_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp70040_ _rest70090_ __tmp74414))))
                  (_K7005070078_
                   (lambda (_rest70076_)
                     (let ()
                       (declare (not safe))
                       (_lp70040_ _rest70076_ _opts70043_)))))
              (if (let () (declare (not safe)) (##pair? _rest7004470064_))
                  (let ((_tl7006070120_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7004470064_)))
                        (_hd7005970118_
                         (let ()
                           (declare (not safe))
                           (##car _rest7004470064_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd7005970118_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7006070120_))
                            (let* ((_tl7006270123_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl7006070120_)))
                                   (_rest70126_ _tl7006270123_))
                              (declare (not safe))
                              (_K7005870115_ _rest70126_))
                            (let ((_rest70084_ _tl7006070120_))
                              (declare (not safe))
                              (_K7005070078_ _rest70084_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd7005970118_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl7006070120_))
                                (let ((_tl7005770103_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl7006070120_)))
                                      (_hd7005670101_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl7006070120_))))
                                  (let ((_opt70106_ _hd7005670101_)
                                        (_rest70108_ _tl7005770103_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7005370093_ _rest70108_ _opt70106_))))
                                (let ((_rest70084_ _tl7006070120_))
                                  (declare (not safe))
                                  (_K7005070078_ _rest70084_)))
                            (let ((_rest70084_ _tl7006070120_))
                              (declare (not safe))
                              (_K7005070078_ _rest70084_)))))
                  (let () (declare (not safe)) (_else7004870072_))))))))
    (define gxc#not-string-empty?
      (lambda (_str70037_)
        (let ((__tmp74415
               (let () (declare (not safe)) (string-empty? _str70037_))))
          (declare (not safe))
          (not __tmp74415))))
    (define gxc#gsc-compile-file
      (lambda (_path70005_ _phi?70006_)
        (letrec ((_gsc-link-path70008_
                  (lambda (_base-path70029_)
                    (let _lp70031_ ((_n70033_ '1))
                      (let ((_path70035_
                             (string-append
                              _base-path70029_
                              '".o"
                              (number->string _n70033_))))
                        (if (file-exists? _path70035_)
                            (let ((__tmp74416
                                   (let ()
                                     (declare (not safe))
                                     (+ _n70033_ '1))))
                              (declare (not safe))
                              (_lp70031_ __tmp74416))
                            _path70035_))))))
          (let* ((_base-path70010_ (path-strip-extension _path70005_))
                 (_path-c70012_ (string-append _base-path70010_ '".c"))
                 (_path-o70014_ (string-append _base-path70010_ '".o"))
                 (_link-path70016_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path70008_ _base-path70010_)))
                 (_link-path-c70018_ (string-append _link-path70016_ '".c"))
                 (_link-path-o70020_ (string-append _link-path70016_ '".o"))
                 (_gsc-link-opts70022_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?70006_)))
                 (_gsc-cc-opts70024_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?70006_)))
                 (_gcc-ld-opts70026_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp74423 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp74417
                   (let ((__tmp74418
                          (let ((__tmp74419
                                 (let ((__tmp74420
                                        (let ((__tmp74421
                                               (let ((__tmp74422
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path70005_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp74422
                                                         _gsc-link-opts70022_))))
                                          (declare (not safe))
                                          (cons _link-path-c70018_
                                                __tmp74421))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp74420))))
                            (declare (not safe))
                            (cons '"-flat" __tmp74419))))
                     (declare (not safe))
                     (cons '"-link" __tmp74418))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp74423 __tmp74417))
            (let ((__tmp74430 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp74424
                   (let ((__tmp74425
                          (let ((__tmp74426
                                 (let ((__tmp74427
                                        (let ((__tmp74428
                                               (let ((__tmp74429
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c70018_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c70012_
                                                       __tmp74429))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp74428
                                                  _gsc-cc-opts70024_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp74427))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp74426))))
                     (declare (not safe))
                     (cons '"-obj" __tmp74425))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp74430 __tmp74424))
            (let ((__tmp74436 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp74431
                   (let ((__tmp74432
                          (let ((__tmp74433
                                 (let ((__tmp74434
                                        (let ((__tmp74435
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o70020_
                                                       _gcc-ld-opts70026_))))
                                          (declare (not safe))
                                          (cons _path-o70014_ __tmp74435))))
                                   (declare (not safe))
                                   (cons _link-path70016_ __tmp74434))))
                            (declare (not safe))
                            (cons '"-o" __tmp74433))))
                     (declare (not safe))
                     (cons '"-shared" __tmp74432))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp74436
               __tmp74431))
            (for-each
             delete-file
             (let ((__tmp74437
                    (let ((__tmp74438
                           (let ((__tmp74439
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o70020_ '()))))
                             (declare (not safe))
                             (cons _link-path-c70018_ __tmp74439))))
                      (declare (not safe))
                      (cons _path-o70014_ __tmp74438))))
               (declare (not safe))
               (cons _path-c70012_ __tmp74437)))))))
    (define gxc#compile-output-file
      (lambda (_ctx69976_ _n69977_ _ext69978_)
        (letrec ((_module-relative-path69980_
                  (lambda (_ctx70003_)
                    (path-strip-directory
                     (let ((__tmp74440
                            (##structure-ref
                             _ctx70003_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp74440)))))
                 (_module-source-directory69981_
                  (lambda (_ctx69999_)
                    (path-directory
                     (let ((_mpath70001_
                            (##structure-ref
                             _ctx69999_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let () (declare (not safe)) (string? _mpath70001_))
                           _mpath70001_
                           (let ()
                             (declare (not safe))
                             (last _mpath70001_)))))))
                 (_section-string69982_
                  (lambda (_n69997_)
                    (if (let () (declare (not safe)) (number? _n69997_))
                        (number->string _n69997_)
                        (if (let () (declare (not safe)) (symbol? _n69997_))
                            (symbol->string _n69997_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n69997_))
                                _n69997_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n69997_)))))))
                 (_file-name69983_
                  (lambda (_path69995_)
                    (if _n69977_
                        (string-append
                         _path69995_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string69982_ _n69977_))
                         _ext69978_)
                        (string-append _path69995_ _ext69978_))))
                 (_file-path69984_
                  (lambda ()
                    (let ((_$e69990_ (gxc#current-compile-output-dir)))
                      (if _$e69990_
                          ((lambda (_outdir69993_)
                             (path-expand
                              (let ((__tmp74442
                                     (let ((__tmp74443
                                            (##structure-ref
                                             _ctx69976_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp74443))))
                                (declare (not safe))
                                (_file-name69983_ __tmp74442))
                              _outdir69993_))
                           _$e69990_)
                          (path-expand
                           (let ((__tmp74441
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path69980_ _ctx69976_))))
                             (declare (not safe))
                             (_file-name69983_ __tmp74441))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory69981_ _ctx69976_))))))))
          (let ((_path69986_ (let () (declare (not safe)) (_file-path69984_))))
            (with-lock
             gxc#+driver-mutex+
             (lambda ()
               (let ((__tmp74444 (path-directory _path69986_)))
                 (declare (not safe))
                 (create-directory* __tmp74444))))
            _path69986_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx69958_)
        (letrec ((_file-name69960_
                  (lambda (_id69974_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id69974_))
                     '".scm")))
                 (_file-path69961_
                  (lambda ()
                    (let* ((_file69967_
                            (let ((__tmp74445
                                   (##structure-ref
                                    _ctx69958_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name69960_ __tmp74445)))
                           (_$e69969_ (gxc#current-compile-output-dir)))
                      (if _$e69969_
                          ((lambda (_outdir69972_)
                             (path-expand
                              _file69967_
                              (path-expand '"static" _outdir69972_)))
                           _$e69969_)
                          (path-expand _file69967_ '"static"))))))
          (let ((_path69963_ (let () (declare (not safe)) (_file-path69961_))))
            (with-lock
             gxc#+driver-mutex+
             (lambda ()
               (let ((__tmp74446 (path-directory _path69963_)))
                 (declare (not safe))
                 (create-directory* __tmp74446))))
            _path69963_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx69952_ _opts69953_)
        (let ((_$e69955_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts69953_))))
          (if _$e69955_
              (values _$e69955_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx69952_
                 '1
                 gx#expander-context::t
                 '#f)))))))
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
                (let ((__tmp74447 (symbol->string _idstr69945_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp74447))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr69945_))))))
    (define gxc#invoke__%
      (lambda (_g74448_
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
          (let ((__tmp74449
                 (let ()
                   (declare (not safe))
                   (cons _program69917_ _args69918_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp74449))
          (let ((_proc69924_
                 (open-process
                  (let ((__tmp74450
                         (let ((__tmp74451
                                (let ((__tmp74452
                                       (let ((__tmp74453
                                              (let ((__tmp74454
                                                     (let ((__tmp74455
                                                            (let ((__tmp74456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection69922_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp74456))))
               (declare (not safe))
               (cons _stdout-redirection69920_ __tmp74455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp74454))))
                                         (declare (not safe))
                                         (cons _args69918_ __tmp74453))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp74452))))
                           (declare (not safe))
                           (cons _program69917_ __tmp74451))))
                    (declare (not safe))
                    (cons 'path: __tmp74450)))))
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
        (let ((__tmp74458
               (lambda (_exn69904_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn69904_))
                     (let ((__tmp74459
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn69904_))))
                       (declare (not safe))
                       (raise __tmp74459))
                     (let () (declare (not safe)) (raise _exn69904_)))))
              (__tmp74457 (lambda () (thread-join! _thread69902_))))
          (declare (not safe))
          (with-catch __tmp74458 __tmp74457))))))
