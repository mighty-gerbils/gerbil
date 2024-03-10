(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710106266)
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
      (lambda (_path159082_ _fun159083_)
        (with-output-to-file
         (let ((__tmp159176
                (let ()
                  (declare (not safe))
                  (cons _path159082_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp159176))
         _fun159083_)))
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
      (lambda (_gerbil-libdir159077_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir159077_)))
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
      (lambda (_dir159075_) (delete-file-or-directory _dir159075_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath159049_ _opts159050_)
        (if (let () (declare (not safe)) (string? _srcpath159049_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath159049_)))
        (let ((_outdir159052_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts159050_)))
              (_invoke-gsc?159053_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts159050_)))
              (_gsc-options159054_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts159050_)))
              (_keep-scm?159055_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts159050_)))
              (_verbosity159056_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts159050_)))
              (_optimize159057_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts159050_)))
              (_debug159058_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts159050_)))
              (_gen-ssxi159059_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts159050_))))
          (if _outdir159052_
              (let ((__tmp159177
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir159052_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159177))
              '#!void)
          (if _optimize159057_
              (let ((__tmp159178
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159178))
              '#!void)
          (let ((__tmp159182
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath159049_))
                   (let ((__tmp159183
                          (let ((__tmp159184
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath159049_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp159184))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp159183))))
                (__tmp159181
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp159179
                 (let ((__tmp159180
                        (let ()
                          (declare (not safe))
                          (cons _srcpath159049_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp159180))))
            (declare (not safe))
            (call-with-parameters
             __tmp159182
             gxc#current-compile-output-dir
             _outdir159052_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?159053_
             gxc#current-compile-gsc-options
             _gsc-options159054_
             gxc#current-compile-keep-scm
             _keep-scm?159055_
             gxc#current-compile-verbose
             _verbosity159056_
             gxc#current-compile-optimize
             _optimize159057_
             gxc#current-compile-debug
             _debug159058_
             gxc#current-compile-generate-ssxi
             _gen-ssxi159059_
             gxc#current-compile-timestamp
             __tmp159181
             gxc#current-compile-context
             __tmp159179
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath159068_)
        (let ((_opts159070_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath159068_ _opts159070_))))
    (define gxc#compile-module
      (lambda _g159186_
        (let ((_g159185_ (let () (declare (not safe)) (##length _g159186_))))
          (cond ((let () (declare (not safe)) (##fx= _g159185_ 1))
                 (apply (lambda (_srcpath159068_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath159068_)))
                        _g159186_))
                ((let () (declare (not safe)) (##fx= _g159185_ 2))
                 (apply (lambda (_srcpath159072_ _opts159073_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath159072_
                             _opts159073_)))
                        _g159186_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g159186_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath159025_ _opts159026_)
        (if (let () (declare (not safe)) (string? _srcpath159025_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath159025_)))
        (let ((_outdir159028_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts159026_)))
              (_invoke-gsc?159029_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts159026_)))
              (_gsc-options159030_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts159026_)))
              (_keep-scm?159031_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts159026_)))
              (_verbosity159032_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts159026_)))
              (_debug159033_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts159026_))))
          (if _outdir159028_
              (let ((__tmp159187
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir159028_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159187))
              '#!void)
          (let ((__tmp159191
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath159025_))
                   (let ((__tmp159192
                          (let ((__tmp159193
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath159025_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp159193))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp159192
                      _opts159026_))))
                (__tmp159190
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp159188
                 (let ((__tmp159189
                        (let ()
                          (declare (not safe))
                          (cons _srcpath159025_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp159189))))
            (declare (not safe))
            (call-with-parameters
             __tmp159191
             gxc#current-compile-output-dir
             _outdir159028_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?159029_
             gxc#current-compile-gsc-options
             _gsc-options159030_
             gxc#current-compile-keep-scm
             _keep-scm?159031_
             gxc#current-compile-verbose
             _verbosity159032_
             gxc#current-compile-debug
             _debug159033_
             gxc#current-compile-timestamp
             __tmp159190
             gxc#current-compile-context
             __tmp159188
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath159041_)
        (let ((_opts159043_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath159041_ _opts159043_))))
    (define gxc#compile-exe
      (lambda _g159195_
        (let ((_g159194_ (let () (declare (not safe)) (##length _g159195_))))
          (cond ((let () (declare (not safe)) (##fx= _g159194_ 1))
                 (apply (lambda (_srcpath159041_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath159041_)))
                        _g159195_))
                ((let () (declare (not safe)) (##fx= _g159194_ 2))
                 (apply (lambda (_srcpath159045_ _opts159046_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath159045_ _opts159046_)))
                        _g159195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g159195_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx159021_ _opts159022_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts159022_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx159021_
               _opts159022_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx159021_
               _opts159022_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx158904_ _opts158905_)
        (letrec ((_generate-stub158907_
                  (lambda (_builtin-modules159017_)
                    (let ((_mod-main159019_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158904_ 'main))))
                      (write (let ((__tmp159196
                                    (let ((__tmp159197
                                           (let ((__tmp159198
                                                  (let ((__tmp159199
                                                         (let ((__tmp159201
                                                                (let ((__tmp159202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules159017_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp159202)))
                       (__tmp159200
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp159201 __tmp159200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp159199))))
                                             (declare (not safe))
                                             (cons __tmp159198 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp159197))))
                               (declare (not safe))
                               (cons 'define __tmp159196)))
                      (write (let ((__tmp159203
                                    (let ((__tmp159242
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp159204
                                           (let ((__tmp159205
                                                  (let ((__tmp159206
                                                         (let ((__tmp159230
                                                                (let ((__tmp159231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp159232
                                      (let ((__tmp159240
                                             (let ((__tmp159241
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp159241)))
                                            (__tmp159233
                                             (let ((__tmp159234
                                                    (let ((__tmp159235
                                                           (let ((__tmp159236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159237
                                 (let ((__tmp159238
                                        (let ((__tmp159239
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp159239 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp159238))))
                            (declare (not safe))
                            (cons __tmp159237 '()))))
                     (declare (not safe))
                     (cons _mod-main159019_ __tmp159236))))
              (declare (not safe))
              (cons 'apply __tmp159235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp159234 '()))))
                                        (declare (not safe))
                                        (cons __tmp159240 __tmp159233))))
                                 (declare (not safe))
                                 (cons '() __tmp159232))))
                          (declare (not safe))
                          (cons 'lambda __tmp159231)))
                       (__tmp159207
                        (let ((__tmp159208
                               (let ((__tmp159209
                                      (let ((__tmp159210
                                             (let ((__tmp159221
                                                    (let ((__tmp159222
                                                           (let ((__tmp159223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159224
                                 (let ((__tmp159225
                                        (let ((__tmp159226
                                               (let ((__tmp159227
                                                      (let ((__tmp159228
                                                             (let ((__tmp159229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp159229 '()))))
                (declare (not safe))
                (cons 'force-output __tmp159228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp159227 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp159226))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp159225))))
                            (declare (not safe))
                            (cons __tmp159224 '()))))
                     (declare (not safe))
                     (cons 'void __tmp159223))))
              (declare (not safe))
              (cons 'with-catch __tmp159222)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp159211
                                                    (let ((__tmp159212
                                                           (let ((__tmp159213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159214
                                 (let ((__tmp159215
                                        (let ((__tmp159216
                                               (let ((__tmp159217
                                                      (let ((__tmp159218
                                                             (let ((__tmp159219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp159220
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp159220 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp159219))))
                (declare (not safe))
                (cons __tmp159218 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp159217))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp159216))))
                                   (declare (not safe))
                                   (cons __tmp159215 '()))))
                            (declare (not safe))
                            (cons 'void __tmp159214))))
                     (declare (not safe))
                     (cons 'with-catch __tmp159213))))
              (declare (not safe))
              (cons __tmp159212 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp159221
                                                     __tmp159211))))
                                        (declare (not safe))
                                        (cons '() __tmp159210))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp159209))))
                          (declare (not safe))
                          (cons __tmp159208 '()))))
                   (declare (not safe))
                   (cons __tmp159230 __tmp159207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp159206))))
                                             (declare (not safe))
                                             (cons __tmp159205 '()))))
                                      (declare (not safe))
                                      (cons __tmp159242 __tmp159204))))
                               (declare (not safe))
                               (cons 'define __tmp159203)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts158908_
                  (lambda (_libgerbil159015_)
                    (call-with-input-file
                     (string-append _libgerbil159015_ '".ldd")
                     read)))
                 (_replace-extension158909_
                  (lambda (_path159012_ _ext159013_)
                    (string-append
                     (path-strip-extension _path159012_)
                     _ext159013_)))
                 (_not-exclude-module?158910_
                  (lambda (_ctx159008_)
                    (let ((_id-str159010_
                           (symbol->string
                            (##structure-ref
                             _ctx159008_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp159244
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str159010_))))
                            (declare (not safe))
                            (not __tmp159244))
                          (let ((__tmp159243
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str159010_))))
                            (declare (not safe))
                            (not __tmp159243))
                          '#f))))
                 (_not-file-empty?158911_
                  (lambda (_path159006_)
                    (let ((__tmp159245
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path159006_))))
                      (declare (not safe))
                      (not __tmp159245))))
                 (_compile-stub158912_
                  (lambda (_output-scm158919_ _output-bin158920_)
                    (let* ((_gerbil-home158922_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158924_
                            (path-expand '"lib" _gerbil-home158922_))
                           (_gerbil-staticdir158926_
                            (path-expand '"static" _gerbil-libdir158924_))
                           (_gxlink158928_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir158924_))
                           (_tmp158930_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path158934_
                            (lambda (_f158932_)
                              (path-expand
                               (path-strip-directory _f158932_)
                               _tmp158930_)))
                           (_deps158936_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158904_)))
                           (_deps158938_
                            (filter _not-exclude-module?158910_ _deps158936_))
                           (_src-deps-scm158940_
                            (map gxc#find-static-module-file _deps158938_))
                           (_src-deps-scm158942_
                            (filter _not-file-empty?158911_
                                    _src-deps-scm158940_))
                           (_src-deps-scm158944_
                            (map path-expand _src-deps-scm158942_))
                           (_deps-scm158946_
                            (map _tmp-path158934_ _src-deps-scm158944_))
                           (_deps-c158952_
                            (map (lambda (_g158947158949_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158909_
                                      _g158947158949_
                                      '".c")))
                                 _deps-scm158946_))
                           (_deps-o158958_
                            (map (lambda (_g158953158955_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158909_
                                      _g158953158955_
                                      '".o")))
                                 _deps-scm158946_))
                           (_src-bin-scm158960_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158904_)))
                           (_src-bin-scm158962_
                            (path-expand _src-bin-scm158960_))
                           (_bin-scm158964_
                            (let ()
                              (declare (not safe))
                              (_tmp-path158934_ _src-bin-scm158962_)))
                           (_bin-c158966_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158909_
                               _bin-scm158964_
                               '".c")))
                           (_bin-o158968_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158909_
                               _bin-scm158964_
                               '".o")))
                           (_output-bin158970_
                            (path-expand _output-bin158920_))
                           (_output-scm158972_
                            (path-expand _output-scm158919_))
                           (_output-c158974_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158909_
                               _output-scm158972_
                               '".c")))
                           (_output-o158976_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158909_
                               _output-scm158972_
                               '".o")))
                           (_output_-c158978_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158909_
                               _output-scm158972_
                               '"_.c")))
                           (_output_-o158980_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158909_
                               _output-scm158972_
                               '"_.o")))
                           (_gsc-link-opts158982_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158984_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158986_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir158926_)))
                           (_output-ld-opts158988_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a158990_
                            (path-expand '"libgerbil.a" _gerbil-libdir158924_))
                           (_libgerbil.so158992_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir158924_))
                           (_libgerbil-ld-opts158994_
                            (if (file-exists? _libgerbil.so158992_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts158908_
                                   _libgerbil.so158992_))
                                (if (file-exists? _libgerbil.a158990_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts158908_
                                       _libgerbil.a158990_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a158990_
                                       _libgerbil.so158992_)))))
                           (_rpath158996_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158924_)))
                           (_builtin-modules159000_
                            (map (lambda (_mod158998_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod158998_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx158904_ _deps158938_)))))
                      (let ((__tmp159246
                             (lambda ()
                               (let ((__tmp159247
                                      (path-directory _output-bin158970_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp159247)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp159246))
                      (let ((__tmp159248
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub158907_
                                  _builtin-modules159000_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158972_
                         __tmp159248))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp159249
                                   (lambda () (create-directory _tmp158930_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp159249))
                            (for-each
                             copy-file
                             _src-deps-scm158944_
                             _deps-scm158946_)
                            (copy-file _src-bin-scm158962_ _bin-scm158964_)
                            (let ((__tmp159257
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159250
                                   (let ((__tmp159251
                                          (let ((__tmp159252
                                                 (let ((__tmp159253
                                                        (let ((__tmp159254
                                                               (let ((__tmp159255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159256
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm158972_ '()))))
                                (declare (not safe))
                                (cons _bin-scm158964_ __tmp159256))))
                         (declare (not safe))
                         (foldr1 cons __tmp159255 _deps-scm158946_))))
                  (declare (not safe))
                  (foldr1 cons __tmp159254 _gsc-link-opts158982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink158928_
                                                         __tmp159253))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp159252))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp159251))))
                              (declare (not safe))
                              (gxc#invoke __tmp159257 __tmp159250))
                            (let ((__tmp159265
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159258
                                   (let ((__tmp159259
                                          (let ((__tmp159260
                                                 (let ((__tmp159261
                                                        (let ((__tmp159262
                                                               (let ((__tmp159263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159264
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c158978_ '()))))
                                (declare (not safe))
                                (cons _output-c158974_ __tmp159264))))
                         (declare (not safe))
                         (cons _bin-c158966_ __tmp159263))))
                  (declare (not safe))
                  (foldr1 cons __tmp159262 _deps-c158952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159261
                                                           _gsc-static-opts158986_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp159260
                                                    _gsc-cc-opts158984_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp159259))))
                              (declare (not safe))
                              (gxc#invoke __tmp159265 __tmp159258))
                            (let ((__tmp159278
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp159266
                                   (let ((__tmp159267
                                          (let ((__tmp159268
                                                 (let ((__tmp159269
                                                        (let ((__tmp159270
                                                               (let ((__tmp159271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159272
                                     (let ((__tmp159273
                                            (let ((__tmp159274
                                                   (let ((__tmp159275
                                                          (let ((__tmp159276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp159277
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts158994_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp159277))))
                    (declare (not safe))
                    (cons _gerbil-libdir158924_ __tmp159276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp159275))))
                                              (declare (not safe))
                                              (cons _rpath158996_
                                                    __tmp159274))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp159273
                                               _output-ld-opts158988_))))
                                (declare (not safe))
                                (cons _output_-o158980_ __tmp159272))))
                         (declare (not safe))
                         (cons _output-o158976_ __tmp159271))))
                  (declare (not safe))
                  (cons _bin-o158968_ __tmp159270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159269
                                                           _deps-o158958_))))
                                            (declare (not safe))
                                            (cons _output-bin158970_
                                                  __tmp159268))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp159267))))
                              (declare (not safe))
                              (gxc#invoke __tmp159278 __tmp159266))
                            (for-each
                             delete-file
                             (let ((__tmp159279
                                    (let ((__tmp159280
                                           (let ((__tmp159281
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o158980_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o158976_
                                                   __tmp159281))))
                                      (declare (not safe))
                                      (cons _output_-c158978_ __tmp159280))))
                               (declare (not safe))
                               (cons _output-c158974_ __tmp159279)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp158930_)))
                          '#!void)))))
          (let* ((_output-bin158914_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158904_ _opts158905_)))
                 (_output-scm158916_
                  (string-append _output-bin158914_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158912_ _output-scm158916_ _output-bin158914_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158916_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx158729_ _opts158730_)
        (letrec ((_reset-declare158732_
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
                 (_generate-stub158733_
                  (lambda (_deps158895_)
                    (let ((_mod-main158897_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158729_ 'main)))
                          (_reset-decl158898_
                           (let ()
                             (declare (not safe))
                             (_reset-declare158732_)))
                          (_user-decl158899_
                           (let ()
                             (declare (not safe))
                             (_user-declare158734_))))
                      (for-each
                       (lambda (_dep158901_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl158898_)
                         (newline)
                         (if _user-decl158899_
                             (begin (write _user-decl158899_) (newline))
                             '#!void)
                         (write (let ((__tmp159282
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep158901_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp159282)))
                         (newline))
                       _deps158895_)
                      (write (let ((__tmp159283
                                    (let ((__tmp159296
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp159284
                                           (let ((__tmp159292
                                                  (let ((__tmp159293
                                                         (let ((__tmp159294
                                                                (let ((__tmp159295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp159295))))
                   (declare (not safe))
                   (cons __tmp159294 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp159293)))
                                                 (__tmp159285
                                                  (let ((__tmp159286
                                                         (let ((__tmp159287
                                                                (let ((__tmp159288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp159289
                                      (let ((__tmp159290
                                             (let ((__tmp159291
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp159291 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp159290))))
                                 (declare (not safe))
                                 (cons __tmp159289 '()))))
                          (declare (not safe))
                          (cons _mod-main158897_ __tmp159288))))
                   (declare (not safe))
                   (cons 'apply __tmp159287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp159286 '()))))
                                             (declare (not safe))
                                             (cons __tmp159292 __tmp159285))))
                                      (declare (not safe))
                                      (cons __tmp159296 __tmp159284))))
                               (declare (not safe))
                               (cons 'define __tmp159283)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare158734_
                  (lambda ()
                    (let* ((_gsc-opts158800_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts158730_)))
                           (_gsc-prelude158802_
                            (if _gsc-opts158800_
                                (member '"-prelude" _gsc-opts158800_)
                                '#f))
                           (_gsc-prelude158804_
                            (if _gsc-prelude158802_
                                (read (open-input-string
                                       (cadr _gsc-prelude158802_)))
                                '#f)))
                      (let _lp158807_ ((_rest158809_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude158804_ '())))
                                       (_user-decls158810_ '()))
                        (let* ((_rest158811158819_ _rest158809_)
                               (_else158813158827_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls158810_))
                                      '#f
                                      (let ((__tmp159297
                                             (reverse _user-decls158810_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp159297)))))
                               (_K158815158883_
                                (lambda (_rest158830_ _expr158831_)
                                  (let* ((_expr158832158844_ _expr158831_)
                                         (_else158835158852_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp158807_
                                               _rest158830_
                                               _user-decls158810_)))))
                                    (let ((_K158840158873_
                                           (lambda (_decls158871_)
                                             (let ((__tmp159298
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls158810_
                                                              _decls158871_))))
                                               (declare (not safe))
                                               (_lp158807_
                                                _rest158830_
                                                __tmp159298))))
                                          (_K158837158858_
                                           (lambda (_exprs158856_)
                                             (let ((__tmp159299
                                                    (append _exprs158856_
                                                            _rest158830_)))
                                               (declare (not safe))
                                               (_lp158807_
                                                __tmp159299
                                                _user-decls158810_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr158832158844_))
                                          (let ((_tl158842158878_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr158832158844_)))
                                                (_hd158841158876_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr158832158844_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd158841158876_
                                                         'declare))
                                                (let ((_decls158881_
                                                       _tl158842158878_))
                                                  (declare (not safe))
                                                  (_K158840158873_
                                                   _decls158881_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd158841158876_
                                                             'begin))
                                                    (let ((_exprs158866_
                                                           _tl158842158878_))
                                                      (declare (not safe))
                                                      (_K158837158858_
                                                       _exprs158866_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else158835158852_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else158835158852_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest158811158819_))
                              (let ((_hd158816158886_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest158811158819_)))
                                    (_tl158817158888_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest158811158819_))))
                                (let* ((_expr158891_ _hd158816158886_)
                                       (_rest158893_ _tl158817158888_))
                                  (declare (not safe))
                                  (_K158815158883_ _rest158893_ _expr158891_)))
                              (let ()
                                (declare (not safe))
                                (_else158813158827_))))))))
                 (_compile-stub158735_
                  (lambda (_output-scm158742_ _output-bin158743_)
                    (let* ((_gerbil-home158745_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158747_
                            (path-expand '"lib" _gerbil-home158745_))
                           (_runtime158749_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp158751_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home158745_))
                           (_include-gambit-sharp158753_
                            (string-append
                             '"(include \""
                             _gambit-sharp158751_
                             '"\")"))
                           (_bin-scm158755_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158729_)))
                           (_deps158757_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158729_)))
                           (_deps158759_
                            (map gxc#find-static-module-file _deps158757_))
                           (_deps158764_
                            (filter (lambda (_$obj158761_)
                                      (let ((__tmp159300
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj158761_))))
                                        (declare (not safe))
                                        (not __tmp159300)))
                                    _deps158759_))
                           (_deps158768_
                            (filter (lambda (_f158766_)
                                      (let ((__tmp159301
                                             (member _f158766_
                                                     _runtime158749_)))
                                        (declare (not safe))
                                        (not __tmp159301)))
                                    _deps158764_))
                           (_output-base158770_
                            (string-append
                             (path-strip-extension _output-scm158742_)))
                           (_output-c158772_
                            (string-append _output-base158770_ '".c"))
                           (_output-o158774_
                            (string-append _output-base158770_ '".o"))
                           (_output-c_158776_
                            (string-append _output-base158770_ '"_.c"))
                           (_output-o_158778_
                            (string-append _output-base158770_ '"_.o"))
                           (_gsc-link-opts158780_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158782_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158784_
                            (let ((__tmp159302
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir158747_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp159302)))
                           (_output-ld-opts158786_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros158788_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp159304
                                       (let ((__tmp159305
                                              (let ((__tmp159306
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp158753_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp159306))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp159305))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp159304))
                                (let ((__tmp159303
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp158753_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp159303))))
                           (_gsc-link-opts158790_
                            (append _gsc-link-opts158780_
                                    _gsc-gx-macros158788_))
                           (_rpath158792_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158747_)))
                           (_default-ld-options158794_
                            (let ((__tmp159307
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp159307))))
                      (let ((__tmp159308
                             (lambda ()
                               (let ((__tmp159309
                                      (path-directory _output-bin158743_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp159309)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp159308))
                      (let ((__tmp159310
                             (lambda ()
                               (let ((__tmp159311
                                      (let ((__tmp159312
                                             (let ((__tmp159313
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm158755_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp159313
                                                       _deps158768_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp159312
                                                _runtime158749_))))
                                 (declare (not safe))
                                 (_generate-stub158733_ __tmp159311)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158742_
                         __tmp159310))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp159319
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159314
                                   (let ((__tmp159315
                                          (let ((__tmp159316
                                                 (let ((__tmp159317
                                                        (let ((__tmp159318
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm158742_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp159318 _gsc-link-opts158790_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_158776_
                                                         __tmp159317))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp159316))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp159315))))
                              (declare (not safe))
                              (gxc#invoke __tmp159319 __tmp159314))
                            (let ((__tmp159325
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159320
                                   (let ((__tmp159321
                                          (let ((__tmp159322
                                                 (let ((__tmp159323
                                                        (let ((__tmp159324
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_158776_ '()))))
                  (declare (not safe))
                  (cons _output-c158772_ __tmp159324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159323
                                                           _gsc-static-opts158784_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp159322
                                                    _gsc-cc-opts158782_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp159321))))
                              (declare (not safe))
                              (gxc#invoke __tmp159325 __tmp159320))
                            (let ((__tmp159335
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp159326
                                   (let ((__tmp159327
                                          (let ((__tmp159328
                                                 (let ((__tmp159329
                                                        (let ((__tmp159330
                                                               (let ((__tmp159331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159332
                                     (let ((__tmp159333
                                            (let ((__tmp159334
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options158794_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir158747_
                                                    __tmp159334))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp159333))))
                                (declare (not safe))
                                (cons _rpath158792_ __tmp159332))))
                         (declare (not safe))
                         (foldr1 cons __tmp159331 _output-ld-opts158786_))))
                  (declare (not safe))
                  (cons _output-o_158778_ __tmp159330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o158774_
                                                         __tmp159329))))
                                            (declare (not safe))
                                            (cons _output-bin158743_
                                                  __tmp159328))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp159327))))
                              (declare (not safe))
                              (gxc#invoke __tmp159335 __tmp159326)))
                          '#!void)))))
          (let* ((_output-bin158737_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158729_ _opts158730_)))
                 (_output-scm158739_
                  (string-append _output-bin158737_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158735_ _output-scm158739_ _output-bin158737_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158739_))))))
    (define gxc#find-export-binding
      (lambda (_ctx158679_ _id158680_)
        (let ((_$e158726_
               (let ((__tmp159337
                      (lambda (_e158681158683_)
                        (let* ((_g158685158695_ _e158681158683_)
                               (_else158687158703_ (lambda () '#f))
                               (_K158689158707_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g158685158695_
                                 'gx#module-export::t))
                              (let* ((_e158690158710_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158685158695_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e158691158713_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158685158695_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e158692158716_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158685158695_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e158692158716_ '0))
                                    (let ((_e158693158719_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g158685158695_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g158721158723_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g158721158723_
                                                    _id158680_)))
                                           _e158693158719_)
                                          (let ()
                                            (declare (not safe))
                                            (_K158689158707_))
                                          (let ()
                                            (declare (not safe))
                                            (_else158687158703_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else158687158703_))))
                              (let ()
                                (declare (not safe))
                                (_else158687158703_))))))
                     (__tmp159336
                      (##structure-ref
                       _ctx158679_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp159337 __tmp159336))))
          (if _$e158726_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e158726_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx158671_ _id158672_)
        (let ((_$e158674_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx158671_ _id158672_))))
          (if _$e158674_
              ((lambda (_bind158677_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind158677_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id158672_)))
                 (##structure-ref _bind158677_ '1 gx#binding::t '#f))
               _$e158674_)
              (let ((__tmp159338
                     (##structure-ref
                      _ctx158671_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp159338
                 _id158672_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx158558_)
        (letrec* ((_ht158560_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template158561_
                   (lambda (_in158623_ _phi158624_)
                     (let ((_iphi158626_
                            (fx+ _phi158624_
                                 (##direct-structure-ref
                                  _in158623_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports158627_
                            (##structure-ref
                             (##direct-structure-ref
                              _in158623_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp158629_ ((_rest158631_ _imports158627_)
                                        (_r158632_ '()))
                         (let* ((_rest158633158641_ _rest158631_)
                                (_else158635158649_ (lambda () _r158632_))
                                (_K158637158659_
                                 (lambda (_rest158652_ _in158653_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in158653_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi158626_))
                                           (let ((__tmp159345
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in158653_
                                                          _r158632_))))
                                             (declare (not safe))
                                             (_lp158629_
                                              _rest158652_
                                              __tmp159345))
                                           (let ()
                                             (declare (not safe))
                                             (_lp158629_
                                              _rest158652_
                                              _r158632_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in158653_
                                              'gx#module-import::t))
                                           (let ((_iphi158655_
                                                  (fx+ _phi158624_
                                                       (##direct-structure-ref
                                                        _in158653_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi158655_))
                                                 (let ((__tmp159343
                                                        (let ((__tmp159344
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in158653_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp159344 _r158632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp158629_
                                                    _rest158652_
                                                    __tmp159343))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp158629_
                                                    _rest158652_
                                                    _r158632_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in158653_
                                                  'gx#import-set::t))
                                               (let ((_xphi158657_
                                                      (fx+ _iphi158626_
                                                           (##direct-structure-ref
                                                            _in158653_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi158657_))
                                                     (let ((__tmp159341
                                                            (let ((__tmp159342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in158653_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp159342 _r158632_))))
               (declare (not safe))
               (_lp158629_ _rest158652_ __tmp159341))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi158657_)
                                                         (let ((__tmp159339
                                                                (let ((__tmp159340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template158561_
                                  _in158653_
                                  _iphi158626_))))
                          (declare (not safe))
                          (foldl1 cons _r158632_ __tmp159340))))
                   (declare (not safe))
                   (_lp158629_ _rest158652_ __tmp159339))
                 (let ()
                   (declare (not safe))
                   (_lp158629_ _rest158652_ _r158632_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp158629_
                                                  _rest158652_
                                                  _r158632_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest158633158641_))
                               (let ((_hd158638158662_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest158633158641_)))
                                     (_tl158639158664_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest158633158641_))))
                                 (let* ((_in158667_ _hd158638158662_)
                                        (_rest158669_ _tl158639158664_))
                                   (declare (not safe))
                                   (_K158637158659_ _rest158669_ _in158667_)))
                               (let ()
                                 (declare (not safe))
                                 (_else158635158649_))))))))
                  (_find-deps158562_
                   (lambda (_rest158569_ _deps158570_)
                     (let* ((_rest158571158579_ _rest158569_)
                            (_else158573158587_ (lambda () _deps158570_))
                            (_K158575158611_
                             (lambda (_rest158590_ _hd158591_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd158591_
                                      'gx#module-context::t))
                                   (let ((_id158593_
                                          (##structure-ref
                                           _hd158591_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports158594_
                                          (##structure-ref
                                           _hd158591_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht158560_ _id158593_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps158562_
                                            _rest158590_
                                            _deps158570_))
                                         (let ((_$e158596_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd158591_))))
                                           (if _$e158596_
                                               ((lambda (_pre158599_)
                                                  (let ((_xdeps158601_
                                                         (let ((__tmp159358
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre158599_ _imports158594_))))
                   (declare (not safe))
                   (_find-deps158562_ __tmp159358 _deps158570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht158560_
                                                       _id158593_
                                                       _hd158591_))
                                                    (let ((__tmp159359
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd158591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps158601_))))
              (declare (not safe))
              (_find-deps158562_ _rest158590_ __tmp159359))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e158596_)
                                               (let ((_xdeps158603_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps158562_
                                                         _imports158594_
                                                         _deps158570_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht158560_
                                                    _id158593_
                                                    _hd158591_))
                                                 (let ((__tmp159357
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd158591_
                                                                _xdeps158603_))))
                                                   (declare (not safe))
                                                   (_find-deps158562_
                                                    _rest158590_
                                                    __tmp159357)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd158591_
                                          'gx#prelude-context::t))
                                       (let ((_id158605_
                                              (##structure-ref
                                               _hd158591_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht158560_
                                                _id158605_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps158562_
                                                _rest158590_
                                                _deps158570_))
                                             (let ((_xdeps158607_
                                                    (let ((__tmp159355
                                                           (##structure-ref
                                                            _hd158591_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps158562_
                                                       __tmp159355
                                                       _deps158570_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht158560_
                                                      _id158605_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps158562_
                                                      _rest158590_
                                                      _xdeps158607_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht158560_
                                                        _id158605_
                                                        _hd158591_))
                                                     (let ((__tmp159356
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd158591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps158607_))))
               (declare (not safe))
               (_find-deps158562_ _rest158590_ __tmp159356)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd158591_
                                              'gx#module-import::t))
                                           (if (let ((__tmp159354
                                                      (##direct-structure-ref
                                                       _hd158591_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp159354))
                                               (let ((__tmp159352
                                                      (let ((__tmp159353
                                                             (##direct-structure-ref
                                                              _hd158591_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp159353
                                                              _rest158590_))))
                                                 (declare (not safe))
                                                 (_find-deps158562_
                                                  __tmp159352
                                                  _deps158570_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps158562_
                                                  _rest158590_
                                                  _deps158570_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd158591_
                                                  'gx#module-export::t))
                                               (let ((__tmp159350
                                                      (let ((__tmp159351
                                                             (##direct-structure-ref
                                                              _hd158591_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp159351
                                                              _rest158590_))))
                                                 (declare (not safe))
                                                 (_find-deps158562_
                                                  __tmp159350
                                                  _deps158570_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd158591_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp159349
                                                              (##direct-structure-ref
                                                               _hd158591_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp159349))
                                                       (let ((__tmp159347
                                                              (let ((__tmp159348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd158591_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp159348 _rest158590_))))
                 (declare (not safe))
                 (_find-deps158562_ __tmp159347 _deps158570_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd158591_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps158609_
                           (let ()
                             (declare (not safe))
                             (_import-set-template158561_ _hd158591_ '0)))
                          (__tmp159346
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest158590_ _xdeps158609_))))
                     (declare (not safe))
                     (_find-deps158562_ __tmp159346 _deps158570_))
                   (let ()
                     (declare (not safe))
                     (_find-deps158562_ _rest158590_ _deps158570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd158591_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest158571158579_))
                           (let ((_hd158576158614_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest158571158579_)))
                                 (_tl158577158616_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest158571158579_))))
                             (let* ((_hd158619_ _hd158576158614_)
                                    (_rest158621_ _tl158577158616_))
                               (declare (not safe))
                               (_K158575158611_ _rest158621_ _hd158619_)))
                           (let ()
                             (declare (not safe))
                             (_else158573158587_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp159360
                                  (let ((_$e158564_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx158558_))))
                                    (if _$e158564_
                                        ((lambda (_pre158567_)
                                           (let ((__tmp159361
                                                  (##structure-ref
                                                   _ctx158558_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre158567_ __tmp159361)))
                                         _$e158564_)
                                        (##structure-ref
                                         _ctx158558_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps158562_ __tmp159360 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx158489_)
        (let* ((_context-id158491_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx158489_
                       'gx#module-context::t))
                    (##structure-ref _ctx158489_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx158489_)))
               (_scm158493_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id158491_))
                 '".scm"))
               (_dirs158495_ (gx#current-expander-module-library-path))
               (_dirs158501_
                (let ((_user-libpath158497_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath158497_
                      (let ((_user-libpath158499_
                             (path-expand '"lib" _user-libpath158497_)))
                        (if (member _user-libpath158499_ _dirs158495_)
                            _dirs158495_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath158499_ _dirs158495_))))
                      _dirs158495_)))
               (_dirs158510_
                (let ((_$e158503_ (gxc#current-compile-output-dir)))
                  (if _$e158503_
                      ((lambda (_g158505158507_)
                         (let ()
                           (declare (not safe))
                           (cons _g158505158507_ _dirs158501_)))
                       _$e158503_)
                      _dirs158501_)))
               (_dirs158516_
                (map (lambda (_g158511158513_)
                       (path-expand '"static" _g158511158513_))
                     _dirs158510_)))
          (let _lp158519_ ((_rest158521_ _dirs158516_))
            (let* ((_rest158522158530_ _rest158521_)
                   (_else158524158538_
                    (lambda ()
                      (let ((__tmp159362
                             (##structure-ref
                              _ctx158489_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp159362
                         _scm158493_))))
                   (_K158526158546_
                    (lambda (_rest158541_ _dir158542_)
                      (let ((_path158544_
                             (path-expand _scm158493_ _dir158542_)))
                        (if (file-exists? _path158544_)
                            _path158544_
                            (let ()
                              (declare (not safe))
                              (_lp158519_ _rest158541_)))))))
              (if (let () (declare (not safe)) (##pair? _rest158522158530_))
                  (let ((_hd158527158549_
                         (let ()
                           (declare (not safe))
                           (##car _rest158522158530_)))
                        (_tl158528158551_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158522158530_))))
                    (let* ((_dir158554_ _hd158527158549_)
                           (_rest158556_ _tl158528158551_))
                      (declare (not safe))
                      (_K158526158546_ _rest158556_ _dir158554_)))
                  (let () (declare (not safe)) (_else158524158538_))))))))
    (define gxc#file-empty?
      (lambda (_path158487_)
        (let ((__tmp159363 (file-info-size (file-info _path158487_ '#t))))
          (declare (not safe))
          (zero? __tmp159363))))
    (define gxc#compile-top-module
      (lambda (_ctx158476_)
        (let ((__tmp159367
               (lambda ()
                 (let ((__tmp159368
                        (##structure-ref
                         _ctx158476_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp159368))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp159369
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx158476_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp159369))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx158476_))
                 (if (let ((__tmp159372
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx158476_))))
                       (declare (not safe))
                       (null? __tmp159372))
                     (let* ((_thr1158481_
                             (let ((__tmp159370
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx158476_)))))
                               (declare (not safe))
                               (spawn __tmp159370)))
                            (_thr2158484_
                             (let ((__tmp159371
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx158476_)))))
                               (declare (not safe))
                               (spawn __tmp159371))))
                       (let () (declare (not safe)) (gxc#join! _thr1158481_))
                       (let () (declare (not safe)) (gxc#join! _thr2158484_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx158476_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx158476_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx158476_))
                     '#!void)))
              (__tmp159366
               (let ((__obj159174
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj159174)
                 __obj159174))
              (__tmp159365 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp159364 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp159367
           gx#current-expander-context
           _ctx158476_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp159366
           gxc#current-compile-runtime-sections
           __tmp159365
           gxc#current-compile-runtime-names
           __tmp159364))))
    (define gxc#collect-bindings
      (lambda (_ctx158474_)
        (let ((__tmp159373
               (##structure-ref _ctx158474_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp159373))))
    (define gxc#compile-runtime-code
      (lambda (_ctx158420_)
        (letrec ((_compile1158422_
                  (lambda (_ctx158463_)
                    (let* ((_code158465_
                            (##structure-ref
                             _ctx158463_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt158469_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code158465_))
                                (let ((_idstr158467_
                                       (let ((__tmp159374
                                              (##structure-ref
                                               _ctx158463_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp159374))))
                                  (string-append _idstr158467_ '"__0"))
                                '#f)))
                      (if _rt158469_
                          (begin
                            (let ((__tmp159375
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp159375 _ctx158463_ _rt158469_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code158424_
                               _ctx158463_
                               _code158465_)))
                          (let ((_path158472_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx158463_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path158472_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code158425_
                         _ctx158463_
                         _code158465_
                         _rt158469_)))))
                 (_context-timestamp158423_
                  (lambda (_ctx158461_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx158461_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code158424_
                  (lambda (_ctx158443_ _code158444_)
                    (let* ((_lifts158446_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code158449_
                            (let ((__tmp159378
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code158444_))))
                                  (__tmp159377
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp159376
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp159378
                               gx#current-expander-context
                               _ctx158443_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts158446_
                               gxc#current-compile-marks
                               __tmp159377
                               gxc#current-compile-identifiers
                               __tmp159376)))
                           (_runtime-code158451_
                            (if (let ((__tmp159382 (unbox _lifts158446_)))
                                  (declare (not safe))
                                  (null? __tmp159382))
                                _runtime-code158449_
                                (let ((__tmp159379
                                       (let ((__tmp159381
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code158449_
                                                      '())))
                                             (__tmp159380
                                              (reverse (unbox _lifts158446_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp159381
                                                 __tmp159380))))
                                  (declare (not safe))
                                  (cons 'begin __tmp159379))))
                           (_runtime-code158453_
                            (let ((__tmp159383
                                   (let ((__tmp159385
                                          (let ((__tmp159386
                                                 (let ((__tmp159389
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp158423_
                                                           _ctx158443_)))
                                                       (__tmp159387
                                                        (let ((__tmp159388
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp159388
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp159389
                                                         __tmp159387))))
                                            (declare (not safe))
                                            (cons 'define __tmp159386)))
                                         (__tmp159384
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code158451_ '()))))
                                     (declare (not safe))
                                     (cons __tmp159385 __tmp159384))))
                              (declare (not safe))
                              (cons 'begin __tmp159383)))
                           (_scm0158455_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx158443_
                               '0
                               '".scm"))))
                      (let ((_scms158458_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx158443_))))
                        (let ((__tmp159390
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0158455_
                                    _runtime-code158453_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp159390
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms158458_)
                            (delete-file _scms158458_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0158455_
                           '" => "
                           _scms158458_))
                        (copy-file _scm0158455_ _scms158458_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0158455_))))))
                 (_generate-loader-code158425_
                  (lambda (_ctx158432_ _code158433_ _rt158434_)
                    (let* ((_loader-code158437_
                            (let ((__tmp159391
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code158433_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp159391
                               gx#current-expander-context
                               _ctx158432_)))
                           (_loader-code158439_
                            (if _rt158434_
                                (let ((__tmp159392
                                       (let ((__tmp159393
                                              (let ((__tmp159394
                                                     (let ((__tmp159395
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt158434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp159395))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159394 '()))))
                                         (declare (not safe))
                                         (cons _loader-code158437_
                                               __tmp159393))))
                                  (declare (not safe))
                                  (cons 'begin __tmp159392))
                                _loader-code158437_)))
                      (let ((__tmp159396
                             (lambda ()
                               (let ((__tmp159397
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx158432_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp159397
                                  _loader-code158439_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp159396
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules158427_
                 (let ((__tmp159398
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx158420_))))
                   (declare (not safe))
                   (cons _ctx158420_ __tmp159398))))
            (for-each
             (lambda (_ctx158429_)
               (let ((__tmp159399
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1158422_ _ctx158429_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp159399
                  gxc#current-compile-decls
                  '())))
             _all-modules158427_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx158317_)
        (letrec ((_compile-ssi158319_
                  (lambda (_code158390_)
                    (let* ((_path158392_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx158317_
                               '#f
                               '".ssi")))
                           (_prelude158403_
                            (let* ((_super158394_
                                    (##structure-ref
                                     _ctx158317_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e158396_
                                    (##structure-ref
                                     _super158394_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e158396_
                                  ((lambda (_g158398158400_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g158398158400_)))
                                   _$e158396_)
                                  ':<root>)))
                           (_ns158405_
                            (##structure-ref
                             _ctx158317_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr158407_
                            (symbol->string
                             (##structure-ref
                              _ctx158317_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg158414_
                            (let ((_$e158409_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr158407_ '#\/))))
                              (if _$e158409_
                                  ((lambda (_x158412_)
                                     (string->symbol
                                      (substring _idstr158407_ '0 _x158412_)))
                                   _$e158409_)
                                  '#f)))
                           (_rt158416_
                            (let ((__tmp159400
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp159400 _ctx158317_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path158392_))
                      (let ((__tmp159401
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude158403_))
                               (if _pkg158414_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg158414_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns158405_))
                               (newline)
                               (pretty-print _code158390_)
                               (if _rt158416_
                                   (pretty-print
                                    (let ((__tmp159402
                                           (let ((__tmp159406
                                                  (let ((__tmp159407
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp159407)))
                                                 (__tmp159403
                                                  (let ((__tmp159404
                                                         (let ((__tmp159405
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt158416_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp159405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp159404 '()))))
                                             (declare (not safe))
                                             (cons __tmp159406 __tmp159403))))
                                      (declare (not safe))
                                      (cons '%#call __tmp159402)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path158392_
                         __tmp159401)))))
                 (_compile-phi158320_
                  (lambda (_part158330_)
                    (let* ((_part158331158344_ _part158330_)
                           (_E158333158348_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part158331158344_))))
                           (_K158334158359_
                            (lambda (_code158351_
                                     _n158352_
                                     _phi158353_
                                     _phi-ctx158354_)
                              (let* ((_code158357_
                                      (let ((__tmp159408
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code158351_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp159408
                                         gx#current-expander-context
                                         _phi-ctx158354_
                                         gx#current-expander-phi
                                         _phi158353_)))
                                     (__tmp159409
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx158317_
                                         _n158352_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp159409
                                 _code158357_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part158331158344_))
                          (let ((_hd158335158362_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part158331158344_)))
                                (_tl158336158364_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part158331158344_))))
                            (let ((_phi-ctx158367_ _hd158335158362_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl158336158364_))
                                  (let ((_hd158337158369_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl158336158364_)))
                                        (_tl158338158371_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl158336158364_))))
                                    (let ((_phi158374_ _hd158337158369_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl158338158371_))
                                          (let ((_hd158339158376_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl158338158371_)))
                                                (_tl158340158378_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl158338158371_))))
                                            (let ((_n158381_ _hd158339158376_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl158340158378_))
                                                  (let ((_hd158341158383_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl158340158378_)))
                                                        (_tl158342158385_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl158340158378_))))
                                                    (let ((_code158388_
                                                           _hd158341158383_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl158342158385_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K158334158359_
                                                             _code158388_
                                                             _n158381_
                                                             _phi158374_
                                                             _phi-ctx158367_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E158333158348_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E158333158348_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E158333158348_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E158333158348_)))))
                          (let () (declare (not safe)) (_E158333158348_)))))))
          (let ((_g159410_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx158317_))))
            (begin
              (let ((_g159411_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g159410_)
                           (##vector-length _g159410_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g159411_ 2)))
                    (error "Context expects 2 values" _g159411_)))
              (let ((_ssi-code158322_
                     (let () (declare (not safe)) (##vector-ref _g159410_ 0)))
                    (_phi-code158323_
                     (let () (declare (not safe)) (##vector-ref _g159410_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi158319_ _ssi-code158322_))
                  (let ((_threads158328_
                         (map (lambda (_code158325_)
                                (let ((__tmp159412
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi158320_
                                            _code158325_)))))
                                  (declare (not safe))
                                  (spawn __tmp159412)))
                              _phi-code158323_)))
                    (for-each gxc#join! _threads158328_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx158300_)
        (let* ((_path158302_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx158300_ '#f '".ssxi.ss")))
               (_code158304_
                (let ((__tmp159413
                       (##structure-ref
                        _ctx158300_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp159413)))
               (_idstr158306_
                (symbol->string
                 (##structure-ref _ctx158300_ '1 gx#expander-context::t '#f)))
               (_pkg158313_
                (let ((_$e158308_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr158306_ '#\/))))
                  (if _$e158308_
                      ((lambda (_x158311_)
                         (string->symbol
                          (substring _idstr158306_ '0 _x158311_)))
                       _$e158308_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path158302_))
          (let ((__tmp159414
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg158313_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg158313_))
                       '#!void)
                   (newline)
                   (pretty-print _code158304_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path158302_ __tmp159414)))))
    (define gxc#generate-meta-code
      (lambda (_ctx158293_)
        (let* ((_state158295_
                (let ((__obj159175
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj159175 _ctx158293_)
                  __obj159175))
               (_ssi-code158297_
                (let ((__tmp159415
                       (##structure-ref
                        _ctx158293_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp159415
                   'state:
                   _state158295_))))
          (values _ssi-code158297_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state158295_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx158286_)
        (let ((_lifts158288_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp159418
                 (lambda ()
                   (let ((_code158291_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx158286_))))
                     (if (let ((__tmp159422 (unbox _lifts158288_)))
                           (declare (not safe))
                           (null? __tmp159422))
                         _code158291_
                         (let ((__tmp159419
                                (let ((__tmp159421
                                       (let ()
                                         (declare (not safe))
                                         (cons _code158291_ '())))
                                      (__tmp159420
                                       (reverse (unbox _lifts158288_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp159421 __tmp159420))))
                           (declare (not safe))
                           (cons 'begin __tmp159419))))))
                (__tmp159417
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp159416
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp159418
             gxc#current-compile-lift
             _lifts158288_
             gxc#current-compile-marks
             __tmp159417
             gxc#current-compile-identifiers
             __tmp159416)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx158282_)
        (let ((_modules158284_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp159423
                 (##structure-ref _ctx158282_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp159423 'modules: _modules158284_))
          (reverse (unbox _modules158284_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path158265_ _code158266_ _phi?158267_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path158265_))
        (let ((__tmp159424
               (lambda ()
                 (pretty-print
                  (let ((__tmp159425
                         (let ((__tmp159432
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp159426
                                (let ((__tmp159431
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp159427
                                       (let ((__tmp159430
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp159428
                                              (let ((__tmp159429
                                                     (if _phi?158267_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp159429))))
                                         (declare (not safe))
                                         (cons __tmp159430 __tmp159428))))
                                  (declare (not safe))
                                  (cons __tmp159431 __tmp159427))))
                           (declare (not safe))
                           (cons __tmp159432 __tmp159426))))
                    (declare (not safe))
                    (cons 'declare __tmp159425)))
                 (pretty-print _code158266_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path158265_ __tmp159424))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path158265_ _phi?158267_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path158265_))))
    (define gxc#compile-scm-file__0
      (lambda (_path158273_ _code158274_)
        (let ((_phi?158276_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path158273_ _code158274_ _phi?158276_))))
    (define gxc#compile-scm-file
      (lambda _g159434_
        (let ((_g159433_ (let () (declare (not safe)) (##length _g159434_))))
          (cond ((let () (declare (not safe)) (##fx= _g159433_ 2))
                 (apply (lambda (_path158273_ _code158274_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path158273_
                             _code158274_)))
                        _g159434_))
                ((let () (declare (not safe)) (##fx= _g159433_ 3))
                 (apply (lambda (_path158278_ _code158279_ _phi?158280_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path158278_
                             _code158279_
                             _phi?158280_)))
                        _g159434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g159434_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?158166_)
        (let _lp158168_ ((_rest158170_ (gxc#current-compile-gsc-options))
                         (_opts158171_ '()))
          (let* ((_rest158172158192_ _rest158170_)
                 (_else158176158200_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?158166_))
                             (gxc#current-compile-debug))
                        (let ((__tmp159435
                               (let ((__tmp159436 (reverse _opts158171_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp159436))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp159435))
                        (reverse _opts158171_)))))
            (let ((_K158186158243_
                   (lambda (_rest158241_)
                     (let ()
                       (declare (not safe))
                       (_lp158168_ _rest158241_ _opts158171_))))
                  (_K158181158225_
                   (lambda (_rest158223_)
                     (let ()
                       (declare (not safe))
                       (_lp158168_ _rest158223_ _opts158171_))))
                  (_K158178158207_
                   (lambda (_rest158204_ _opt158205_)
                     (let ((__tmp159437
                            (let ()
                              (declare (not safe))
                              (cons _opt158205_ _opts158171_))))
                       (declare (not safe))
                       (_lp158168_ _rest158204_ __tmp159437)))))
              (if (let () (declare (not safe)) (##pair? _rest158172158192_))
                  (let ((_tl158188158248_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158172158192_)))
                        (_hd158187158246_
                         (let ()
                           (declare (not safe))
                           (##car _rest158172158192_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158187158246_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158188158248_))
                            (let* ((_tl158190158251_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl158188158248_)))
                                   (_rest158254_ _tl158190158251_))
                              (declare (not safe))
                              (_K158186158243_ _rest158254_))
                            (let ((_opt158215_ _hd158187158246_)
                                  (_rest158217_ _tl158188158248_))
                              (let ()
                                (declare (not safe))
                                (_K158178158207_ _rest158217_ _opt158215_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158187158246_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158188158248_))
                                (let* ((_tl158185158233_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl158188158248_)))
                                       (_rest158236_ _tl158185158233_))
                                  (declare (not safe))
                                  (_K158181158225_ _rest158236_))
                                (let ((_opt158215_ _hd158187158246_)
                                      (_rest158217_ _tl158188158248_))
                                  (let ()
                                    (declare (not safe))
                                    (_K158178158207_
                                     _rest158217_
                                     _opt158215_))))
                            (let ((_opt158215_ _hd158187158246_)
                                  (_rest158217_ _tl158188158248_))
                              (let ()
                                (declare (not safe))
                                (_K158178158207_ _rest158217_ _opt158215_))))))
                  (let () (declare (not safe)) (_else158176158200_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?158260_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?158260_))))
    (define gxc#gsc-link-options
      (lambda _g159439_
        (let ((_g159438_ (let () (declare (not safe)) (##length _g159439_))))
          (cond ((let () (declare (not safe)) (##fx= _g159438_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g159439_))
                ((let () (declare (not safe)) (##fx= _g159438_ 1))
                 (apply (lambda (_phi?158262_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?158262_)))
                        _g159439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g159439_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?158067_)
        (let _lp158069_ ((_rest158071_ (gxc#current-compile-gsc-options))
                         (_opts158072_ '()))
          (let* ((_rest158073158093_ _rest158071_)
                 (_else158077158101_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?158067_))
                             (gxc#current-compile-debug))
                        (let ((__tmp159440
                               (let ((__tmp159441 (reverse _opts158072_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp159441))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp159440))
                        (reverse _opts158072_)))))
            (let ((_K158087158140_
                   (lambda (_rest158137_ _opt158138_)
                     (let ((__tmp159442
                            (let ((__tmp159443
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts158072_))))
                              (declare (not safe))
                              (cons _opt158138_ __tmp159443))))
                       (declare (not safe))
                       (_lp158069_ _rest158137_ __tmp159442))))
                  (_K158082158121_
                   (lambda (_rest158119_)
                     (let ()
                       (declare (not safe))
                       (_lp158069_ _rest158119_ _opts158072_))))
                  (_K158079158107_
                   (lambda (_rest158105_)
                     (let ()
                       (declare (not safe))
                       (_lp158069_ _rest158105_ _opts158072_)))))
              (if (let () (declare (not safe)) (##pair? _rest158073158093_))
                  (let ((_tl158089158145_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158073158093_)))
                        (_hd158088158143_
                         (let ()
                           (declare (not safe))
                           (##car _rest158073158093_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158088158143_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158089158145_))
                            (let ((_tl158091158150_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl158089158145_)))
                                  (_hd158090158148_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl158089158145_))))
                              (let ((_opt158153_ _hd158090158148_)
                                    (_rest158155_ _tl158091158150_))
                                (let ()
                                  (declare (not safe))
                                  (_K158087158140_ _rest158155_ _opt158153_))))
                            (let ((_rest158113_ _tl158089158145_))
                              (declare (not safe))
                              (_K158079158107_ _rest158113_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158088158143_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158089158145_))
                                (let* ((_tl158086158129_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl158089158145_)))
                                       (_rest158132_ _tl158086158129_))
                                  (declare (not safe))
                                  (_K158082158121_ _rest158132_))
                                (let ((_rest158113_ _tl158089158145_))
                                  (declare (not safe))
                                  (_K158079158107_ _rest158113_)))
                            (let ((_rest158113_ _tl158089158145_))
                              (declare (not safe))
                              (_K158079158107_ _rest158113_)))))
                  (let () (declare (not safe)) (_else158077158101_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?158161_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?158161_))))
    (define gxc#gsc-cc-options
      (lambda _g159445_
        (let ((_g159444_ (let () (declare (not safe)) (##length _g159445_))))
          (cond ((let () (declare (not safe)) (##fx= _g159444_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g159445_))
                ((let () (declare (not safe)) (##fx= _g159444_ 1))
                 (apply (lambda (_phi?158163_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?158163_)))
                        _g159445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g159445_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir158062_)
        (let* ((_user-staticdir158064_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp159446
                (let ((__tmp159447
                       (string-append
                        '"-I "
                        _staticdir158062_
                        '" -I "
                        _user-staticdir158064_)))
                  (declare (not safe))
                  (cons __tmp159447 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp159446))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp157974_ ((_rest157976_ (gxc#current-compile-gsc-options))
                         (_opts157977_ '()))
          (let* ((_rest157978157998_ _rest157976_)
                 (_else157982158006_ (lambda () _opts157977_)))
            (let ((_K157992158049_
                   (lambda (_rest158047_)
                     (let ()
                       (declare (not safe))
                       (_lp157974_ _rest158047_ _opts157977_))))
                  (_K157987158027_
                   (lambda (_rest158024_ _opt158025_)
                     (let ((__tmp159448
                            (append _opts157977_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt158025_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp157974_ _rest158024_ __tmp159448))))
                  (_K157984158012_
                   (lambda (_rest158010_)
                     (let ()
                       (declare (not safe))
                       (_lp157974_ _rest158010_ _opts157977_)))))
              (if (let () (declare (not safe)) (##pair? _rest157978157998_))
                  (let ((_tl157994158054_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157978157998_)))
                        (_hd157993158052_
                         (let ()
                           (declare (not safe))
                           (##car _rest157978157998_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157993158052_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157994158054_))
                            (let* ((_tl157996158057_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157994158054_)))
                                   (_rest158060_ _tl157996158057_))
                              (declare (not safe))
                              (_K157992158049_ _rest158060_))
                            (let ((_rest158018_ _tl157994158054_))
                              (declare (not safe))
                              (_K157984158012_ _rest158018_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157993158052_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157994158054_))
                                (let ((_tl157991158037_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl157994158054_)))
                                      (_hd157990158035_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl157994158054_))))
                                  (let ((_opt158040_ _hd157990158035_)
                                        (_rest158042_ _tl157991158037_))
                                    (let ()
                                      (declare (not safe))
                                      (_K157987158027_
                                       _rest158042_
                                       _opt158040_))))
                                (let ((_rest158018_ _tl157994158054_))
                                  (declare (not safe))
                                  (_K157984158012_ _rest158018_)))
                            (let ((_rest158018_ _tl157994158054_))
                              (declare (not safe))
                              (_K157984158012_ _rest158018_)))))
                  (let () (declare (not safe)) (_else157982158006_))))))))
    (define gxc#not-string-empty?
      (lambda (_str157971_)
        (let ((__tmp159449
               (let () (declare (not safe)) (string-empty? _str157971_))))
          (declare (not safe))
          (not __tmp159449))))
    (define gxc#gsc-compile-file
      (lambda (_path157939_ _phi?157940_)
        (letrec ((_gsc-link-path157942_
                  (lambda (_base-path157963_)
                    (let _lp157965_ ((_n157967_ '1))
                      (let ((_path157969_
                             (string-append
                              _base-path157963_
                              '".o"
                              (number->string _n157967_))))
                        (if (file-exists? _path157969_)
                            (let ((__tmp159450
                                   (let ()
                                     (declare (not safe))
                                     (+ _n157967_ '1))))
                              (declare (not safe))
                              (_lp157965_ __tmp159450))
                            _path157969_))))))
          (let* ((_base-path157944_ (path-strip-extension _path157939_))
                 (_path-c157946_ (string-append _base-path157944_ '".c"))
                 (_path-o157948_ (string-append _base-path157944_ '".o"))
                 (_link-path157950_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path157942_ _base-path157944_)))
                 (_link-path-c157952_ (string-append _link-path157950_ '".c"))
                 (_link-path-o157954_ (string-append _link-path157950_ '".o"))
                 (_gsc-link-opts157956_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?157940_)))
                 (_gsc-cc-opts157958_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?157940_)))
                 (_gcc-ld-opts157960_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp159457 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp159451
                   (let ((__tmp159452
                          (let ((__tmp159453
                                 (let ((__tmp159454
                                        (let ((__tmp159455
                                               (let ((__tmp159456
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path157939_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp159456
                                                         _gsc-link-opts157956_))))
                                          (declare (not safe))
                                          (cons _link-path-c157952_
                                                __tmp159455))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp159454))))
                            (declare (not safe))
                            (cons '"-flat" __tmp159453))))
                     (declare (not safe))
                     (cons '"-link" __tmp159452))))
              (declare (not safe))
              (gxc#invoke __tmp159457 __tmp159451 'stdout-redirection: '#t))
            (let ((__tmp159464 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp159458
                   (let ((__tmp159459
                          (let ((__tmp159460
                                 (let ((__tmp159461
                                        (let ((__tmp159462
                                               (let ((__tmp159463
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c157952_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c157946_
                                                       __tmp159463))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp159462
                                                  _gsc-cc-opts157958_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp159461))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp159460))))
                     (declare (not safe))
                     (cons '"-obj" __tmp159459))))
              (declare (not safe))
              (gxc#invoke __tmp159464 __tmp159458 'stdout-redirection: '#t))
            (let ((__tmp159470 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp159465
                   (let ((__tmp159466
                          (let ((__tmp159467
                                 (let ((__tmp159468
                                        (let ((__tmp159469
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o157954_
                                                       _gcc-ld-opts157960_))))
                                          (declare (not safe))
                                          (cons _path-o157948_ __tmp159469))))
                                   (declare (not safe))
                                   (cons _link-path157950_ __tmp159468))))
                            (declare (not safe))
                            (cons '"-o" __tmp159467))))
                     (declare (not safe))
                     (cons '"-shared" __tmp159466))))
              (declare (not safe))
              (gxc#invoke __tmp159470 __tmp159465))
            (for-each
             delete-file
             (let ((__tmp159471
                    (let ((__tmp159472
                           (let ((__tmp159473
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o157954_ '()))))
                             (declare (not safe))
                             (cons _link-path-c157952_ __tmp159473))))
                      (declare (not safe))
                      (cons _path-o157948_ __tmp159472))))
               (declare (not safe))
               (cons _path-c157946_ __tmp159471)))))))
    (define gxc#compile-output-file
      (lambda (_ctx157910_ _n157911_ _ext157912_)
        (letrec ((_module-relative-path157914_
                  (lambda (_ctx157937_)
                    (path-strip-directory
                     (let ((__tmp159474
                            (##structure-ref
                             _ctx157937_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp159474)))))
                 (_module-source-directory157915_
                  (lambda (_ctx157933_)
                    (path-directory
                     (let ((_mpath157935_
                            (##structure-ref
                             _ctx157933_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath157935_))
                           _mpath157935_
                           (last _mpath157935_))))))
                 (_section-string157916_
                  (lambda (_n157931_)
                    (if (let () (declare (not safe)) (number? _n157931_))
                        (number->string _n157931_)
                        (if (let () (declare (not safe)) (symbol? _n157931_))
                            (symbol->string _n157931_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n157931_))
                                _n157931_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n157931_)))))))
                 (_file-name157917_
                  (lambda (_path157929_)
                    (if _n157911_
                        (string-append
                         _path157929_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string157916_ _n157911_))
                         _ext157912_)
                        (string-append _path157929_ _ext157912_))))
                 (_file-path157918_
                  (lambda ()
                    (let ((_$e157924_ (gxc#current-compile-output-dir)))
                      (if _$e157924_
                          ((lambda (_outdir157927_)
                             (path-expand
                              (let ((__tmp159476
                                     (let ((__tmp159477
                                            (##structure-ref
                                             _ctx157910_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp159477))))
                                (declare (not safe))
                                (_file-name157917_ __tmp159476))
                              _outdir157927_))
                           _$e157924_)
                          (path-expand
                           (let ((__tmp159475
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path157914_
                                     _ctx157910_))))
                             (declare (not safe))
                             (_file-name157917_ __tmp159475))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory157915_
                              _ctx157910_))))))))
          (let ((_path157920_
                 (let () (declare (not safe)) (_file-path157918_))))
            (let ((__tmp159478
                   (lambda ()
                     (let ((__tmp159479 (path-directory _path157920_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp159479)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp159478))
            _path157920_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx157892_)
        (letrec ((_file-name157894_
                  (lambda (_id157908_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id157908_))
                     '".scm")))
                 (_file-path157895_
                  (lambda ()
                    (let* ((_file157901_
                            (let ((__tmp159480
                                   (##structure-ref
                                    _ctx157892_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name157894_ __tmp159480)))
                           (_$e157903_ (gxc#current-compile-output-dir)))
                      (if _$e157903_
                          ((lambda (_outdir157906_)
                             (path-expand
                              _file157901_
                              (path-expand '"static" _outdir157906_)))
                           _$e157903_)
                          (path-expand _file157901_ '"static"))))))
          (let ((_path157897_
                 (let () (declare (not safe)) (_file-path157895_))))
            (let ((__tmp159481
                   (lambda ()
                     (let ((__tmp159482 (path-directory _path157897_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp159482)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp159481))
            _path157897_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx157886_ _opts157887_)
        (let ((_$e157889_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts157887_))))
          (if _$e157889_
              (values _$e157889_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx157886_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr157879_)
        (if (let () (declare (not safe)) (string? _idstr157879_))
            (let* ((_str157881_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr157879_)))
                   (_strs157883_
                    (let ()
                      (declare (not safe))
                      (string-split _str157881_ '#\/))))
              (let () (declare (not safe)) (string-join _strs157883_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr157879_))
                (let ((__tmp159483 (symbol->string _idstr157879_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp159483))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr157879_))))))
    (define gxc#invoke__%
      (lambda (_g159484_
               _stdout-redirection157840157844_
               _stderr-redirection157841157846_
               _program157848_
               _args157849_)
        (let* ((_stdout-redirection157851_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection157840157844_ absent-value))
                    '#f
                    _stdout-redirection157840157844_))
               (_stderr-redirection157853_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection157841157846_ absent-value))
                    '#f
                    _stderr-redirection157841157846_)))
          (let ((__tmp159485
                 (let ()
                   (declare (not safe))
                   (cons _program157848_ _args157849_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp159485))
          (let* ((_proc157855_
                  (open-process
                   (let ((__tmp159486
                          (let ((__tmp159487
                                 (let ((__tmp159488
                                        (let ((__tmp159489
                                               (let ((__tmp159490
                                                      (let ((__tmp159491
                                                             (let ((__tmp159492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection157853_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp159492))))
                (declare (not safe))
                (cons _stdout-redirection157851_ __tmp159491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp159490))))
                                          (declare (not safe))
                                          (cons _args157849_ __tmp159489))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp159488))))
                            (declare (not safe))
                            (cons _program157848_ __tmp159487))))
                     (declare (not safe))
                     (cons 'path: __tmp159486))))
                 (_output157860_
                  (if (or _stdout-redirection157851_
                          _stderr-redirection157853_)
                      (read-line _proc157855_ '#f)
                      '#f)))
            (let ((_status157863_ (process-status _proc157855_)))
              (close-port _proc157855_)
              (if (let () (declare (not safe)) (zero? _status157863_))
                  '#!void
                  (begin
                    (display _output157860_)
                    (let ((__tmp159493
                           (let ()
                             (declare (not safe))
                             (cons _program157848_ _args157849_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp159493
                       _status157863_)))))))))
    (define gxc#invoke__@
      (lambda (_keys157839157868_ . _args157870_)
        (apply gxc#invoke__%
               _keys157839157868_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157839157868_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157839157868_
                  'stderr-redirection:
                  absent-value))
               _args157870_)))
    (define gxc#invoke
      (lambda _args157842157876_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args157842157876_)))
    (define gxc#join!
      (lambda (_thread157833_)
        (let ((__tmp159495
               (lambda (_exn157835_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn157835_))
                     (let ((__tmp159496
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn157835_))))
                       (declare (not safe))
                       (raise __tmp159496))
                     (let () (declare (not safe)) (raise _exn157835_)))))
              (__tmp159494 (lambda () (thread-join! _thread157833_))))
          (declare (not safe))
          (with-catch __tmp159495 __tmp159494))))))
