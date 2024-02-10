(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707573218)
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
      (lambda (_path288588_ _fun288589_)
        (with-output-to-file
         (let ((__tmp293150
                (let ()
                  (declare (not safe))
                  (cons _path288588_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp293150))
         _fun288589_)))
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
      (lambda (_gerbil-libdir288583_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir288583_)))
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
      (lambda (_dir288581_) (delete-file-or-directory _dir288581_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath288555_ _opts288556_)
        (if (let () (declare (not safe)) (string? _srcpath288555_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288555_)))
        (let ((_outdir288558_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288556_)))
              (_invoke-gsc?288559_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288556_)))
              (_gsc-options288560_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288556_)))
              (_keep-scm?288561_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288556_)))
              (_verbosity288562_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288556_)))
              (_optimize288563_
               (let () (declare (not safe)) (pgetq 'optimize: _opts288556_)))
              (_debug288564_
               (let () (declare (not safe)) (pgetq 'debug: _opts288556_)))
              (_gen-ssxi288565_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts288556_))))
          (if _outdir288558_
              (let ((__tmp293151
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288558_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293151))
              '#!void)
          (if _optimize288563_
              (let ((__tmp293152
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293152))
              '#!void)
          (let ((__tmp293156
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath288555_))
                   (let ((__tmp293157
                          (let ((__tmp293158
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288555_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp293158))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp293157))))
                (__tmp293155
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp293153
                 (let ((__tmp293154
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288555_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp293154))))
            (declare (not safe))
            (call-with-parameters
             __tmp293156
             gxc#current-compile-output-dir
             _outdir288558_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288559_
             gxc#current-compile-gsc-options
             _gsc-options288560_
             gxc#current-compile-keep-scm
             _keep-scm?288561_
             gxc#current-compile-verbose
             _verbosity288562_
             gxc#current-compile-optimize
             _optimize288563_
             gxc#current-compile-debug
             _debug288564_
             gxc#current-compile-generate-ssxi
             _gen-ssxi288565_
             gxc#current-compile-timestamp
             __tmp293155
             gxc#current-compile-context
             __tmp293153
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath288574_)
        (let ((_opts288576_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath288574_ _opts288576_))))
    (define gxc#compile-module
      (lambda _g293160_
        (let ((_g293159_ (let () (declare (not safe)) (##length _g293160_))))
          (cond ((let () (declare (not safe)) (##fx= _g293159_ 1))
                 (apply (lambda (_srcpath288574_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath288574_)))
                        _g293160_))
                ((let () (declare (not safe)) (##fx= _g293159_ 2))
                 (apply (lambda (_srcpath288578_ _opts288579_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath288578_
                             _opts288579_)))
                        _g293160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g293160_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath288531_ _opts288532_)
        (if (let () (declare (not safe)) (string? _srcpath288531_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288531_)))
        (let ((_outdir288534_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288532_)))
              (_invoke-gsc?288535_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288532_)))
              (_gsc-options288536_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288532_)))
              (_keep-scm?288537_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288532_)))
              (_verbosity288538_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288532_)))
              (_debug288539_
               (let () (declare (not safe)) (pgetq 'debug: _opts288532_))))
          (if _outdir288534_
              (let ((__tmp293161
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288534_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293161))
              '#!void)
          (let ((__tmp293165
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath288531_))
                   (let ((__tmp293166
                          (let ((__tmp293167
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288531_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp293167))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp293166
                      _opts288532_))))
                (__tmp293164
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp293162
                 (let ((__tmp293163
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288531_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp293163))))
            (declare (not safe))
            (call-with-parameters
             __tmp293165
             gxc#current-compile-output-dir
             _outdir288534_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288535_
             gxc#current-compile-gsc-options
             _gsc-options288536_
             gxc#current-compile-keep-scm
             _keep-scm?288537_
             gxc#current-compile-verbose
             _verbosity288538_
             gxc#current-compile-debug
             _debug288539_
             gxc#current-compile-timestamp
             __tmp293164
             gxc#current-compile-context
             __tmp293162
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath288547_)
        (let ((_opts288549_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath288547_ _opts288549_))))
    (define gxc#compile-exe
      (lambda _g293169_
        (let ((_g293168_ (let () (declare (not safe)) (##length _g293169_))))
          (cond ((let () (declare (not safe)) (##fx= _g293168_ 1))
                 (apply (lambda (_srcpath288547_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath288547_)))
                        _g293169_))
                ((let () (declare (not safe)) (##fx= _g293168_ 2))
                 (apply (lambda (_srcpath288551_ _opts288552_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath288551_ _opts288552_)))
                        _g293169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g293169_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx288527_ _opts288528_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts288528_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx288527_
               _opts288528_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx288527_
               _opts288528_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx288410_ _opts288411_)
        (letrec ((_generate-stub288413_
                  (lambda (_builtin-modules288523_)
                    (let ((_mod-main288525_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288410_ 'main))))
                      (write (let ((__tmp293170
                                    (let ((__tmp293171
                                           (let ((__tmp293172
                                                  (let ((__tmp293173
                                                         (let ((__tmp293175
                                                                (let ((__tmp293176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules288523_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp293176)))
                       (__tmp293174
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp293175 __tmp293174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp293173))))
                                             (declare (not safe))
                                             (cons __tmp293172 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp293171))))
                               (declare (not safe))
                               (cons 'define __tmp293170)))
                      (write (let ((__tmp293177
                                    (let ((__tmp293216
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp293178
                                           (let ((__tmp293179
                                                  (let ((__tmp293180
                                                         (let ((__tmp293204
                                                                (let ((__tmp293205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp293206
                                      (let ((__tmp293214
                                             (let ((__tmp293215
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp293215)))
                                            (__tmp293207
                                             (let ((__tmp293208
                                                    (let ((__tmp293209
                                                           (let ((__tmp293210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293211
                                 (let ((__tmp293212
                                        (let ((__tmp293213
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp293213 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp293212))))
                            (declare (not safe))
                            (cons __tmp293211 '()))))
                     (declare (not safe))
                     (cons _mod-main288525_ __tmp293210))))
              (declare (not safe))
              (cons 'apply __tmp293209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp293208 '()))))
                                        (declare (not safe))
                                        (cons __tmp293214 __tmp293207))))
                                 (declare (not safe))
                                 (cons '() __tmp293206))))
                          (declare (not safe))
                          (cons 'lambda __tmp293205)))
                       (__tmp293181
                        (let ((__tmp293182
                               (let ((__tmp293183
                                      (let ((__tmp293184
                                             (let ((__tmp293195
                                                    (let ((__tmp293196
                                                           (let ((__tmp293197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293198
                                 (let ((__tmp293199
                                        (let ((__tmp293200
                                               (let ((__tmp293201
                                                      (let ((__tmp293202
                                                             (let ((__tmp293203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp293203 '()))))
                (declare (not safe))
                (cons 'force-output __tmp293202))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp293201 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp293200))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp293199))))
                            (declare (not safe))
                            (cons __tmp293198 '()))))
                     (declare (not safe))
                     (cons 'void __tmp293197))))
              (declare (not safe))
              (cons 'with-catch __tmp293196)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp293185
                                                    (let ((__tmp293186
                                                           (let ((__tmp293187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293188
                                 (let ((__tmp293189
                                        (let ((__tmp293190
                                               (let ((__tmp293191
                                                      (let ((__tmp293192
                                                             (let ((__tmp293193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp293194
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp293194 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp293193))))
                (declare (not safe))
                (cons __tmp293192 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp293191))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp293190))))
                                   (declare (not safe))
                                   (cons __tmp293189 '()))))
                            (declare (not safe))
                            (cons 'void __tmp293188))))
                     (declare (not safe))
                     (cons 'with-catch __tmp293187))))
              (declare (not safe))
              (cons __tmp293186 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp293195
                                                     __tmp293185))))
                                        (declare (not safe))
                                        (cons '() __tmp293184))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp293183))))
                          (declare (not safe))
                          (cons __tmp293182 '()))))
                   (declare (not safe))
                   (cons __tmp293204 __tmp293181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp293180))))
                                             (declare (not safe))
                                             (cons __tmp293179 '()))))
                                      (declare (not safe))
                                      (cons __tmp293216 __tmp293178))))
                               (declare (not safe))
                               (cons 'define __tmp293177)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts288414_
                  (lambda (_libgerbil288521_)
                    (call-with-input-file
                     (string-append _libgerbil288521_ '".ldd")
                     read)))
                 (_replace-extension288415_
                  (lambda (_path288518_ _ext288519_)
                    (string-append
                     (path-strip-extension _path288518_)
                     _ext288519_)))
                 (_not-exclude-module?288416_
                  (lambda (_ctx288514_)
                    (let ((_id-str288516_
                           (symbol->string
                            (##structure-ref
                             _ctx288514_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp293218
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str288516_))))
                            (declare (not safe))
                            (not __tmp293218))
                          (let ((__tmp293217
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str288516_))))
                            (declare (not safe))
                            (not __tmp293217))
                          '#f))))
                 (_not-file-empty?288417_
                  (lambda (_path288512_)
                    (let ((__tmp293219
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path288512_))))
                      (declare (not safe))
                      (not __tmp293219))))
                 (_compile-stub288418_
                  (lambda (_output-scm288425_ _output-bin288426_)
                    (let* ((_gerbil-home288428_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288430_
                            (path-expand '"lib" _gerbil-home288428_))
                           (_gerbil-staticdir288432_
                            (path-expand '"static" _gerbil-libdir288430_))
                           (_gxlink288434_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir288430_))
                           (_tmp288436_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path288440_
                            (lambda (_f288438_)
                              (path-expand
                               (path-strip-directory _f288438_)
                               _tmp288436_)))
                           (_deps288442_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288410_)))
                           (_deps288444_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?288416_
                                      _deps288442_)))
                           (_src-deps-scm288446_
                            (map gxc#find-static-module-file _deps288444_))
                           (_src-deps-scm288448_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?288417_
                                      _src-deps-scm288446_)))
                           (_src-deps-scm288450_
                            (map path-expand _src-deps-scm288448_))
                           (_deps-scm288452_
                            (map _tmp-path288440_ _src-deps-scm288450_))
                           (_deps-c288458_
                            (map (lambda (_g288453288455_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288415_
                                      _g288453288455_
                                      '".c")))
                                 _deps-scm288452_))
                           (_deps-o288464_
                            (map (lambda (_g288459288461_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288415_
                                      _g288459288461_
                                      '".o")))
                                 _deps-scm288452_))
                           (_src-bin-scm288466_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288410_)))
                           (_src-bin-scm288468_
                            (path-expand _src-bin-scm288466_))
                           (_bin-scm288470_
                            (let ()
                              (declare (not safe))
                              (_tmp-path288440_ _src-bin-scm288468_)))
                           (_bin-c288472_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288415_
                               _bin-scm288470_
                               '".c")))
                           (_bin-o288474_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288415_
                               _bin-scm288470_
                               '".o")))
                           (_output-bin288476_
                            (path-expand _output-bin288426_))
                           (_output-scm288478_
                            (path-expand _output-scm288425_))
                           (_output-c288480_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288415_
                               _output-scm288478_
                               '".c")))
                           (_output-o288482_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288415_
                               _output-scm288478_
                               '".o")))
                           (_output_-c288484_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288415_
                               _output-scm288478_
                               '"_.c")))
                           (_output_-o288486_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288415_
                               _output-scm288478_
                               '"_.o")))
                           (_gsc-link-opts288488_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288490_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288492_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir288432_)))
                           (_output-ld-opts288494_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a288496_
                            (path-expand '"libgerbil.a" _gerbil-libdir288430_))
                           (_libgerbil.so288498_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir288430_))
                           (_libgerbil-ld-opts288500_
                            (if (file-exists? _libgerbil.so288498_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts288414_
                                   _libgerbil.so288498_))
                                (if (file-exists? _libgerbil.a288496_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts288414_
                                       _libgerbil.a288496_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a288496_
                                       _libgerbil.so288498_)))))
                           (_rpath288502_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288430_)))
                           (_builtin-modules288506_
                            (map (lambda (_mod288504_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod288504_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx288410_ _deps288444_)))))
                      (let ((__tmp293220
                             (lambda ()
                               (let ((__tmp293221
                                      (path-directory _output-bin288476_)))
                                 (declare (not safe))
                                 (create-directory* __tmp293221)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp293220))
                      (let ((__tmp293222
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub288413_
                                  _builtin-modules288506_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288478_
                         __tmp293222))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp293223
                                   (lambda () (create-directory _tmp288436_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp293223))
                            (for-each
                             copy-file
                             _src-deps-scm288450_
                             _deps-scm288452_)
                            (copy-file _src-bin-scm288468_ _bin-scm288470_)
                            (let ((__tmp293231
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293224
                                   (let ((__tmp293225
                                          (let ((__tmp293226
                                                 (let ((__tmp293227
                                                        (let ((__tmp293228
                                                               (let ((__tmp293229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293230
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm288478_ '()))))
                                (declare (not safe))
                                (cons _bin-scm288470_ __tmp293230))))
                         (declare (not safe))
                         (foldr1 cons __tmp293229 _deps-scm288452_))))
                  (declare (not safe))
                  (foldr1 cons __tmp293228 _gsc-link-opts288488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink288434_
                                                         __tmp293227))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp293226))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp293225))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293231
                               __tmp293224))
                            (let ((__tmp293239
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293232
                                   (let ((__tmp293233
                                          (let ((__tmp293234
                                                 (let ((__tmp293235
                                                        (let ((__tmp293236
                                                               (let ((__tmp293237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293238
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c288484_ '()))))
                                (declare (not safe))
                                (cons _output-c288480_ __tmp293238))))
                         (declare (not safe))
                         (cons _bin-c288472_ __tmp293237))))
                  (declare (not safe))
                  (foldr1 cons __tmp293236 _deps-c288458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293235
                                                           _gsc-static-opts288492_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp293234
                                                    _gsc-cc-opts288490_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp293233))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293239
                               __tmp293232))
                            (let ((__tmp293252
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp293240
                                   (let ((__tmp293241
                                          (let ((__tmp293242
                                                 (let ((__tmp293243
                                                        (let ((__tmp293244
                                                               (let ((__tmp293245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293246
                                     (let ((__tmp293247
                                            (let ((__tmp293248
                                                   (let ((__tmp293249
                                                          (let ((__tmp293250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp293251
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts288500_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp293251))))
                    (declare (not safe))
                    (cons _gerbil-libdir288430_ __tmp293250))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp293249))))
                                              (declare (not safe))
                                              (cons _rpath288502_
                                                    __tmp293248))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp293247
                                               _output-ld-opts288494_))))
                                (declare (not safe))
                                (cons _output_-o288486_ __tmp293246))))
                         (declare (not safe))
                         (cons _output-o288482_ __tmp293245))))
                  (declare (not safe))
                  (cons _bin-o288474_ __tmp293244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293243
                                                           _deps-o288464_))))
                                            (declare (not safe))
                                            (cons _output-bin288476_
                                                  __tmp293242))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp293241))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293252
                               __tmp293240))
                            (for-each
                             delete-file
                             (let ((__tmp293253
                                    (let ((__tmp293254
                                           (let ((__tmp293255
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o288486_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o288482_
                                                   __tmp293255))))
                                      (declare (not safe))
                                      (cons _output_-c288484_ __tmp293254))))
                               (declare (not safe))
                               (cons _output-c288480_ __tmp293253)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp288436_)))
                          '#!void)))))
          (let* ((_output-bin288420_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288410_ _opts288411_)))
                 (_output-scm288422_
                  (string-append _output-bin288420_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288418_ _output-scm288422_ _output-bin288420_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288422_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx288235_ _opts288236_)
        (letrec ((_reset-declare288238_
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
                 (_generate-stub288239_
                  (lambda (_deps288401_)
                    (let ((_mod-main288403_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288235_ 'main)))
                          (_reset-decl288404_
                           (let ()
                             (declare (not safe))
                             (_reset-declare288238_)))
                          (_user-decl288405_
                           (let ()
                             (declare (not safe))
                             (_user-declare288240_))))
                      (for-each
                       (lambda (_dep288407_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl288404_)
                         (newline)
                         (if _user-decl288405_
                             (begin (write _user-decl288405_) (newline))
                             '#!void)
                         (write (let ((__tmp293256
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep288407_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp293256)))
                         (newline))
                       _deps288401_)
                      (write (let ((__tmp293257
                                    (let ((__tmp293270
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp293258
                                           (let ((__tmp293266
                                                  (let ((__tmp293267
                                                         (let ((__tmp293268
                                                                (let ((__tmp293269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp293269))))
                   (declare (not safe))
                   (cons __tmp293268 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp293267)))
                                                 (__tmp293259
                                                  (let ((__tmp293260
                                                         (let ((__tmp293261
                                                                (let ((__tmp293262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp293263
                                      (let ((__tmp293264
                                             (let ((__tmp293265
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp293265 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp293264))))
                                 (declare (not safe))
                                 (cons __tmp293263 '()))))
                          (declare (not safe))
                          (cons _mod-main288403_ __tmp293262))))
                   (declare (not safe))
                   (cons 'apply __tmp293261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp293260 '()))))
                                             (declare (not safe))
                                             (cons __tmp293266 __tmp293259))))
                                      (declare (not safe))
                                      (cons __tmp293270 __tmp293258))))
                               (declare (not safe))
                               (cons 'define __tmp293257)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare288240_
                  (lambda ()
                    (let* ((_gsc-opts288306_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts288236_)))
                           (_gsc-prelude288308_
                            (if _gsc-opts288306_
                                (member '"-prelude" _gsc-opts288306_)
                                '#f))
                           (_gsc-prelude288310_
                            (if _gsc-prelude288308_
                                (read (open-input-string
                                       (cadr _gsc-prelude288308_)))
                                '#f)))
                      (let _lp288313_ ((_rest288315_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude288310_ '())))
                                       (_user-decls288316_ '()))
                        (let* ((_rest288317288325_ _rest288315_)
                               (_else288319288333_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls288316_))
                                      '#f
                                      (let ((__tmp293271
                                             (reverse _user-decls288316_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp293271)))))
                               (_K288321288389_
                                (lambda (_rest288336_ _expr288337_)
                                  (let* ((_expr288338288350_ _expr288337_)
                                         (_else288341288358_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp288313_
                                               _rest288336_
                                               _user-decls288316_)))))
                                    (let ((_K288346288379_
                                           (lambda (_decls288377_)
                                             (let ((__tmp293272
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls288316_
                                                              _decls288377_))))
                                               (declare (not safe))
                                               (_lp288313_
                                                _rest288336_
                                                __tmp293272))))
                                          (_K288343288364_
                                           (lambda (_exprs288362_)
                                             (let ((__tmp293273
                                                    (append _exprs288362_
                                                            _rest288336_)))
                                               (declare (not safe))
                                               (_lp288313_
                                                __tmp293273
                                                _user-decls288316_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr288338288350_))
                                          (let ((_tl288348288384_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr288338288350_)))
                                                (_hd288347288382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr288338288350_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd288347288382_
                                                         'declare))
                                                (let ((_decls288387_
                                                       _tl288348288384_))
                                                  (declare (not safe))
                                                  (_K288346288379_
                                                   _decls288387_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd288347288382_
                                                             'begin))
                                                    (let ((_exprs288372_
                                                           _tl288348288384_))
                                                      (declare (not safe))
                                                      (_K288343288364_
                                                       _exprs288372_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else288341288358_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else288341288358_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest288317288325_))
                              (let ((_hd288322288392_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest288317288325_)))
                                    (_tl288323288394_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest288317288325_))))
                                (let* ((_expr288397_ _hd288322288392_)
                                       (_rest288399_ _tl288323288394_))
                                  (declare (not safe))
                                  (_K288321288389_ _rest288399_ _expr288397_)))
                              (let ()
                                (declare (not safe))
                                (_else288319288333_))))))))
                 (_compile-stub288241_
                  (lambda (_output-scm288248_ _output-bin288249_)
                    (let* ((_gerbil-home288251_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288253_
                            (path-expand '"lib" _gerbil-home288251_))
                           (_runtime288255_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp288257_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home288251_))
                           (_include-gambit-sharp288259_
                            (string-append
                             '"(include \""
                             _gambit-sharp288257_
                             '"\")"))
                           (_bin-scm288261_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288235_)))
                           (_deps288263_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288235_)))
                           (_deps288265_
                            (map gxc#find-static-module-file _deps288263_))
                           (_deps288270_
                            (let ((__tmp293274
                                   (lambda (_$obj288267_)
                                     (let ((__tmp293275
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj288267_))))
                                       (declare (not safe))
                                       (not __tmp293275)))))
                              (declare (not safe))
                              (filter __tmp293274 _deps288265_)))
                           (_deps288274_
                            (let ((__tmp293276
                                   (lambda (_f288272_)
                                     (let ((__tmp293277
                                            (member _f288272_
                                                    _runtime288255_)))
                                       (declare (not safe))
                                       (not __tmp293277)))))
                              (declare (not safe))
                              (filter __tmp293276 _deps288270_)))
                           (_output-base288276_
                            (string-append
                             (path-strip-extension _output-scm288248_)))
                           (_output-c288278_
                            (string-append _output-base288276_ '".c"))
                           (_output-o288280_
                            (string-append _output-base288276_ '".o"))
                           (_output-c_288282_
                            (string-append _output-base288276_ '"_.c"))
                           (_output-o_288284_
                            (string-append _output-base288276_ '"_.o"))
                           (_gsc-link-opts288286_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288288_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288290_
                            (let ((__tmp293278
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir288253_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp293278)))
                           (_output-ld-opts288292_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros288294_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp293280
                                       (let ((__tmp293281
                                              (let ((__tmp293282
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp288259_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp293282))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp293281))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp293280))
                                (let ((__tmp293279
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp288259_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp293279))))
                           (_gsc-link-opts288296_
                            (append _gsc-link-opts288286_
                                    _gsc-gx-macros288294_))
                           (_rpath288298_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288253_)))
                           (_default-ld-options288300_
                            (let ((__tmp293283
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp293283))))
                      (let ((__tmp293284
                             (lambda ()
                               (let ((__tmp293285
                                      (path-directory _output-bin288249_)))
                                 (declare (not safe))
                                 (create-directory* __tmp293285)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp293284))
                      (let ((__tmp293286
                             (lambda ()
                               (let ((__tmp293287
                                      (let ((__tmp293288
                                             (let ((__tmp293289
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm288261_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp293289
                                                       _deps288274_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp293288
                                                _runtime288255_))))
                                 (declare (not safe))
                                 (_generate-stub288239_ __tmp293287)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288248_
                         __tmp293286))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp293295
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293290
                                   (let ((__tmp293291
                                          (let ((__tmp293292
                                                 (let ((__tmp293293
                                                        (let ((__tmp293294
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm288248_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp293294 _gsc-link-opts288296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_288282_
                                                         __tmp293293))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp293292))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp293291))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293295
                               __tmp293290))
                            (let ((__tmp293301
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293296
                                   (let ((__tmp293297
                                          (let ((__tmp293298
                                                 (let ((__tmp293299
                                                        (let ((__tmp293300
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_288282_ '()))))
                  (declare (not safe))
                  (cons _output-c288278_ __tmp293300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293299
                                                           _gsc-static-opts288290_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp293298
                                                    _gsc-cc-opts288288_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp293297))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293301
                               __tmp293296))
                            (let ((__tmp293311
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp293302
                                   (let ((__tmp293303
                                          (let ((__tmp293304
                                                 (let ((__tmp293305
                                                        (let ((__tmp293306
                                                               (let ((__tmp293307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293308
                                     (let ((__tmp293309
                                            (let ((__tmp293310
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options288300_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir288253_
                                                    __tmp293310))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp293309))))
                                (declare (not safe))
                                (cons _rpath288298_ __tmp293308))))
                         (declare (not safe))
                         (foldr1 cons __tmp293307 _output-ld-opts288292_))))
                  (declare (not safe))
                  (cons _output-o_288284_ __tmp293306))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o288280_
                                                         __tmp293305))))
                                            (declare (not safe))
                                            (cons _output-bin288249_
                                                  __tmp293304))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp293303))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293311
                               __tmp293302)))
                          '#!void)))))
          (let* ((_output-bin288243_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288235_ _opts288236_)))
                 (_output-scm288245_
                  (string-append _output-bin288243_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288241_ _output-scm288245_ _output-bin288243_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288245_))))))
    (define gxc#find-export-binding
      (lambda (_ctx288185_ _id288186_)
        (let ((_$e288232_
               (let ((__tmp293313
                      (lambda (_e288187288189_)
                        (let* ((_g288191288201_ _e288187288189_)
                               (_else288193288209_ (lambda () '#f))
                               (_K288195288213_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g288191288201_
                                 'gx#module-export::t))
                              (let* ((_e288196288216_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288191288201_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e288197288219_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288191288201_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e288198288222_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288191288201_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e288198288222_ '0))
                                    (let ((_e288199288225_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g288191288201_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g288227288229_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g288227288229_
                                                    _id288186_)))
                                           _e288199288225_)
                                          (let ()
                                            (declare (not safe))
                                            (_K288195288213_))
                                          (let ()
                                            (declare (not safe))
                                            (_else288193288209_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else288193288209_))))
                              (let ()
                                (declare (not safe))
                                (_else288193288209_))))))
                     (__tmp293312
                      (##structure-ref
                       _ctx288185_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp293313 __tmp293312))))
          (if _$e288232_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e288232_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx288177_ _id288178_)
        (let ((_$e288180_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx288177_ _id288178_))))
          (if _$e288180_
              ((lambda (_bind288183_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind288183_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id288178_)))
                 (##structure-ref _bind288183_ '1 gx#binding::t '#f))
               _$e288180_)
              (let ((__tmp293314
                     (##structure-ref
                      _ctx288177_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp293314
                 _id288178_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx288064_)
        (letrec* ((_ht288066_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template288067_
                   (lambda (_in288129_ _phi288130_)
                     (let ((_iphi288132_
                            (fx+ _phi288130_
                                 (##direct-structure-ref
                                  _in288129_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports288133_
                            (##structure-ref
                             (##direct-structure-ref
                              _in288129_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp288135_ ((_rest288137_ _imports288133_)
                                        (_r288138_ '()))
                         (let* ((_rest288139288147_ _rest288137_)
                                (_else288141288155_ (lambda () _r288138_))
                                (_K288143288165_
                                 (lambda (_rest288158_ _in288159_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in288159_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi288132_))
                                           (let ((__tmp293321
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in288159_
                                                          _r288138_))))
                                             (declare (not safe))
                                             (_lp288135_
                                              _rest288158_
                                              __tmp293321))
                                           (let ()
                                             (declare (not safe))
                                             (_lp288135_
                                              _rest288158_
                                              _r288138_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in288159_
                                              'gx#module-import::t))
                                           (let ((_iphi288161_
                                                  (fx+ _phi288130_
                                                       (##direct-structure-ref
                                                        _in288159_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi288161_))
                                                 (let ((__tmp293319
                                                        (let ((__tmp293320
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in288159_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp293320 _r288138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp288135_
                                                    _rest288158_
                                                    __tmp293319))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp288135_
                                                    _rest288158_
                                                    _r288138_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in288159_
                                                  'gx#import-set::t))
                                               (let ((_xphi288163_
                                                      (fx+ _iphi288132_
                                                           (##direct-structure-ref
                                                            _in288159_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi288163_))
                                                     (let ((__tmp293317
                                                            (let ((__tmp293318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in288159_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp293318 _r288138_))))
               (declare (not safe))
               (_lp288135_ _rest288158_ __tmp293317))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi288163_)
                                                         (let ((__tmp293315
                                                                (let ((__tmp293316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template288067_
                                  _in288159_
                                  _iphi288132_))))
                          (declare (not safe))
                          (foldl1 cons _r288138_ __tmp293316))))
                   (declare (not safe))
                   (_lp288135_ _rest288158_ __tmp293315))
                 (let ()
                   (declare (not safe))
                   (_lp288135_ _rest288158_ _r288138_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp288135_
                                                  _rest288158_
                                                  _r288138_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest288139288147_))
                               (let ((_hd288144288168_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest288139288147_)))
                                     (_tl288145288170_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest288139288147_))))
                                 (let* ((_in288173_ _hd288144288168_)
                                        (_rest288175_ _tl288145288170_))
                                   (declare (not safe))
                                   (_K288143288165_ _rest288175_ _in288173_)))
                               (let ()
                                 (declare (not safe))
                                 (_else288141288155_))))))))
                  (_find-deps288068_
                   (lambda (_rest288075_ _deps288076_)
                     (let* ((_rest288077288085_ _rest288075_)
                            (_else288079288093_ (lambda () _deps288076_))
                            (_K288081288117_
                             (lambda (_rest288096_ _hd288097_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd288097_
                                      'gx#module-context::t))
                                   (let ((_id288099_
                                          (##structure-ref
                                           _hd288097_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports288100_
                                          (##structure-ref
                                           _hd288097_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht288066_
                                            _id288099_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps288068_
                                            _rest288096_
                                            _deps288076_))
                                         (let ((_$e288102_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd288097_))))
                                           (if _$e288102_
                                               ((lambda (_pre288105_)
                                                  (let ((_xdeps288107_
                                                         (let ((__tmp293334
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre288105_ _imports288100_))))
                   (declare (not safe))
                   (_find-deps288068_ __tmp293334 _deps288076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht288066_
                                                       _id288099_
                                                       _hd288097_))
                                                    (let ((__tmp293335
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd288097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps288107_))))
              (declare (not safe))
              (_find-deps288068_ _rest288096_ __tmp293335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e288102_)
                                               (let ((_xdeps288109_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps288068_
                                                         _imports288100_
                                                         _deps288076_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht288066_
                                                    _id288099_
                                                    _hd288097_))
                                                 (let ((__tmp293333
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd288097_
                                                                _xdeps288109_))))
                                                   (declare (not safe))
                                                   (_find-deps288068_
                                                    _rest288096_
                                                    __tmp293333)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd288097_
                                          'gx#prelude-context::t))
                                       (let ((_id288111_
                                              (##structure-ref
                                               _hd288097_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht288066_
                                                _id288111_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps288068_
                                                _rest288096_
                                                _deps288076_))
                                             (let ((_xdeps288113_
                                                    (let ((__tmp293331
                                                           (##structure-ref
                                                            _hd288097_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps288068_
                                                       __tmp293331
                                                       _deps288076_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht288066_
                                                      _id288111_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps288068_
                                                      _rest288096_
                                                      _xdeps288113_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht288066_
                                                        _id288111_
                                                        _hd288097_))
                                                     (let ((__tmp293332
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd288097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps288113_))))
               (declare (not safe))
               (_find-deps288068_ _rest288096_ __tmp293332)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd288097_
                                              'gx#module-import::t))
                                           (if (let ((__tmp293330
                                                      (##direct-structure-ref
                                                       _hd288097_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp293330))
                                               (let ((__tmp293328
                                                      (let ((__tmp293329
                                                             (##direct-structure-ref
                                                              _hd288097_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp293329
                                                              _rest288096_))))
                                                 (declare (not safe))
                                                 (_find-deps288068_
                                                  __tmp293328
                                                  _deps288076_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps288068_
                                                  _rest288096_
                                                  _deps288076_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd288097_
                                                  'gx#module-export::t))
                                               (let ((__tmp293326
                                                      (let ((__tmp293327
                                                             (##direct-structure-ref
                                                              _hd288097_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp293327
                                                              _rest288096_))))
                                                 (declare (not safe))
                                                 (_find-deps288068_
                                                  __tmp293326
                                                  _deps288076_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd288097_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp293325
                                                              (##direct-structure-ref
                                                               _hd288097_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp293325))
                                                       (let ((__tmp293323
                                                              (let ((__tmp293324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd288097_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp293324 _rest288096_))))
                 (declare (not safe))
                 (_find-deps288068_ __tmp293323 _deps288076_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd288097_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps288115_
                           (let ()
                             (declare (not safe))
                             (_import-set-template288067_ _hd288097_ '0)))
                          (__tmp293322
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest288096_ _xdeps288115_))))
                     (declare (not safe))
                     (_find-deps288068_ __tmp293322 _deps288076_))
                   (let ()
                     (declare (not safe))
                     (_find-deps288068_ _rest288096_ _deps288076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd288097_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest288077288085_))
                           (let ((_hd288082288120_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest288077288085_)))
                                 (_tl288083288122_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest288077288085_))))
                             (let* ((_hd288125_ _hd288082288120_)
                                    (_rest288127_ _tl288083288122_))
                               (declare (not safe))
                               (_K288081288117_ _rest288127_ _hd288125_)))
                           (let ()
                             (declare (not safe))
                             (_else288079288093_)))))))
          (reverse (let ((__tmp293336
                          (let ((__tmp293337
                                 (let ((_$e288070_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx288064_))))
                                   (if _$e288070_
                                       ((lambda (_pre288073_)
                                          (let ((__tmp293338
                                                 (##structure-ref
                                                  _ctx288064_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre288073_ __tmp293338)))
                                        _$e288070_)
                                       (##structure-ref
                                        _ctx288064_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps288068_ __tmp293337 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp293336))))))
    (define gxc#find-static-module-file
      (lambda (_ctx287995_)
        (let* ((_context-id287997_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx287995_
                       'gx#module-context::t))
                    (##structure-ref _ctx287995_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx287995_)))
               (_scm287999_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id287997_))
                 '".scm"))
               (_dirs288001_ (gx#current-expander-module-library-path))
               (_dirs288007_
                (let ((_user-libpath288003_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath288003_
                      (let ((_user-libpath288005_
                             (path-expand '"lib" _user-libpath288003_)))
                        (if (member _user-libpath288005_ _dirs288001_)
                            _dirs288001_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath288005_ _dirs288001_))))
                      _dirs288001_)))
               (_dirs288016_
                (let ((_$e288009_ (gxc#current-compile-output-dir)))
                  (if _$e288009_
                      ((lambda (_g288011288013_)
                         (let ()
                           (declare (not safe))
                           (cons _g288011288013_ _dirs288007_)))
                       _$e288009_)
                      _dirs288007_)))
               (_dirs288022_
                (map (lambda (_g288017288019_)
                       (path-expand '"static" _g288017288019_))
                     _dirs288016_)))
          (let _lp288025_ ((_rest288027_ _dirs288022_))
            (let* ((_rest288028288036_ _rest288027_)
                   (_else288030288044_
                    (lambda ()
                      (let ((__tmp293339
                             (##structure-ref
                              _ctx287995_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp293339
                         _scm287999_))))
                   (_K288032288052_
                    (lambda (_rest288047_ _dir288048_)
                      (let ((_path288050_
                             (path-expand _scm287999_ _dir288048_)))
                        (if (file-exists? _path288050_)
                            _path288050_
                            (let ()
                              (declare (not safe))
                              (_lp288025_ _rest288047_)))))))
              (if (let () (declare (not safe)) (##pair? _rest288028288036_))
                  (let ((_hd288033288055_
                         (let ()
                           (declare (not safe))
                           (##car _rest288028288036_)))
                        (_tl288034288057_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest288028288036_))))
                    (let* ((_dir288060_ _hd288033288055_)
                           (_rest288062_ _tl288034288057_))
                      (declare (not safe))
                      (_K288032288052_ _rest288062_ _dir288060_)))
                  (let () (declare (not safe)) (_else288030288044_))))))))
    (define gxc#file-empty?
      (lambda (_path287993_)
        (let ((__tmp293340 (file-info-size (file-info _path287993_ '#t))))
          (declare (not safe))
          (zero? __tmp293340))))
    (define gxc#compile-top-module
      (lambda (_ctx287982_)
        (let ((__tmp293344
               (lambda ()
                 (let ((__tmp293345
                        (##structure-ref
                         _ctx287982_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp293345))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp293346
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx287982_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp293346))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx287982_))
                 (if (let ((__tmp293349
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx287982_))))
                       (declare (not safe))
                       (null? __tmp293349))
                     (let* ((_thr1287987_
                             (let ((__tmp293347
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx287982_)))))
                               (declare (not safe))
                               (spawn __tmp293347)))
                            (_thr2287990_
                             (let ((__tmp293348
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx287982_)))))
                               (declare (not safe))
                               (spawn __tmp293348))))
                       (let () (declare (not safe)) (gxc#join! _thr1287987_))
                       (let () (declare (not safe)) (gxc#join! _thr2287990_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx287982_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx287982_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx287982_))
                     '#!void)))
              (__tmp293343
               (let ((__obj293148
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj293148)
                 __obj293148))
              (__tmp293342
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp293341 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp293344
           gx#current-expander-context
           _ctx287982_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp293343
           gxc#current-compile-runtime-sections
           __tmp293342
           gxc#current-compile-runtime-names
           __tmp293341))))
    (define gxc#collect-bindings
      (lambda (_ctx287980_)
        (let ((__tmp293350
               (##structure-ref _ctx287980_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp293350))))
    (define gxc#compile-runtime-code
      (lambda (_ctx287926_)
        (letrec ((_compile1287928_
                  (lambda (_ctx287969_)
                    (let* ((_code287971_
                            (##structure-ref
                             _ctx287969_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt287975_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code287971_))
                                (let ((_idstr287973_
                                       (let ((__tmp293351
                                              (##structure-ref
                                               _ctx287969_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp293351))))
                                  (string-append _idstr287973_ '"__0"))
                                '#f)))
                      (if _rt287975_
                          (begin
                            (let ((__tmp293352
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp293352 _ctx287969_ _rt287975_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code287930_
                               _ctx287969_
                               _code287971_)))
                          (let ((_path287978_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx287969_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path287978_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code287931_
                         _ctx287969_
                         _code287971_
                         _rt287975_)))))
                 (_context-timestamp287929_
                  (lambda (_ctx287967_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx287967_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code287930_
                  (lambda (_ctx287949_ _code287950_)
                    (let* ((_lifts287952_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code287955_
                            (let ((__tmp293355
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code287950_))))
                                  (__tmp293354
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp293353
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp293355
                               gx#current-expander-context
                               _ctx287949_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts287952_
                               gxc#current-compile-marks
                               __tmp293354
                               gxc#current-compile-identifiers
                               __tmp293353)))
                           (_runtime-code287957_
                            (if (let ((__tmp293359 (unbox _lifts287952_)))
                                  (declare (not safe))
                                  (null? __tmp293359))
                                _runtime-code287955_
                                (let ((__tmp293356
                                       (let ((__tmp293358
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code287955_
                                                      '())))
                                             (__tmp293357
                                              (reverse (unbox _lifts287952_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp293358
                                                 __tmp293357))))
                                  (declare (not safe))
                                  (cons 'begin __tmp293356))))
                           (_runtime-code287959_
                            (let ((__tmp293360
                                   (let ((__tmp293362
                                          (let ((__tmp293363
                                                 (let ((__tmp293366
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp287929_
                                                           _ctx287949_)))
                                                       (__tmp293364
                                                        (let ((__tmp293365
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp293365
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp293366
                                                         __tmp293364))))
                                            (declare (not safe))
                                            (cons 'define __tmp293363)))
                                         (__tmp293361
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code287957_ '()))))
                                     (declare (not safe))
                                     (cons __tmp293362 __tmp293361))))
                              (declare (not safe))
                              (cons 'begin __tmp293360)))
                           (_scm0287961_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx287949_
                               '0
                               '".scm"))))
                      (let ((_scms287964_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx287949_))))
                        (let ((__tmp293367
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0287961_
                                    _runtime-code287959_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp293367
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms287964_)
                            (delete-file _scms287964_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0287961_
                           '" => "
                           _scms287964_))
                        (copy-file _scm0287961_ _scms287964_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0287961_))))))
                 (_generate-loader-code287931_
                  (lambda (_ctx287938_ _code287939_ _rt287940_)
                    (let* ((_loader-code287943_
                            (let ((__tmp293368
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code287939_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp293368
                               gx#current-expander-context
                               _ctx287938_)))
                           (_loader-code287945_
                            (if _rt287940_
                                (let ((__tmp293369
                                       (let ((__tmp293370
                                              (let ((__tmp293371
                                                     (let ((__tmp293372
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt287940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp293372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293371 '()))))
                                         (declare (not safe))
                                         (cons _loader-code287943_
                                               __tmp293370))))
                                  (declare (not safe))
                                  (cons 'begin __tmp293369))
                                _loader-code287943_)))
                      (let ((__tmp293373
                             (lambda ()
                               (let ((__tmp293374
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx287938_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp293374
                                  _loader-code287945_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp293373
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules287933_
                 (let ((__tmp293375
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx287926_))))
                   (declare (not safe))
                   (cons _ctx287926_ __tmp293375))))
            (for-each
             (lambda (_ctx287935_)
               (let ((__tmp293376
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1287928_ _ctx287935_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp293376
                  gxc#current-compile-decls
                  '())))
             _all-modules287933_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx287823_)
        (letrec ((_compile-ssi287825_
                  (lambda (_code287896_)
                    (let* ((_path287898_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx287823_
                               '#f
                               '".ssi")))
                           (_prelude287909_
                            (let* ((_super287900_
                                    (##structure-ref
                                     _ctx287823_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e287902_
                                    (##structure-ref
                                     _super287900_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e287902_
                                  ((lambda (_g287904287906_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g287904287906_)))
                                   _$e287902_)
                                  ':<root>)))
                           (_ns287911_
                            (##structure-ref
                             _ctx287823_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr287913_
                            (symbol->string
                             (##structure-ref
                              _ctx287823_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg287920_
                            (let ((_$e287915_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr287913_ '#\/))))
                              (if _$e287915_
                                  ((lambda (_x287918_)
                                     (string->symbol
                                      (substring _idstr287913_ '0 _x287918_)))
                                   _$e287915_)
                                  '#f)))
                           (_rt287922_
                            (let ((__tmp293377
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp293377 _ctx287823_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path287898_))
                      (let ((__tmp293378
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude287909_))
                               (if _pkg287920_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg287920_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns287911_))
                               (newline)
                               (pretty-print _code287896_)
                               (if _rt287922_
                                   (pretty-print
                                    (let ((__tmp293379
                                           (let ((__tmp293383
                                                  (let ((__tmp293384
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp293384)))
                                                 (__tmp293380
                                                  (let ((__tmp293381
                                                         (let ((__tmp293382
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt287922_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp293382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp293381 '()))))
                                             (declare (not safe))
                                             (cons __tmp293383 __tmp293380))))
                                      (declare (not safe))
                                      (cons '%#call __tmp293379)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path287898_
                         __tmp293378)))))
                 (_compile-phi287826_
                  (lambda (_part287836_)
                    (let* ((_part287837287850_ _part287836_)
                           (_E287839287854_
                            (lambda ()
                              (error '"No clause matching"
                                     _part287837287850_)))
                           (_K287840287865_
                            (lambda (_code287857_
                                     _n287858_
                                     _phi287859_
                                     _phi-ctx287860_)
                              (let* ((_code287863_
                                      (let ((__tmp293385
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code287857_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp293385
                                         gx#current-expander-context
                                         _phi-ctx287860_
                                         gx#current-expander-phi
                                         _phi287859_)))
                                     (__tmp293386
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx287823_
                                         _n287858_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp293386
                                 _code287863_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part287837287850_))
                          (let ((_hd287841287868_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part287837287850_)))
                                (_tl287842287870_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part287837287850_))))
                            (let ((_phi-ctx287873_ _hd287841287868_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl287842287870_))
                                  (let ((_hd287843287875_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl287842287870_)))
                                        (_tl287844287877_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl287842287870_))))
                                    (let ((_phi287880_ _hd287843287875_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl287844287877_))
                                          (let ((_hd287845287882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl287844287877_)))
                                                (_tl287846287884_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl287844287877_))))
                                            (let ((_n287887_ _hd287845287882_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl287846287884_))
                                                  (let ((_hd287847287889_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl287846287884_)))
                                                        (_tl287848287891_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl287846287884_))))
                                                    (let ((_code287894_
                                                           _hd287847287889_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl287848287891_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K287840287865_
                                                             _code287894_
                                                             _n287887_
                                                             _phi287880_
                                                             _phi-ctx287873_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E287839287854_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E287839287854_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E287839287854_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E287839287854_)))))
                          (let () (declare (not safe)) (_E287839287854_)))))))
          (let ((_g293387_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx287823_))))
            (begin
              (let ((_g293388_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g293387_)
                           (##vector-length _g293387_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g293388_ 2)))
                    (error "Context expects 2 values" _g293388_)))
              (let ((_ssi-code287828_
                     (let () (declare (not safe)) (##vector-ref _g293387_ 0)))
                    (_phi-code287829_
                     (let () (declare (not safe)) (##vector-ref _g293387_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi287825_ _ssi-code287828_))
                  (let ((_threads287834_
                         (map (lambda (_code287831_)
                                (let ((__tmp293389
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi287826_
                                            _code287831_)))))
                                  (declare (not safe))
                                  (spawn __tmp293389)))
                              _phi-code287829_)))
                    (for-each gxc#join! _threads287834_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx287806_)
        (let* ((_path287808_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx287806_ '#f '".ssxi.ss")))
               (_code287810_
                (let ((__tmp293390
                       (##structure-ref
                        _ctx287806_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp293390)))
               (_idstr287812_
                (symbol->string
                 (##structure-ref _ctx287806_ '1 gx#expander-context::t '#f)))
               (_pkg287819_
                (let ((_$e287814_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr287812_ '#\/))))
                  (if _$e287814_
                      ((lambda (_x287817_)
                         (string->symbol
                          (substring _idstr287812_ '0 _x287817_)))
                       _$e287814_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path287808_))
          (let ((__tmp293391
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg287819_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg287819_))
                       '#!void)
                   (newline)
                   (pretty-print _code287810_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path287808_ __tmp293391)))))
    (define gxc#generate-meta-code
      (lambda (_ctx287799_)
        (let* ((_state287801_
                (let ((__obj293149
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj293149 _ctx287799_)
                  __obj293149))
               (_ssi-code287803_
                (let ((__tmp293392
                       (##structure-ref
                        _ctx287799_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp293392 _state287801_))))
          (values _ssi-code287803_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state287801_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx287792_)
        (let ((_lifts287794_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp293395
                 (lambda ()
                   (let ((_code287797_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx287792_))))
                     (if (let ((__tmp293399 (unbox _lifts287794_)))
                           (declare (not safe))
                           (null? __tmp293399))
                         _code287797_
                         (let ((__tmp293396
                                (let ((__tmp293398
                                       (let ()
                                         (declare (not safe))
                                         (cons _code287797_ '())))
                                      (__tmp293397
                                       (reverse (unbox _lifts287794_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp293398 __tmp293397))))
                           (declare (not safe))
                           (cons 'begin __tmp293396))))))
                (__tmp293394
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp293393
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp293395
             gxc#current-compile-lift
             _lifts287794_
             gxc#current-compile-marks
             __tmp293394
             gxc#current-compile-identifiers
             __tmp293393)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx287788_)
        (let ((_modules287790_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp293400
                 (##structure-ref _ctx287788_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp293400 _modules287790_))
          (reverse (unbox _modules287790_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path287771_ _code287772_ _phi?287773_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path287771_))
        (let ((__tmp293401
               (lambda ()
                 (pretty-print
                  (let ((__tmp293402
                         (let ((__tmp293409
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp293403
                                (let ((__tmp293408
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp293404
                                       (let ((__tmp293407
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp293405
                                              (let ((__tmp293406
                                                     (if _phi?287773_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp293406))))
                                         (declare (not safe))
                                         (cons __tmp293407 __tmp293405))))
                                  (declare (not safe))
                                  (cons __tmp293408 __tmp293404))))
                           (declare (not safe))
                           (cons __tmp293409 __tmp293403))))
                    (declare (not safe))
                    (cons 'declare __tmp293402)))
                 (pretty-print _code287772_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path287771_ __tmp293401))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path287771_ _phi?287773_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path287771_))))
    (define gxc#compile-scm-file__0
      (lambda (_path287779_ _code287780_)
        (let ((_phi?287782_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path287779_ _code287780_ _phi?287782_))))
    (define gxc#compile-scm-file
      (lambda _g293411_
        (let ((_g293410_ (let () (declare (not safe)) (##length _g293411_))))
          (cond ((let () (declare (not safe)) (##fx= _g293410_ 2))
                 (apply (lambda (_path287779_ _code287780_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path287779_
                             _code287780_)))
                        _g293411_))
                ((let () (declare (not safe)) (##fx= _g293410_ 3))
                 (apply (lambda (_path287784_ _code287785_ _phi?287786_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path287784_
                             _code287785_
                             _phi?287786_)))
                        _g293411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g293411_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?287672_)
        (let _lp287674_ ((_rest287676_ (gxc#current-compile-gsc-options))
                         (_opts287677_ '()))
          (let* ((_rest287678287698_ _rest287676_)
                 (_else287682287706_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287672_))
                             (gxc#current-compile-debug))
                        (let ((__tmp293412
                               (let ((__tmp293413 (reverse _opts287677_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp293413))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp293412))
                        (reverse _opts287677_)))))
            (let ((_K287692287749_
                   (lambda (_rest287747_)
                     (let ()
                       (declare (not safe))
                       (_lp287674_ _rest287747_ _opts287677_))))
                  (_K287687287731_
                   (lambda (_rest287729_)
                     (let ()
                       (declare (not safe))
                       (_lp287674_ _rest287729_ _opts287677_))))
                  (_K287684287713_
                   (lambda (_rest287710_ _opt287711_)
                     (let ((__tmp293414
                            (let ()
                              (declare (not safe))
                              (cons _opt287711_ _opts287677_))))
                       (declare (not safe))
                       (_lp287674_ _rest287710_ __tmp293414)))))
              (if (let () (declare (not safe)) (##pair? _rest287678287698_))
                  (let ((_tl287694287754_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287678287698_)))
                        (_hd287693287752_
                         (let ()
                           (declare (not safe))
                           (##car _rest287678287698_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287693287752_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287694287754_))
                            (let* ((_tl287696287757_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287694287754_)))
                                   (_rest287760_ _tl287696287757_))
                              (declare (not safe))
                              (_K287692287749_ _rest287760_))
                            (let ((_opt287721_ _hd287693287752_)
                                  (_rest287723_ _tl287694287754_))
                              (let ()
                                (declare (not safe))
                                (_K287684287713_ _rest287723_ _opt287721_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287693287752_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287694287754_))
                                (let* ((_tl287691287739_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287694287754_)))
                                       (_rest287742_ _tl287691287739_))
                                  (declare (not safe))
                                  (_K287687287731_ _rest287742_))
                                (let ((_opt287721_ _hd287693287752_)
                                      (_rest287723_ _tl287694287754_))
                                  (let ()
                                    (declare (not safe))
                                    (_K287684287713_
                                     _rest287723_
                                     _opt287721_))))
                            (let ((_opt287721_ _hd287693287752_)
                                  (_rest287723_ _tl287694287754_))
                              (let ()
                                (declare (not safe))
                                (_K287684287713_ _rest287723_ _opt287721_))))))
                  (let () (declare (not safe)) (_else287682287706_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?287766_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?287766_))))
    (define gxc#gsc-link-options
      (lambda _g293416_
        (let ((_g293415_ (let () (declare (not safe)) (##length _g293416_))))
          (cond ((let () (declare (not safe)) (##fx= _g293415_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g293416_))
                ((let () (declare (not safe)) (##fx= _g293415_ 1))
                 (apply (lambda (_phi?287768_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?287768_)))
                        _g293416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g293416_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?287573_)
        (let _lp287575_ ((_rest287577_ (gxc#current-compile-gsc-options))
                         (_opts287578_ '()))
          (let* ((_rest287579287599_ _rest287577_)
                 (_else287583287607_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287573_))
                             (gxc#current-compile-debug))
                        (let ((__tmp293417
                               (let ((__tmp293418 (reverse _opts287578_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp293418))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp293417))
                        (reverse _opts287578_)))))
            (let ((_K287593287646_
                   (lambda (_rest287643_ _opt287644_)
                     (let ((__tmp293419
                            (let ((__tmp293420
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts287578_))))
                              (declare (not safe))
                              (cons _opt287644_ __tmp293420))))
                       (declare (not safe))
                       (_lp287575_ _rest287643_ __tmp293419))))
                  (_K287588287627_
                   (lambda (_rest287625_)
                     (let ()
                       (declare (not safe))
                       (_lp287575_ _rest287625_ _opts287578_))))
                  (_K287585287613_
                   (lambda (_rest287611_)
                     (let ()
                       (declare (not safe))
                       (_lp287575_ _rest287611_ _opts287578_)))))
              (if (let () (declare (not safe)) (##pair? _rest287579287599_))
                  (let ((_tl287595287651_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287579287599_)))
                        (_hd287594287649_
                         (let ()
                           (declare (not safe))
                           (##car _rest287579287599_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287594287649_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287595287651_))
                            (let ((_tl287597287656_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl287595287651_)))
                                  (_hd287596287654_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl287595287651_))))
                              (let ((_opt287659_ _hd287596287654_)
                                    (_rest287661_ _tl287597287656_))
                                (let ()
                                  (declare (not safe))
                                  (_K287593287646_ _rest287661_ _opt287659_))))
                            (let ((_rest287619_ _tl287595287651_))
                              (declare (not safe))
                              (_K287585287613_ _rest287619_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287594287649_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287595287651_))
                                (let* ((_tl287592287635_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287595287651_)))
                                       (_rest287638_ _tl287592287635_))
                                  (declare (not safe))
                                  (_K287588287627_ _rest287638_))
                                (let ((_rest287619_ _tl287595287651_))
                                  (declare (not safe))
                                  (_K287585287613_ _rest287619_)))
                            (let ((_rest287619_ _tl287595287651_))
                              (declare (not safe))
                              (_K287585287613_ _rest287619_)))))
                  (let () (declare (not safe)) (_else287583287607_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?287667_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?287667_))))
    (define gxc#gsc-cc-options
      (lambda _g293422_
        (let ((_g293421_ (let () (declare (not safe)) (##length _g293422_))))
          (cond ((let () (declare (not safe)) (##fx= _g293421_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g293422_))
                ((let () (declare (not safe)) (##fx= _g293421_ 1))
                 (apply (lambda (_phi?287669_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?287669_)))
                        _g293422_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g293422_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir287568_)
        (let* ((_user-staticdir287570_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp293423
                (let ((__tmp293424
                       (string-append
                        '"-I "
                        _staticdir287568_
                        '" -I "
                        _user-staticdir287570_)))
                  (declare (not safe))
                  (cons __tmp293424 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp293423))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp287480_ ((_rest287482_ (gxc#current-compile-gsc-options))
                         (_opts287483_ '()))
          (let* ((_rest287484287504_ _rest287482_)
                 (_else287488287512_ (lambda () _opts287483_)))
            (let ((_K287498287555_
                   (lambda (_rest287553_)
                     (let ()
                       (declare (not safe))
                       (_lp287480_ _rest287553_ _opts287483_))))
                  (_K287493287533_
                   (lambda (_rest287530_ _opt287531_)
                     (let ((__tmp293425
                            (append _opts287483_
                                    (let ((__tmp293426
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt287531_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp293426)))))
                       (declare (not safe))
                       (_lp287480_ _rest287530_ __tmp293425))))
                  (_K287490287518_
                   (lambda (_rest287516_)
                     (let ()
                       (declare (not safe))
                       (_lp287480_ _rest287516_ _opts287483_)))))
              (if (let () (declare (not safe)) (##pair? _rest287484287504_))
                  (let ((_tl287500287560_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287484287504_)))
                        (_hd287499287558_
                         (let ()
                           (declare (not safe))
                           (##car _rest287484287504_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287499287558_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287500287560_))
                            (let* ((_tl287502287563_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287500287560_)))
                                   (_rest287566_ _tl287502287563_))
                              (declare (not safe))
                              (_K287498287555_ _rest287566_))
                            (let ((_rest287524_ _tl287500287560_))
                              (declare (not safe))
                              (_K287490287518_ _rest287524_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287499287558_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287500287560_))
                                (let ((_tl287497287543_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl287500287560_)))
                                      (_hd287496287541_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl287500287560_))))
                                  (let ((_opt287546_ _hd287496287541_)
                                        (_rest287548_ _tl287497287543_))
                                    (let ()
                                      (declare (not safe))
                                      (_K287493287533_
                                       _rest287548_
                                       _opt287546_))))
                                (let ((_rest287524_ _tl287500287560_))
                                  (declare (not safe))
                                  (_K287490287518_ _rest287524_)))
                            (let ((_rest287524_ _tl287500287560_))
                              (declare (not safe))
                              (_K287490287518_ _rest287524_)))))
                  (let () (declare (not safe)) (_else287488287512_))))))))
    (define gxc#not-string-empty?
      (lambda (_str287477_)
        (let ((__tmp293427
               (let () (declare (not safe)) (string-empty? _str287477_))))
          (declare (not safe))
          (not __tmp293427))))
    (define gxc#gsc-compile-file
      (lambda (_path287445_ _phi?287446_)
        (letrec ((_gsc-link-path287448_
                  (lambda (_base-path287469_)
                    (let _lp287471_ ((_n287473_ '1))
                      (let ((_path287475_
                             (string-append
                              _base-path287469_
                              '".o"
                              (number->string _n287473_))))
                        (if (file-exists? _path287475_)
                            (let ((__tmp293428
                                   (let ()
                                     (declare (not safe))
                                     (+ _n287473_ '1))))
                              (declare (not safe))
                              (_lp287471_ __tmp293428))
                            _path287475_))))))
          (let* ((_base-path287450_ (path-strip-extension _path287445_))
                 (_path-c287452_ (string-append _base-path287450_ '".c"))
                 (_path-o287454_ (string-append _base-path287450_ '".o"))
                 (_link-path287456_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path287448_ _base-path287450_)))
                 (_link-path-c287458_ (string-append _link-path287456_ '".c"))
                 (_link-path-o287460_ (string-append _link-path287456_ '".o"))
                 (_gsc-link-opts287462_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?287446_)))
                 (_gsc-cc-opts287464_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?287446_)))
                 (_gcc-ld-opts287466_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp293435 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp293429
                   (let ((__tmp293430
                          (let ((__tmp293431
                                 (let ((__tmp293432
                                        (let ((__tmp293433
                                               (let ((__tmp293434
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path287445_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp293434
                                                         _gsc-link-opts287462_))))
                                          (declare (not safe))
                                          (cons _link-path-c287458_
                                                __tmp293433))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp293432))))
                            (declare (not safe))
                            (cons '"-flat" __tmp293431))))
                     (declare (not safe))
                     (cons '"-link" __tmp293430))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp293435 __tmp293429))
            (let ((__tmp293442 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp293436
                   (let ((__tmp293437
                          (let ((__tmp293438
                                 (let ((__tmp293439
                                        (let ((__tmp293440
                                               (let ((__tmp293441
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c287458_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c287452_
                                                       __tmp293441))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp293440
                                                  _gsc-cc-opts287464_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp293439))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp293438))))
                     (declare (not safe))
                     (cons '"-obj" __tmp293437))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp293442 __tmp293436))
            (let ((__tmp293448 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp293443
                   (let ((__tmp293444
                          (let ((__tmp293445
                                 (let ((__tmp293446
                                        (let ((__tmp293447
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o287460_
                                                       _gcc-ld-opts287466_))))
                                          (declare (not safe))
                                          (cons _path-o287454_ __tmp293447))))
                                   (declare (not safe))
                                   (cons _link-path287456_ __tmp293446))))
                            (declare (not safe))
                            (cons '"-o" __tmp293445))))
                     (declare (not safe))
                     (cons '"-shared" __tmp293444))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp293448
               __tmp293443))
            (for-each
             delete-file
             (let ((__tmp293449
                    (let ((__tmp293450
                           (let ((__tmp293451
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o287460_ '()))))
                             (declare (not safe))
                             (cons _link-path-c287458_ __tmp293451))))
                      (declare (not safe))
                      (cons _path-o287454_ __tmp293450))))
               (declare (not safe))
               (cons _path-c287452_ __tmp293449)))))))
    (define gxc#compile-output-file
      (lambda (_ctx287416_ _n287417_ _ext287418_)
        (letrec ((_module-relative-path287420_
                  (lambda (_ctx287443_)
                    (path-strip-directory
                     (let ((__tmp293452
                            (##structure-ref
                             _ctx287443_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp293452)))))
                 (_module-source-directory287421_
                  (lambda (_ctx287439_)
                    (path-directory
                     (let ((_mpath287441_
                            (##structure-ref
                             _ctx287439_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath287441_))
                           _mpath287441_
                           (let ()
                             (declare (not safe))
                             (last _mpath287441_)))))))
                 (_section-string287422_
                  (lambda (_n287437_)
                    (if (let () (declare (not safe)) (number? _n287437_))
                        (number->string _n287437_)
                        (if (let () (declare (not safe)) (symbol? _n287437_))
                            (symbol->string _n287437_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n287437_))
                                _n287437_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n287437_)))))))
                 (_file-name287423_
                  (lambda (_path287435_)
                    (if _n287417_
                        (string-append
                         _path287435_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string287422_ _n287417_))
                         _ext287418_)
                        (string-append _path287435_ _ext287418_))))
                 (_file-path287424_
                  (lambda ()
                    (let ((_$e287430_ (gxc#current-compile-output-dir)))
                      (if _$e287430_
                          ((lambda (_outdir287433_)
                             (path-expand
                              (let ((__tmp293454
                                     (let ((__tmp293455
                                            (##structure-ref
                                             _ctx287416_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp293455))))
                                (declare (not safe))
                                (_file-name287423_ __tmp293454))
                              _outdir287433_))
                           _$e287430_)
                          (path-expand
                           (let ((__tmp293453
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path287420_
                                     _ctx287416_))))
                             (declare (not safe))
                             (_file-name287423_ __tmp293453))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory287421_
                              _ctx287416_))))))))
          (let ((_path287426_
                 (let () (declare (not safe)) (_file-path287424_))))
            (let ((__tmp293456
                   (lambda ()
                     (let ((__tmp293457 (path-directory _path287426_)))
                       (declare (not safe))
                       (create-directory* __tmp293457)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp293456))
            _path287426_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx287398_)
        (letrec ((_file-name287400_
                  (lambda (_id287414_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id287414_))
                     '".scm")))
                 (_file-path287401_
                  (lambda ()
                    (let* ((_file287407_
                            (let ((__tmp293458
                                   (##structure-ref
                                    _ctx287398_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name287400_ __tmp293458)))
                           (_$e287409_ (gxc#current-compile-output-dir)))
                      (if _$e287409_
                          ((lambda (_outdir287412_)
                             (path-expand
                              _file287407_
                              (path-expand '"static" _outdir287412_)))
                           _$e287409_)
                          (path-expand _file287407_ '"static"))))))
          (let ((_path287403_
                 (let () (declare (not safe)) (_file-path287401_))))
            (let ((__tmp293459
                   (lambda ()
                     (let ((__tmp293460 (path-directory _path287403_)))
                       (declare (not safe))
                       (create-directory* __tmp293460)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp293459))
            _path287403_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx287392_ _opts287393_)
        (let ((_$e287395_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts287393_))))
          (if _$e287395_
              (values _$e287395_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx287392_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr287385_)
        (if (let () (declare (not safe)) (string? _idstr287385_))
            (let* ((_str287387_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr287385_)))
                   (_strs287389_
                    (let ()
                      (declare (not safe))
                      (string-split _str287387_ '#\/))))
              (let () (declare (not safe)) (string-join _strs287389_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr287385_))
                (let ((__tmp293461 (symbol->string _idstr287385_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp293461))
                (error '"Bad module id" _idstr287385_)))))
    (define gxc#invoke__%
      (lambda (_g293462_
               _stdout-redirection287349287353_
               _stderr-redirection287350287355_
               _program287357_
               _args287358_)
        (let* ((_stdout-redirection287360_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection287349287353_ absent-value))
                    '#f
                    _stdout-redirection287349287353_))
               (_stderr-redirection287362_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection287350287355_ absent-value))
                    '#f
                    _stderr-redirection287350287355_)))
          (let ((__tmp293463
                 (let ()
                   (declare (not safe))
                   (cons _program287357_ _args287358_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp293463))
          (let ((_proc287364_
                 (open-process
                  (let ((__tmp293464
                         (let ((__tmp293465
                                (let ((__tmp293466
                                       (let ((__tmp293467
                                              (let ((__tmp293468
                                                     (let ((__tmp293469
                                                            (let ((__tmp293470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection287362_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp293470))))
               (declare (not safe))
               (cons _stdout-redirection287360_ __tmp293469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp293468))))
                                         (declare (not safe))
                                         (cons _args287358_ __tmp293467))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp293466))))
                           (declare (not safe))
                           (cons _program287357_ __tmp293465))))
                    (declare (not safe))
                    (cons 'path: __tmp293464)))))
            (if (or _stdout-redirection287360_ _stderr-redirection287362_)
                (read-line _proc287364_ '#f)
                '#!void)
            (let ((_status287369_ (process-status _proc287364_)))
              (close-port _proc287364_)
              (if (let () (declare (not safe)) (zero? _status287369_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program287357_))))))))
    (define gxc#invoke__@
      (lambda (_keys287348287374_ . _args287376_)
        (apply gxc#invoke__%
               _keys287348287374_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys287348287374_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys287348287374_
                  'stderr-redirection:
                  absent-value))
               _args287376_)))
    (define gxc#invoke
      (lambda _args287351287382_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args287351287382_)))
    (define gxc#join!
      (lambda (_thread287342_)
        (let ((__tmp293472
               (lambda (_exn287344_)
                 (if (uncaught-exception? _exn287344_)
                     (raise (uncaught-exception-reason _exn287344_))
                     (raise _exn287344_))))
              (__tmp293471 (lambda () (thread-join! _thread287342_))))
          (declare (not safe))
          (with-catch __tmp293472 __tmp293471))))))
