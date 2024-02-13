(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707831914)
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
      (lambda (_path292466_ _fun292467_)
        (with-output-to-file
         (let ((__tmp297128
                (let ()
                  (declare (not safe))
                  (cons _path292466_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp297128))
         _fun292467_)))
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
      (lambda (_gerbil-libdir292461_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir292461_)))
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
      (lambda (_dir292459_) (delete-file-or-directory _dir292459_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath292433_ _opts292434_)
        (if (let () (declare (not safe)) (string? _srcpath292433_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath292433_)))
        (let ((_outdir292436_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts292434_)))
              (_invoke-gsc?292437_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts292434_)))
              (_gsc-options292438_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts292434_)))
              (_keep-scm?292439_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts292434_)))
              (_verbosity292440_
               (let () (declare (not safe)) (pgetq 'verbose: _opts292434_)))
              (_optimize292441_
               (let () (declare (not safe)) (pgetq 'optimize: _opts292434_)))
              (_debug292442_
               (let () (declare (not safe)) (pgetq 'debug: _opts292434_)))
              (_gen-ssxi292443_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts292434_))))
          (if _outdir292436_
              (let ((__tmp297129
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir292436_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297129))
              '#!void)
          (if _optimize292441_
              (let ((__tmp297130
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297130))
              '#!void)
          (let ((__tmp297134
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath292433_))
                   (let ((__tmp297135
                          (let ((__tmp297136
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath292433_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp297136))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp297135))))
                (__tmp297133
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp297131
                 (let ((__tmp297132
                        (let ()
                          (declare (not safe))
                          (cons _srcpath292433_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp297132))))
            (declare (not safe))
            (call-with-parameters
             __tmp297134
             gxc#current-compile-output-dir
             _outdir292436_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?292437_
             gxc#current-compile-gsc-options
             _gsc-options292438_
             gxc#current-compile-keep-scm
             _keep-scm?292439_
             gxc#current-compile-verbose
             _verbosity292440_
             gxc#current-compile-optimize
             _optimize292441_
             gxc#current-compile-debug
             _debug292442_
             gxc#current-compile-generate-ssxi
             _gen-ssxi292443_
             gxc#current-compile-timestamp
             __tmp297133
             gxc#current-compile-context
             __tmp297131
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath292452_)
        (let ((_opts292454_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath292452_ _opts292454_))))
    (define gxc#compile-module
      (lambda _g297138_
        (let ((_g297137_ (let () (declare (not safe)) (##length _g297138_))))
          (cond ((let () (declare (not safe)) (##fx= _g297137_ 1))
                 (apply (lambda (_srcpath292452_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath292452_)))
                        _g297138_))
                ((let () (declare (not safe)) (##fx= _g297137_ 2))
                 (apply (lambda (_srcpath292456_ _opts292457_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath292456_
                             _opts292457_)))
                        _g297138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g297138_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath292409_ _opts292410_)
        (if (let () (declare (not safe)) (string? _srcpath292409_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath292409_)))
        (let ((_outdir292412_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts292410_)))
              (_invoke-gsc?292413_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts292410_)))
              (_gsc-options292414_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts292410_)))
              (_keep-scm?292415_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts292410_)))
              (_verbosity292416_
               (let () (declare (not safe)) (pgetq 'verbose: _opts292410_)))
              (_debug292417_
               (let () (declare (not safe)) (pgetq 'debug: _opts292410_))))
          (if _outdir292412_
              (let ((__tmp297139
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir292412_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297139))
              '#!void)
          (let ((__tmp297143
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath292409_))
                   (let ((__tmp297144
                          (let ((__tmp297145
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath292409_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp297145))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp297144
                      _opts292410_))))
                (__tmp297142
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp297140
                 (let ((__tmp297141
                        (let ()
                          (declare (not safe))
                          (cons _srcpath292409_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp297141))))
            (declare (not safe))
            (call-with-parameters
             __tmp297143
             gxc#current-compile-output-dir
             _outdir292412_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?292413_
             gxc#current-compile-gsc-options
             _gsc-options292414_
             gxc#current-compile-keep-scm
             _keep-scm?292415_
             gxc#current-compile-verbose
             _verbosity292416_
             gxc#current-compile-debug
             _debug292417_
             gxc#current-compile-timestamp
             __tmp297142
             gxc#current-compile-context
             __tmp297140
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath292425_)
        (let ((_opts292427_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath292425_ _opts292427_))))
    (define gxc#compile-exe
      (lambda _g297147_
        (let ((_g297146_ (let () (declare (not safe)) (##length _g297147_))))
          (cond ((let () (declare (not safe)) (##fx= _g297146_ 1))
                 (apply (lambda (_srcpath292425_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath292425_)))
                        _g297147_))
                ((let () (declare (not safe)) (##fx= _g297146_ 2))
                 (apply (lambda (_srcpath292429_ _opts292430_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath292429_ _opts292430_)))
                        _g297147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g297147_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx292405_ _opts292406_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts292406_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx292405_
               _opts292406_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx292405_
               _opts292406_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx292288_ _opts292289_)
        (letrec ((_generate-stub292291_
                  (lambda (_builtin-modules292401_)
                    (let ((_mod-main292403_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx292288_ 'main))))
                      (write (let ((__tmp297148
                                    (let ((__tmp297149
                                           (let ((__tmp297150
                                                  (let ((__tmp297151
                                                         (let ((__tmp297153
                                                                (let ((__tmp297154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules292401_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp297154)))
                       (__tmp297152
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp297153 __tmp297152))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp297151))))
                                             (declare (not safe))
                                             (cons __tmp297150 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp297149))))
                               (declare (not safe))
                               (cons 'define __tmp297148)))
                      (write (let ((__tmp297155
                                    (let ((__tmp297194
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp297156
                                           (let ((__tmp297157
                                                  (let ((__tmp297158
                                                         (let ((__tmp297182
                                                                (let ((__tmp297183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp297184
                                      (let ((__tmp297192
                                             (let ((__tmp297193
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp297193)))
                                            (__tmp297185
                                             (let ((__tmp297186
                                                    (let ((__tmp297187
                                                           (let ((__tmp297188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297189
                                 (let ((__tmp297190
                                        (let ((__tmp297191
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp297191 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp297190))))
                            (declare (not safe))
                            (cons __tmp297189 '()))))
                     (declare (not safe))
                     (cons _mod-main292403_ __tmp297188))))
              (declare (not safe))
              (cons 'apply __tmp297187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp297186 '()))))
                                        (declare (not safe))
                                        (cons __tmp297192 __tmp297185))))
                                 (declare (not safe))
                                 (cons '() __tmp297184))))
                          (declare (not safe))
                          (cons 'lambda __tmp297183)))
                       (__tmp297159
                        (let ((__tmp297160
                               (let ((__tmp297161
                                      (let ((__tmp297162
                                             (let ((__tmp297173
                                                    (let ((__tmp297174
                                                           (let ((__tmp297175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297176
                                 (let ((__tmp297177
                                        (let ((__tmp297178
                                               (let ((__tmp297179
                                                      (let ((__tmp297180
                                                             (let ((__tmp297181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp297181 '()))))
                (declare (not safe))
                (cons 'force-output __tmp297180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp297179 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp297178))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp297177))))
                            (declare (not safe))
                            (cons __tmp297176 '()))))
                     (declare (not safe))
                     (cons 'void __tmp297175))))
              (declare (not safe))
              (cons 'with-catch __tmp297174)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp297163
                                                    (let ((__tmp297164
                                                           (let ((__tmp297165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297166
                                 (let ((__tmp297167
                                        (let ((__tmp297168
                                               (let ((__tmp297169
                                                      (let ((__tmp297170
                                                             (let ((__tmp297171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp297172
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp297172 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp297171))))
                (declare (not safe))
                (cons __tmp297170 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp297169))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp297168))))
                                   (declare (not safe))
                                   (cons __tmp297167 '()))))
                            (declare (not safe))
                            (cons 'void __tmp297166))))
                     (declare (not safe))
                     (cons 'with-catch __tmp297165))))
              (declare (not safe))
              (cons __tmp297164 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp297173
                                                     __tmp297163))))
                                        (declare (not safe))
                                        (cons '() __tmp297162))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp297161))))
                          (declare (not safe))
                          (cons __tmp297160 '()))))
                   (declare (not safe))
                   (cons __tmp297182 __tmp297159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp297158))))
                                             (declare (not safe))
                                             (cons __tmp297157 '()))))
                                      (declare (not safe))
                                      (cons __tmp297194 __tmp297156))))
                               (declare (not safe))
                               (cons 'define __tmp297155)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts292292_
                  (lambda (_libgerbil292399_)
                    (call-with-input-file
                     (string-append _libgerbil292399_ '".ldd")
                     read)))
                 (_replace-extension292293_
                  (lambda (_path292396_ _ext292397_)
                    (string-append
                     (path-strip-extension _path292396_)
                     _ext292397_)))
                 (_not-exclude-module?292294_
                  (lambda (_ctx292392_)
                    (let ((_id-str292394_
                           (symbol->string
                            (##structure-ref
                             _ctx292392_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp297195
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str292394_))))
                            (declare (not safe))
                            (not __tmp297195))
                          (let ((__tmp297196
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str292394_))))
                            (declare (not safe))
                            (not __tmp297196))
                          '#f))))
                 (_not-file-empty?292295_
                  (lambda (_path292390_)
                    (let ((__tmp297197
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path292390_))))
                      (declare (not safe))
                      (not __tmp297197))))
                 (_compile-stub292296_
                  (lambda (_output-scm292303_ _output-bin292304_)
                    (let* ((_gerbil-home292306_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir292308_
                            (path-expand '"lib" _gerbil-home292306_))
                           (_gerbil-staticdir292310_
                            (path-expand '"static" _gerbil-libdir292308_))
                           (_gxlink292312_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir292308_))
                           (_tmp292314_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path292318_
                            (lambda (_f292316_)
                              (path-expand
                               (path-strip-directory _f292316_)
                               _tmp292314_)))
                           (_deps292320_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx292288_)))
                           (_deps292322_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?292294_
                                      _deps292320_)))
                           (_src-deps-scm292324_
                            (map gxc#find-static-module-file _deps292322_))
                           (_src-deps-scm292326_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?292295_
                                      _src-deps-scm292324_)))
                           (_src-deps-scm292328_
                            (map path-expand _src-deps-scm292326_))
                           (_deps-scm292330_
                            (map _tmp-path292318_ _src-deps-scm292328_))
                           (_deps-c292336_
                            (map (lambda (_g292331292333_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension292293_
                                      _g292331292333_
                                      '".c")))
                                 _deps-scm292330_))
                           (_deps-o292342_
                            (map (lambda (_g292337292339_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension292293_
                                      _g292337292339_
                                      '".o")))
                                 _deps-scm292330_))
                           (_src-bin-scm292344_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx292288_)))
                           (_src-bin-scm292346_
                            (path-expand _src-bin-scm292344_))
                           (_bin-scm292348_
                            (let ()
                              (declare (not safe))
                              (_tmp-path292318_ _src-bin-scm292346_)))
                           (_bin-c292350_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292293_
                               _bin-scm292348_
                               '".c")))
                           (_bin-o292352_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292293_
                               _bin-scm292348_
                               '".o")))
                           (_output-bin292354_
                            (path-expand _output-bin292304_))
                           (_output-scm292356_
                            (path-expand _output-scm292303_))
                           (_output-c292358_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292293_
                               _output-scm292356_
                               '".c")))
                           (_output-o292360_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292293_
                               _output-scm292356_
                               '".o")))
                           (_output_-c292362_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292293_
                               _output-scm292356_
                               '"_.c")))
                           (_output_-o292364_
                            (let ()
                              (declare (not safe))
                              (_replace-extension292293_
                               _output-scm292356_
                               '"_.o")))
                           (_gsc-link-opts292366_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts292368_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts292370_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir292310_)))
                           (_output-ld-opts292372_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a292374_
                            (path-expand '"libgerbil.a" _gerbil-libdir292308_))
                           (_libgerbil.so292376_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir292308_))
                           (_libgerbil-ld-opts292378_
                            (if (file-exists? _libgerbil.so292376_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts292292_
                                   _libgerbil.so292376_))
                                (if (file-exists? _libgerbil.a292374_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts292292_
                                       _libgerbil.a292374_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a292374_
                                       _libgerbil.so292376_)))))
                           (_rpath292380_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir292308_)))
                           (_builtin-modules292384_
                            (map (lambda (_mod292382_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod292382_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx292288_ _deps292322_)))))
                      (let ((__tmp297198
                             (lambda ()
                               (let ((__tmp297199
                                      (path-directory _output-bin292354_)))
                                 (declare (not safe))
                                 (create-directory* __tmp297199)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp297198))
                      (let ((__tmp297200
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub292291_
                                  _builtin-modules292384_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm292356_
                         __tmp297200))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp297201
                                   (lambda () (create-directory _tmp292314_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp297201))
                            (for-each
                             copy-file
                             _src-deps-scm292328_
                             _deps-scm292330_)
                            (copy-file _src-bin-scm292346_ _bin-scm292348_)
                            (let ((__tmp297209
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297202
                                   (let ((__tmp297203
                                          (let ((__tmp297204
                                                 (let ((__tmp297205
                                                        (let ((__tmp297206
                                                               (let ((__tmp297207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297208
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm292356_ '()))))
                                (declare (not safe))
                                (cons _bin-scm292348_ __tmp297208))))
                         (declare (not safe))
                         (foldr1 cons __tmp297207 _deps-scm292330_))))
                  (declare (not safe))
                  (foldr1 cons __tmp297206 _gsc-link-opts292366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink292312_
                                                         __tmp297205))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp297204))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp297203))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297209
                               __tmp297202))
                            (let ((__tmp297217
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297210
                                   (let ((__tmp297211
                                          (let ((__tmp297212
                                                 (let ((__tmp297213
                                                        (let ((__tmp297214
                                                               (let ((__tmp297215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297216
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c292362_ '()))))
                                (declare (not safe))
                                (cons _output-c292358_ __tmp297216))))
                         (declare (not safe))
                         (cons _bin-c292350_ __tmp297215))))
                  (declare (not safe))
                  (foldr1 cons __tmp297214 _deps-c292336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297213
                                                           _gsc-static-opts292370_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp297212
                                                    _gsc-cc-opts292368_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp297211))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297217
                               __tmp297210))
                            (let ((__tmp297230
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp297218
                                   (let ((__tmp297219
                                          (let ((__tmp297220
                                                 (let ((__tmp297221
                                                        (let ((__tmp297222
                                                               (let ((__tmp297223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297224
                                     (let ((__tmp297225
                                            (let ((__tmp297226
                                                   (let ((__tmp297227
                                                          (let ((__tmp297228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp297229
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts292378_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp297229))))
                    (declare (not safe))
                    (cons _gerbil-libdir292308_ __tmp297228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp297227))))
                                              (declare (not safe))
                                              (cons _rpath292380_
                                                    __tmp297226))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp297225
                                               _output-ld-opts292372_))))
                                (declare (not safe))
                                (cons _output_-o292364_ __tmp297224))))
                         (declare (not safe))
                         (cons _output-o292360_ __tmp297223))))
                  (declare (not safe))
                  (cons _bin-o292352_ __tmp297222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297221
                                                           _deps-o292342_))))
                                            (declare (not safe))
                                            (cons _output-bin292354_
                                                  __tmp297220))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp297219))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297230
                               __tmp297218))
                            (for-each
                             delete-file
                             (let ((__tmp297231
                                    (let ((__tmp297232
                                           (let ((__tmp297233
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o292364_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o292360_
                                                   __tmp297233))))
                                      (declare (not safe))
                                      (cons _output_-c292362_ __tmp297232))))
                               (declare (not safe))
                               (cons _output-c292358_ __tmp297231)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp292314_)))
                          '#!void)))))
          (let* ((_output-bin292298_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx292288_ _opts292289_)))
                 (_output-scm292300_
                  (string-append _output-bin292298_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub292296_ _output-scm292300_ _output-bin292298_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm292300_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx292113_ _opts292114_)
        (letrec ((_reset-declare292116_
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
                 (_generate-stub292117_
                  (lambda (_deps292279_)
                    (let ((_mod-main292281_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx292113_ 'main)))
                          (_reset-decl292282_
                           (let ()
                             (declare (not safe))
                             (_reset-declare292116_)))
                          (_user-decl292283_
                           (let ()
                             (declare (not safe))
                             (_user-declare292118_))))
                      (for-each
                       (lambda (_dep292285_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl292282_)
                         (newline)
                         (if _user-decl292283_
                             (begin (write _user-decl292283_) (newline))
                             '#!void)
                         (write (let ((__tmp297234
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep292285_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp297234)))
                         (newline))
                       _deps292279_)
                      (write (let ((__tmp297235
                                    (let ((__tmp297248
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp297236
                                           (let ((__tmp297244
                                                  (let ((__tmp297245
                                                         (let ((__tmp297246
                                                                (let ((__tmp297247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp297247))))
                   (declare (not safe))
                   (cons __tmp297246 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp297245)))
                                                 (__tmp297237
                                                  (let ((__tmp297238
                                                         (let ((__tmp297239
                                                                (let ((__tmp297240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp297241
                                      (let ((__tmp297242
                                             (let ((__tmp297243
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp297243 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp297242))))
                                 (declare (not safe))
                                 (cons __tmp297241 '()))))
                          (declare (not safe))
                          (cons _mod-main292281_ __tmp297240))))
                   (declare (not safe))
                   (cons 'apply __tmp297239))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp297238 '()))))
                                             (declare (not safe))
                                             (cons __tmp297244 __tmp297237))))
                                      (declare (not safe))
                                      (cons __tmp297248 __tmp297236))))
                               (declare (not safe))
                               (cons 'define __tmp297235)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare292118_
                  (lambda ()
                    (let* ((_gsc-opts292184_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts292114_)))
                           (_gsc-prelude292186_
                            (if _gsc-opts292184_
                                (member '"-prelude" _gsc-opts292184_)
                                '#f))
                           (_gsc-prelude292188_
                            (if _gsc-prelude292186_
                                (read (open-input-string
                                       (cadr _gsc-prelude292186_)))
                                '#f)))
                      (let _lp292191_ ((_rest292193_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude292188_ '())))
                                       (_user-decls292194_ '()))
                        (let* ((_rest292195292203_ _rest292193_)
                               (_else292197292211_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls292194_))
                                      '#f
                                      (let ((__tmp297249
                                             (reverse _user-decls292194_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp297249)))))
                               (_K292199292267_
                                (lambda (_rest292214_ _expr292215_)
                                  (let* ((_expr292216292228_ _expr292215_)
                                         (_else292219292236_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp292191_
                                               _rest292214_
                                               _user-decls292194_)))))
                                    (let ((_K292224292257_
                                           (lambda (_decls292255_)
                                             (let ((__tmp297250
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls292194_
                                                              _decls292255_))))
                                               (declare (not safe))
                                               (_lp292191_
                                                _rest292214_
                                                __tmp297250))))
                                          (_K292221292242_
                                           (lambda (_exprs292240_)
                                             (let ((__tmp297251
                                                    (append _exprs292240_
                                                            _rest292214_)))
                                               (declare (not safe))
                                               (_lp292191_
                                                __tmp297251
                                                _user-decls292194_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr292216292228_))
                                          (let ((_tl292226292262_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr292216292228_)))
                                                (_hd292225292260_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr292216292228_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd292225292260_
                                                         'declare))
                                                (let ((_decls292265_
                                                       _tl292226292262_))
                                                  (declare (not safe))
                                                  (_K292224292257_
                                                   _decls292265_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd292225292260_
                                                             'begin))
                                                    (let ((_exprs292250_
                                                           _tl292226292262_))
                                                      (declare (not safe))
                                                      (_K292221292242_
                                                       _exprs292250_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else292219292236_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else292219292236_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest292195292203_))
                              (let ((_hd292200292270_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest292195292203_)))
                                    (_tl292201292272_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest292195292203_))))
                                (let* ((_expr292275_ _hd292200292270_)
                                       (_rest292277_ _tl292201292272_))
                                  (declare (not safe))
                                  (_K292199292267_ _rest292277_ _expr292275_)))
                              (let ()
                                (declare (not safe))
                                (_else292197292211_))))))))
                 (_compile-stub292119_
                  (lambda (_output-scm292126_ _output-bin292127_)
                    (let* ((_gerbil-home292129_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir292131_
                            (path-expand '"lib" _gerbil-home292129_))
                           (_runtime292133_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp292135_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home292129_))
                           (_include-gambit-sharp292137_
                            (string-append
                             '"(include \""
                             _gambit-sharp292135_
                             '"\")"))
                           (_bin-scm292139_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx292113_)))
                           (_deps292141_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx292113_)))
                           (_deps292143_
                            (map gxc#find-static-module-file _deps292141_))
                           (_deps292148_
                            (let ((__tmp297252
                                   (lambda (_$obj292145_)
                                     (let ((__tmp297253
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj292145_))))
                                       (declare (not safe))
                                       (not __tmp297253)))))
                              (declare (not safe))
                              (filter __tmp297252 _deps292143_)))
                           (_deps292152_
                            (let ((__tmp297254
                                   (lambda (_f292150_)
                                     (let ((__tmp297255
                                            (member _f292150_
                                                    _runtime292133_)))
                                       (declare (not safe))
                                       (not __tmp297255)))))
                              (declare (not safe))
                              (filter __tmp297254 _deps292148_)))
                           (_output-base292154_
                            (string-append
                             (path-strip-extension _output-scm292126_)))
                           (_output-c292156_
                            (string-append _output-base292154_ '".c"))
                           (_output-o292158_
                            (string-append _output-base292154_ '".o"))
                           (_output-c_292160_
                            (string-append _output-base292154_ '"_.c"))
                           (_output-o_292162_
                            (string-append _output-base292154_ '"_.o"))
                           (_gsc-link-opts292164_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts292166_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts292168_
                            (let ((__tmp297256
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir292131_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp297256)))
                           (_output-ld-opts292170_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros292172_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp297257
                                       (let ((__tmp297258
                                              (let ((__tmp297259
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp292137_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp297259))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp297258))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp297257))
                                (let ((__tmp297260
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp292137_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp297260))))
                           (_gsc-link-opts292174_
                            (append _gsc-link-opts292164_
                                    _gsc-gx-macros292172_))
                           (_rpath292176_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir292131_)))
                           (_default-ld-options292178_
                            (let ((__tmp297261
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp297261))))
                      (let ((__tmp297262
                             (lambda ()
                               (let ((__tmp297263
                                      (path-directory _output-bin292127_)))
                                 (declare (not safe))
                                 (create-directory* __tmp297263)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp297262))
                      (let ((__tmp297264
                             (lambda ()
                               (let ((__tmp297265
                                      (let ((__tmp297266
                                             (let ((__tmp297267
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm292139_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp297267
                                                       _deps292152_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp297266
                                                _runtime292133_))))
                                 (declare (not safe))
                                 (_generate-stub292117_ __tmp297265)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm292126_
                         __tmp297264))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp297273
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297268
                                   (let ((__tmp297269
                                          (let ((__tmp297270
                                                 (let ((__tmp297271
                                                        (let ((__tmp297272
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm292126_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp297272 _gsc-link-opts292174_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_292160_
                                                         __tmp297271))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp297270))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp297269))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297273
                               __tmp297268))
                            (let ((__tmp297279
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297274
                                   (let ((__tmp297275
                                          (let ((__tmp297276
                                                 (let ((__tmp297277
                                                        (let ((__tmp297278
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_292160_ '()))))
                  (declare (not safe))
                  (cons _output-c292156_ __tmp297278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297277
                                                           _gsc-static-opts292168_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp297276
                                                    _gsc-cc-opts292166_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp297275))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297279
                               __tmp297274))
                            (let ((__tmp297289
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp297280
                                   (let ((__tmp297281
                                          (let ((__tmp297282
                                                 (let ((__tmp297283
                                                        (let ((__tmp297284
                                                               (let ((__tmp297285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297286
                                     (let ((__tmp297287
                                            (let ((__tmp297288
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options292178_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir292131_
                                                    __tmp297288))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp297287))))
                                (declare (not safe))
                                (cons _rpath292176_ __tmp297286))))
                         (declare (not safe))
                         (foldr1 cons __tmp297285 _output-ld-opts292170_))))
                  (declare (not safe))
                  (cons _output-o_292162_ __tmp297284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o292158_
                                                         __tmp297283))))
                                            (declare (not safe))
                                            (cons _output-bin292127_
                                                  __tmp297282))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp297281))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297289
                               __tmp297280)))
                          '#!void)))))
          (let* ((_output-bin292121_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx292113_ _opts292114_)))
                 (_output-scm292123_
                  (string-append _output-bin292121_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub292119_ _output-scm292123_ _output-bin292121_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm292123_))))))
    (define gxc#find-export-binding
      (lambda (_ctx292063_ _id292064_)
        (let ((_$e292110_
               (let ((__tmp297291
                      (lambda (_e292065292067_)
                        (let* ((_g292069292079_ _e292065292067_)
                               (_else292071292087_ (lambda () '#f))
                               (_K292073292091_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g292069292079_
                                 'gx#module-export::t))
                              (let* ((_e292074292094_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292069292079_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e292075292097_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292069292079_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e292076292100_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292069292079_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e292076292100_ '0))
                                    (let ((_e292077292103_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g292069292079_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g292105292107_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g292105292107_
                                                    _id292064_)))
                                           _e292077292103_)
                                          (let ()
                                            (declare (not safe))
                                            (_K292073292091_))
                                          (let ()
                                            (declare (not safe))
                                            (_else292071292087_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else292071292087_))))
                              (let ()
                                (declare (not safe))
                                (_else292071292087_))))))
                     (__tmp297290
                      (##structure-ref
                       _ctx292063_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp297291 __tmp297290))))
          (if _$e292110_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e292110_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx292055_ _id292056_)
        (let ((_$e292058_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx292055_ _id292056_))))
          (if _$e292058_
              ((lambda (_bind292061_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind292061_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id292056_)))
                 (##structure-ref _bind292061_ '1 gx#binding::t '#f))
               _$e292058_)
              (let ((__tmp297292
                     (##structure-ref
                      _ctx292055_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp297292
                 _id292056_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx291942_)
        (letrec* ((_ht291944_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template291945_
                   (lambda (_in292007_ _phi292008_)
                     (let ((_iphi292010_
                            (fx+ _phi292008_
                                 (##direct-structure-ref
                                  _in292007_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports292011_
                            (##structure-ref
                             (##direct-structure-ref
                              _in292007_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp292013_ ((_rest292015_ _imports292011_)
                                        (_r292016_ '()))
                         (let* ((_rest292017292025_ _rest292015_)
                                (_else292019292033_ (lambda () _r292016_))
                                (_K292021292043_
                                 (lambda (_rest292036_ _in292037_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in292037_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi292010_))
                                           (let ((__tmp297293
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in292037_
                                                          _r292016_))))
                                             (declare (not safe))
                                             (_lp292013_
                                              _rest292036_
                                              __tmp297293))
                                           (let ()
                                             (declare (not safe))
                                             (_lp292013_
                                              _rest292036_
                                              _r292016_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in292037_
                                              'gx#module-import::t))
                                           (let ((_iphi292039_
                                                  (fx+ _phi292008_
                                                       (##direct-structure-ref
                                                        _in292037_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi292039_))
                                                 (let ((__tmp297294
                                                        (let ((__tmp297295
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in292037_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp297295 _r292016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp292013_
                                                    _rest292036_
                                                    __tmp297294))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp292013_
                                                    _rest292036_
                                                    _r292016_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in292037_
                                                  'gx#import-set::t))
                                               (let ((_xphi292041_
                                                      (fx+ _iphi292010_
                                                           (##direct-structure-ref
                                                            _in292037_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi292041_))
                                                     (let ((__tmp297296
                                                            (let ((__tmp297297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in292037_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp297297 _r292016_))))
               (declare (not safe))
               (_lp292013_ _rest292036_ __tmp297296))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi292041_)
                                                         (let ((__tmp297298
                                                                (let ((__tmp297299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template291945_
                                  _in292037_
                                  _iphi292010_))))
                          (declare (not safe))
                          (foldl1 cons _r292016_ __tmp297299))))
                   (declare (not safe))
                   (_lp292013_ _rest292036_ __tmp297298))
                 (let ()
                   (declare (not safe))
                   (_lp292013_ _rest292036_ _r292016_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp292013_
                                                  _rest292036_
                                                  _r292016_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest292017292025_))
                               (let ((_hd292022292046_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest292017292025_)))
                                     (_tl292023292048_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest292017292025_))))
                                 (let* ((_in292051_ _hd292022292046_)
                                        (_rest292053_ _tl292023292048_))
                                   (declare (not safe))
                                   (_K292021292043_ _rest292053_ _in292051_)))
                               (let ()
                                 (declare (not safe))
                                 (_else292019292033_))))))))
                  (_find-deps291946_
                   (lambda (_rest291953_ _deps291954_)
                     (let* ((_rest291955291963_ _rest291953_)
                            (_else291957291971_ (lambda () _deps291954_))
                            (_K291959291995_
                             (lambda (_rest291974_ _hd291975_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd291975_
                                      'gx#module-context::t))
                                   (let ((_id291977_
                                          (##structure-ref
                                           _hd291975_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports291978_
                                          (##structure-ref
                                           _hd291975_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht291944_
                                            _id291977_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps291946_
                                            _rest291974_
                                            _deps291954_))
                                         (let ((_$e291980_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd291975_))))
                                           (if _$e291980_
                                               ((lambda (_pre291983_)
                                                  (let ((_xdeps291985_
                                                         (let ((__tmp297300
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre291983_ _imports291978_))))
                   (declare (not safe))
                   (_find-deps291946_ __tmp297300 _deps291954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht291944_
                                                       _id291977_
                                                       _hd291975_))
                                                    (let ((__tmp297301
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd291975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps291985_))))
              (declare (not safe))
              (_find-deps291946_ _rest291974_ __tmp297301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e291980_)
                                               (let ((_xdeps291987_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps291946_
                                                         _imports291978_
                                                         _deps291954_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht291944_
                                                    _id291977_
                                                    _hd291975_))
                                                 (let ((__tmp297302
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd291975_
                                                                _xdeps291987_))))
                                                   (declare (not safe))
                                                   (_find-deps291946_
                                                    _rest291974_
                                                    __tmp297302)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd291975_
                                          'gx#prelude-context::t))
                                       (let ((_id291989_
                                              (##structure-ref
                                               _hd291975_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht291944_
                                                _id291989_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps291946_
                                                _rest291974_
                                                _deps291954_))
                                             (let ((_xdeps291991_
                                                    (let ((__tmp297303
                                                           (##structure-ref
                                                            _hd291975_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps291946_
                                                       __tmp297303
                                                       _deps291954_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht291944_
                                                      _id291989_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps291946_
                                                      _rest291974_
                                                      _xdeps291991_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht291944_
                                                        _id291989_
                                                        _hd291975_))
                                                     (let ((__tmp297304
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd291975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps291991_))))
               (declare (not safe))
               (_find-deps291946_ _rest291974_ __tmp297304)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd291975_
                                              'gx#module-import::t))
                                           (if (let ((__tmp297305
                                                      (##direct-structure-ref
                                                       _hd291975_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp297305))
                                               (let ((__tmp297306
                                                      (let ((__tmp297307
                                                             (##direct-structure-ref
                                                              _hd291975_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp297307
                                                              _rest291974_))))
                                                 (declare (not safe))
                                                 (_find-deps291946_
                                                  __tmp297306
                                                  _deps291954_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps291946_
                                                  _rest291974_
                                                  _deps291954_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd291975_
                                                  'gx#module-export::t))
                                               (let ((__tmp297308
                                                      (let ((__tmp297309
                                                             (##direct-structure-ref
                                                              _hd291975_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp297309
                                                              _rest291974_))))
                                                 (declare (not safe))
                                                 (_find-deps291946_
                                                  __tmp297308
                                                  _deps291954_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd291975_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp297310
                                                              (##direct-structure-ref
                                                               _hd291975_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp297310))
                                                       (let ((__tmp297311
                                                              (let ((__tmp297312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd291975_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp297312 _rest291974_))))
                 (declare (not safe))
                 (_find-deps291946_ __tmp297311 _deps291954_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd291975_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps291993_
                           (let ()
                             (declare (not safe))
                             (_import-set-template291945_ _hd291975_ '0)))
                          (__tmp297313
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest291974_ _xdeps291993_))))
                     (declare (not safe))
                     (_find-deps291946_ __tmp297313 _deps291954_))
                   (let ()
                     (declare (not safe))
                     (_find-deps291946_ _rest291974_ _deps291954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd291975_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest291955291963_))
                           (let ((_hd291960291998_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest291955291963_)))
                                 (_tl291961292000_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest291955291963_))))
                             (let* ((_hd292003_ _hd291960291998_)
                                    (_rest292005_ _tl291961292000_))
                               (declare (not safe))
                               (_K291959291995_ _rest292005_ _hd292003_)))
                           (let ()
                             (declare (not safe))
                             (_else291957291971_)))))))
          (reverse (let ((__tmp297314
                          (let ((__tmp297315
                                 (let ((_$e291948_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx291942_))))
                                   (if _$e291948_
                                       ((lambda (_pre291951_)
                                          (let ((__tmp297316
                                                 (##structure-ref
                                                  _ctx291942_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre291951_ __tmp297316)))
                                        _$e291948_)
                                       (##structure-ref
                                        _ctx291942_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps291946_ __tmp297315 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp297314))))))
    (define gxc#find-static-module-file
      (lambda (_ctx291873_)
        (let* ((_context-id291875_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx291873_
                       'gx#module-context::t))
                    (##structure-ref _ctx291873_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx291873_)))
               (_scm291877_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id291875_))
                 '".scm"))
               (_dirs291879_ (gx#current-expander-module-library-path))
               (_dirs291885_
                (let ((_user-libpath291881_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath291881_
                      (let ((_user-libpath291883_
                             (path-expand '"lib" _user-libpath291881_)))
                        (if (member _user-libpath291883_ _dirs291879_)
                            _dirs291879_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath291883_ _dirs291879_))))
                      _dirs291879_)))
               (_dirs291894_
                (let ((_$e291887_ (gxc#current-compile-output-dir)))
                  (if _$e291887_
                      ((lambda (_g291889291891_)
                         (let ()
                           (declare (not safe))
                           (cons _g291889291891_ _dirs291885_)))
                       _$e291887_)
                      _dirs291885_)))
               (_dirs291900_
                (map (lambda (_g291895291897_)
                       (path-expand '"static" _g291895291897_))
                     _dirs291894_)))
          (let _lp291903_ ((_rest291905_ _dirs291900_))
            (let* ((_rest291906291914_ _rest291905_)
                   (_else291908291922_
                    (lambda ()
                      (let ((__tmp297317
                             (##structure-ref
                              _ctx291873_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp297317
                         _scm291877_))))
                   (_K291910291930_
                    (lambda (_rest291925_ _dir291926_)
                      (let ((_path291928_
                             (path-expand _scm291877_ _dir291926_)))
                        (if (file-exists? _path291928_)
                            _path291928_
                            (let ()
                              (declare (not safe))
                              (_lp291903_ _rest291925_)))))))
              (if (let () (declare (not safe)) (##pair? _rest291906291914_))
                  (let ((_hd291911291933_
                         (let ()
                           (declare (not safe))
                           (##car _rest291906291914_)))
                        (_tl291912291935_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest291906291914_))))
                    (let* ((_dir291938_ _hd291911291933_)
                           (_rest291940_ _tl291912291935_))
                      (declare (not safe))
                      (_K291910291930_ _rest291940_ _dir291938_)))
                  (let () (declare (not safe)) (_else291908291922_))))))))
    (define gxc#file-empty?
      (lambda (_path291871_)
        (let ((__tmp297318 (file-info-size (file-info _path291871_ '#t))))
          (declare (not safe))
          (zero? __tmp297318))))
    (define gxc#compile-top-module
      (lambda (_ctx291860_)
        (let ((__tmp297322
               (lambda ()
                 (let ((__tmp297323
                        (##structure-ref
                         _ctx291860_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp297323))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp297324
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx291860_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp297324))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx291860_))
                 (if (let ((__tmp297325
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx291860_))))
                       (declare (not safe))
                       (null? __tmp297325))
                     (let* ((_thr1291865_
                             (let ((__tmp297326
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx291860_)))))
                               (declare (not safe))
                               (spawn __tmp297326)))
                            (_thr2291868_
                             (let ((__tmp297327
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx291860_)))))
                               (declare (not safe))
                               (spawn __tmp297327))))
                       (let () (declare (not safe)) (gxc#join! _thr1291865_))
                       (let () (declare (not safe)) (gxc#join! _thr2291868_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx291860_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx291860_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx291860_))
                     '#!void)))
              (__tmp297321
               (let ((__obj297126
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj297126)
                 __obj297126))
              (__tmp297320
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp297319 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp297322
           gx#current-expander-context
           _ctx291860_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp297321
           gxc#current-compile-runtime-sections
           __tmp297320
           gxc#current-compile-runtime-names
           __tmp297319))))
    (define gxc#collect-bindings
      (lambda (_ctx291858_)
        (let ((__tmp297328
               (##structure-ref _ctx291858_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp297328))))
    (define gxc#compile-runtime-code
      (lambda (_ctx291804_)
        (letrec ((_compile1291806_
                  (lambda (_ctx291847_)
                    (let* ((_code291849_
                            (##structure-ref
                             _ctx291847_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt291853_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code291849_))
                                (let ((_idstr291851_
                                       (let ((__tmp297329
                                              (##structure-ref
                                               _ctx291847_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp297329))))
                                  (string-append _idstr291851_ '"__0"))
                                '#f)))
                      (if _rt291853_
                          (begin
                            (let ((__tmp297330
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp297330 _ctx291847_ _rt291853_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code291808_
                               _ctx291847_
                               _code291849_)))
                          (let ((_path291856_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx291847_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path291856_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code291809_
                         _ctx291847_
                         _code291849_
                         _rt291853_)))))
                 (_context-timestamp291807_
                  (lambda (_ctx291845_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx291845_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code291808_
                  (lambda (_ctx291827_ _code291828_)
                    (let* ((_lifts291830_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code291833_
                            (let ((__tmp297333
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code291828_))))
                                  (__tmp297332
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp297331
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp297333
                               gx#current-expander-context
                               _ctx291827_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts291830_
                               gxc#current-compile-marks
                               __tmp297332
                               gxc#current-compile-identifiers
                               __tmp297331)))
                           (_runtime-code291835_
                            (if (let ((__tmp297334 (unbox _lifts291830_)))
                                  (declare (not safe))
                                  (null? __tmp297334))
                                _runtime-code291833_
                                (let ((__tmp297335
                                       (let ((__tmp297337
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code291833_
                                                      '())))
                                             (__tmp297336
                                              (reverse (unbox _lifts291830_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp297337
                                                 __tmp297336))))
                                  (declare (not safe))
                                  (cons 'begin __tmp297335))))
                           (_runtime-code291837_
                            (let ((__tmp297338
                                   (let ((__tmp297340
                                          (let ((__tmp297341
                                                 (let ((__tmp297344
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp291807_
                                                           _ctx291827_)))
                                                       (__tmp297342
                                                        (let ((__tmp297343
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp297343
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp297344
                                                         __tmp297342))))
                                            (declare (not safe))
                                            (cons 'define __tmp297341)))
                                         (__tmp297339
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code291835_ '()))))
                                     (declare (not safe))
                                     (cons __tmp297340 __tmp297339))))
                              (declare (not safe))
                              (cons 'begin __tmp297338)))
                           (_scm0291839_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx291827_
                               '0
                               '".scm"))))
                      (let ((_scms291842_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx291827_))))
                        (let ((__tmp297345
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0291839_
                                    _runtime-code291837_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp297345
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms291842_)
                            (delete-file _scms291842_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0291839_
                           '" => "
                           _scms291842_))
                        (copy-file _scm0291839_ _scms291842_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0291839_))))))
                 (_generate-loader-code291809_
                  (lambda (_ctx291816_ _code291817_ _rt291818_)
                    (let* ((_loader-code291821_
                            (let ((__tmp297346
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code291817_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp297346
                               gx#current-expander-context
                               _ctx291816_)))
                           (_loader-code291823_
                            (if _rt291818_
                                (let ((__tmp297347
                                       (let ((__tmp297348
                                              (let ((__tmp297349
                                                     (let ((__tmp297350
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt291818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp297350))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp297349 '()))))
                                         (declare (not safe))
                                         (cons _loader-code291821_
                                               __tmp297348))))
                                  (declare (not safe))
                                  (cons 'begin __tmp297347))
                                _loader-code291821_)))
                      (let ((__tmp297351
                             (lambda ()
                               (let ((__tmp297352
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx291816_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp297352
                                  _loader-code291823_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp297351
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules291811_
                 (let ((__tmp297353
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx291804_))))
                   (declare (not safe))
                   (cons _ctx291804_ __tmp297353))))
            (for-each
             (lambda (_ctx291813_)
               (let ((__tmp297354
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1291806_ _ctx291813_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp297354
                  gxc#current-compile-decls
                  '())))
             _all-modules291811_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx291701_)
        (letrec ((_compile-ssi291703_
                  (lambda (_code291774_)
                    (let* ((_path291776_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx291701_
                               '#f
                               '".ssi")))
                           (_prelude291787_
                            (let* ((_super291778_
                                    (##structure-ref
                                     _ctx291701_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e291780_
                                    (##structure-ref
                                     _super291778_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e291780_
                                  ((lambda (_g291782291784_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g291782291784_)))
                                   _$e291780_)
                                  ':<root>)))
                           (_ns291789_
                            (##structure-ref
                             _ctx291701_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr291791_
                            (symbol->string
                             (##structure-ref
                              _ctx291701_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg291798_
                            (let ((_$e291793_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr291791_ '#\/))))
                              (if _$e291793_
                                  ((lambda (_x291796_)
                                     (string->symbol
                                      (substring _idstr291791_ '0 _x291796_)))
                                   _$e291793_)
                                  '#f)))
                           (_rt291800_
                            (let ((__tmp297355
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp297355 _ctx291701_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path291776_))
                      (let ((__tmp297356
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude291787_))
                               (if _pkg291798_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg291798_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns291789_))
                               (newline)
                               (pretty-print _code291774_)
                               (if _rt291800_
                                   (pretty-print
                                    (let ((__tmp297357
                                           (let ((__tmp297361
                                                  (let ((__tmp297362
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp297362)))
                                                 (__tmp297358
                                                  (let ((__tmp297359
                                                         (let ((__tmp297360
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt291800_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp297360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp297359 '()))))
                                             (declare (not safe))
                                             (cons __tmp297361 __tmp297358))))
                                      (declare (not safe))
                                      (cons '%#call __tmp297357)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path291776_
                         __tmp297356)))))
                 (_compile-phi291704_
                  (lambda (_part291714_)
                    (let* ((_part291715291728_ _part291714_)
                           (_E291717291732_
                            (lambda ()
                              (error '"No clause matching"
                                     _part291715291728_)))
                           (_K291718291743_
                            (lambda (_code291735_
                                     _n291736_
                                     _phi291737_
                                     _phi-ctx291738_)
                              (let* ((_code291741_
                                      (let ((__tmp297363
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code291735_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp297363
                                         gx#current-expander-context
                                         _phi-ctx291738_
                                         gx#current-expander-phi
                                         _phi291737_)))
                                     (__tmp297364
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx291701_
                                         _n291736_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp297364
                                 _code291741_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part291715291728_))
                          (let ((_hd291719291746_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part291715291728_)))
                                (_tl291720291748_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part291715291728_))))
                            (let ((_phi-ctx291751_ _hd291719291746_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl291720291748_))
                                  (let ((_hd291721291753_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl291720291748_)))
                                        (_tl291722291755_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl291720291748_))))
                                    (let ((_phi291758_ _hd291721291753_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl291722291755_))
                                          (let ((_hd291723291760_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl291722291755_)))
                                                (_tl291724291762_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl291722291755_))))
                                            (let ((_n291765_ _hd291723291760_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl291724291762_))
                                                  (let ((_hd291725291767_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl291724291762_)))
                                                        (_tl291726291769_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl291724291762_))))
                                                    (let ((_code291772_
                                                           _hd291725291767_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl291726291769_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K291718291743_
                                                             _code291772_
                                                             _n291765_
                                                             _phi291758_
                                                             _phi-ctx291751_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E291717291732_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E291717291732_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E291717291732_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E291717291732_)))))
                          (let () (declare (not safe)) (_E291717291732_)))))))
          (let ((_g297365_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx291701_))))
            (begin
              (let ((_g297366_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g297365_)
                           (##vector-length _g297365_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g297366_ 2)))
                    (error "Context expects 2 values" _g297366_)))
              (let ((_ssi-code291706_
                     (let () (declare (not safe)) (##vector-ref _g297365_ 0)))
                    (_phi-code291707_
                     (let () (declare (not safe)) (##vector-ref _g297365_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi291703_ _ssi-code291706_))
                  (let ((_threads291712_
                         (map (lambda (_code291709_)
                                (let ((__tmp297367
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi291704_
                                            _code291709_)))))
                                  (declare (not safe))
                                  (spawn __tmp297367)))
                              _phi-code291707_)))
                    (for-each gxc#join! _threads291712_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx291684_)
        (let* ((_path291686_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx291684_ '#f '".ssxi.ss")))
               (_code291688_
                (let ((__tmp297368
                       (##structure-ref
                        _ctx291684_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp297368)))
               (_idstr291690_
                (symbol->string
                 (##structure-ref _ctx291684_ '1 gx#expander-context::t '#f)))
               (_pkg291697_
                (let ((_$e291692_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr291690_ '#\/))))
                  (if _$e291692_
                      ((lambda (_x291695_)
                         (string->symbol
                          (substring _idstr291690_ '0 _x291695_)))
                       _$e291692_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path291686_))
          (let ((__tmp297369
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg291697_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg291697_))
                       '#!void)
                   (newline)
                   (pretty-print _code291688_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path291686_ __tmp297369)))))
    (define gxc#generate-meta-code
      (lambda (_ctx291677_)
        (let* ((_state291679_
                (let ((__obj297127
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj297127 _ctx291677_)
                  __obj297127))
               (_ssi-code291681_
                (let ((__tmp297370
                       (##structure-ref
                        _ctx291677_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp297370 _state291679_))))
          (values _ssi-code291681_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state291679_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx291670_)
        (let ((_lifts291672_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp297373
                 (lambda ()
                   (let ((_code291675_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx291670_))))
                     (if (let ((__tmp297374 (unbox _lifts291672_)))
                           (declare (not safe))
                           (null? __tmp297374))
                         _code291675_
                         (let ((__tmp297375
                                (let ((__tmp297377
                                       (let ()
                                         (declare (not safe))
                                         (cons _code291675_ '())))
                                      (__tmp297376
                                       (reverse (unbox _lifts291672_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp297377 __tmp297376))))
                           (declare (not safe))
                           (cons 'begin __tmp297375))))))
                (__tmp297372
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp297371
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp297373
             gxc#current-compile-lift
             _lifts291672_
             gxc#current-compile-marks
             __tmp297372
             gxc#current-compile-identifiers
             __tmp297371)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx291666_)
        (let ((_modules291668_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp297378
                 (##structure-ref _ctx291666_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp297378 _modules291668_))
          (reverse (unbox _modules291668_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path291649_ _code291650_ _phi?291651_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path291649_))
        (let ((__tmp297379
               (lambda ()
                 (pretty-print
                  (let ((__tmp297380
                         (let ((__tmp297387
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp297381
                                (let ((__tmp297386
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp297382
                                       (let ((__tmp297385
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp297383
                                              (let ((__tmp297384
                                                     (if _phi?291651_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp297384))))
                                         (declare (not safe))
                                         (cons __tmp297385 __tmp297383))))
                                  (declare (not safe))
                                  (cons __tmp297386 __tmp297382))))
                           (declare (not safe))
                           (cons __tmp297387 __tmp297381))))
                    (declare (not safe))
                    (cons 'declare __tmp297380)))
                 (pretty-print _code291650_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path291649_ __tmp297379))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path291649_ _phi?291651_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path291649_))))
    (define gxc#compile-scm-file__0
      (lambda (_path291657_ _code291658_)
        (let ((_phi?291660_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path291657_ _code291658_ _phi?291660_))))
    (define gxc#compile-scm-file
      (lambda _g297389_
        (let ((_g297388_ (let () (declare (not safe)) (##length _g297389_))))
          (cond ((let () (declare (not safe)) (##fx= _g297388_ 2))
                 (apply (lambda (_path291657_ _code291658_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path291657_
                             _code291658_)))
                        _g297389_))
                ((let () (declare (not safe)) (##fx= _g297388_ 3))
                 (apply (lambda (_path291662_ _code291663_ _phi?291664_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path291662_
                             _code291663_
                             _phi?291664_)))
                        _g297389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g297389_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?291550_)
        (let _lp291552_ ((_rest291554_ (gxc#current-compile-gsc-options))
                         (_opts291555_ '()))
          (let* ((_rest291556291576_ _rest291554_)
                 (_else291560291584_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?291550_))
                             (gxc#current-compile-debug))
                        (let ((__tmp297390
                               (let ((__tmp297391 (reverse _opts291555_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp297391))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp297390))
                        (reverse _opts291555_)))))
            (let ((_K291570291627_
                   (lambda (_rest291625_)
                     (let ()
                       (declare (not safe))
                       (_lp291552_ _rest291625_ _opts291555_))))
                  (_K291565291609_
                   (lambda (_rest291607_)
                     (let ()
                       (declare (not safe))
                       (_lp291552_ _rest291607_ _opts291555_))))
                  (_K291562291591_
                   (lambda (_rest291588_ _opt291589_)
                     (let ((__tmp297392
                            (let ()
                              (declare (not safe))
                              (cons _opt291589_ _opts291555_))))
                       (declare (not safe))
                       (_lp291552_ _rest291588_ __tmp297392)))))
              (if (let () (declare (not safe)) (##pair? _rest291556291576_))
                  (let ((_tl291572291632_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest291556291576_)))
                        (_hd291571291630_
                         (let ()
                           (declare (not safe))
                           (##car _rest291556291576_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd291571291630_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl291572291632_))
                            (let* ((_tl291574291635_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl291572291632_)))
                                   (_rest291638_ _tl291574291635_))
                              (declare (not safe))
                              (_K291570291627_ _rest291638_))
                            (let ((_opt291599_ _hd291571291630_)
                                  (_rest291601_ _tl291572291632_))
                              (let ()
                                (declare (not safe))
                                (_K291562291591_ _rest291601_ _opt291599_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd291571291630_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl291572291632_))
                                (let* ((_tl291569291617_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl291572291632_)))
                                       (_rest291620_ _tl291569291617_))
                                  (declare (not safe))
                                  (_K291565291609_ _rest291620_))
                                (let ((_opt291599_ _hd291571291630_)
                                      (_rest291601_ _tl291572291632_))
                                  (let ()
                                    (declare (not safe))
                                    (_K291562291591_
                                     _rest291601_
                                     _opt291599_))))
                            (let ((_opt291599_ _hd291571291630_)
                                  (_rest291601_ _tl291572291632_))
                              (let ()
                                (declare (not safe))
                                (_K291562291591_ _rest291601_ _opt291599_))))))
                  (let () (declare (not safe)) (_else291560291584_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?291644_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?291644_))))
    (define gxc#gsc-link-options
      (lambda _g297394_
        (let ((_g297393_ (let () (declare (not safe)) (##length _g297394_))))
          (cond ((let () (declare (not safe)) (##fx= _g297393_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g297394_))
                ((let () (declare (not safe)) (##fx= _g297393_ 1))
                 (apply (lambda (_phi?291646_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?291646_)))
                        _g297394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g297394_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?291451_)
        (let _lp291453_ ((_rest291455_ (gxc#current-compile-gsc-options))
                         (_opts291456_ '()))
          (let* ((_rest291457291477_ _rest291455_)
                 (_else291461291485_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?291451_))
                             (gxc#current-compile-debug))
                        (let ((__tmp297395
                               (let ((__tmp297396 (reverse _opts291456_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp297396))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp297395))
                        (reverse _opts291456_)))))
            (let ((_K291471291524_
                   (lambda (_rest291521_ _opt291522_)
                     (let ((__tmp297397
                            (let ((__tmp297398
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts291456_))))
                              (declare (not safe))
                              (cons _opt291522_ __tmp297398))))
                       (declare (not safe))
                       (_lp291453_ _rest291521_ __tmp297397))))
                  (_K291466291505_
                   (lambda (_rest291503_)
                     (let ()
                       (declare (not safe))
                       (_lp291453_ _rest291503_ _opts291456_))))
                  (_K291463291491_
                   (lambda (_rest291489_)
                     (let ()
                       (declare (not safe))
                       (_lp291453_ _rest291489_ _opts291456_)))))
              (if (let () (declare (not safe)) (##pair? _rest291457291477_))
                  (let ((_tl291473291529_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest291457291477_)))
                        (_hd291472291527_
                         (let ()
                           (declare (not safe))
                           (##car _rest291457291477_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd291472291527_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl291473291529_))
                            (let ((_tl291475291534_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl291473291529_)))
                                  (_hd291474291532_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl291473291529_))))
                              (let ((_opt291537_ _hd291474291532_)
                                    (_rest291539_ _tl291475291534_))
                                (let ()
                                  (declare (not safe))
                                  (_K291471291524_ _rest291539_ _opt291537_))))
                            (let ((_rest291497_ _tl291473291529_))
                              (declare (not safe))
                              (_K291463291491_ _rest291497_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd291472291527_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl291473291529_))
                                (let* ((_tl291470291513_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl291473291529_)))
                                       (_rest291516_ _tl291470291513_))
                                  (declare (not safe))
                                  (_K291466291505_ _rest291516_))
                                (let ((_rest291497_ _tl291473291529_))
                                  (declare (not safe))
                                  (_K291463291491_ _rest291497_)))
                            (let ((_rest291497_ _tl291473291529_))
                              (declare (not safe))
                              (_K291463291491_ _rest291497_)))))
                  (let () (declare (not safe)) (_else291461291485_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?291545_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?291545_))))
    (define gxc#gsc-cc-options
      (lambda _g297400_
        (let ((_g297399_ (let () (declare (not safe)) (##length _g297400_))))
          (cond ((let () (declare (not safe)) (##fx= _g297399_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g297400_))
                ((let () (declare (not safe)) (##fx= _g297399_ 1))
                 (apply (lambda (_phi?291547_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?291547_)))
                        _g297400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g297400_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir291446_)
        (let* ((_user-staticdir291448_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp297401
                (let ((__tmp297402
                       (string-append
                        '"-I "
                        _staticdir291446_
                        '" -I "
                        _user-staticdir291448_)))
                  (declare (not safe))
                  (cons __tmp297402 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp297401))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp291358_ ((_rest291360_ (gxc#current-compile-gsc-options))
                         (_opts291361_ '()))
          (let* ((_rest291362291382_ _rest291360_)
                 (_else291366291390_ (lambda () _opts291361_)))
            (let ((_K291376291433_
                   (lambda (_rest291431_)
                     (let ()
                       (declare (not safe))
                       (_lp291358_ _rest291431_ _opts291361_))))
                  (_K291371291411_
                   (lambda (_rest291408_ _opt291409_)
                     (let ((__tmp297403
                            (append _opts291361_
                                    (let ((__tmp297404
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt291409_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp297404)))))
                       (declare (not safe))
                       (_lp291358_ _rest291408_ __tmp297403))))
                  (_K291368291396_
                   (lambda (_rest291394_)
                     (let ()
                       (declare (not safe))
                       (_lp291358_ _rest291394_ _opts291361_)))))
              (if (let () (declare (not safe)) (##pair? _rest291362291382_))
                  (let ((_tl291378291438_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest291362291382_)))
                        (_hd291377291436_
                         (let ()
                           (declare (not safe))
                           (##car _rest291362291382_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd291377291436_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl291378291438_))
                            (let* ((_tl291380291441_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl291378291438_)))
                                   (_rest291444_ _tl291380291441_))
                              (declare (not safe))
                              (_K291376291433_ _rest291444_))
                            (let ((_rest291402_ _tl291378291438_))
                              (declare (not safe))
                              (_K291368291396_ _rest291402_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd291377291436_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl291378291438_))
                                (let ((_tl291375291421_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl291378291438_)))
                                      (_hd291374291419_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl291378291438_))))
                                  (let ((_opt291424_ _hd291374291419_)
                                        (_rest291426_ _tl291375291421_))
                                    (let ()
                                      (declare (not safe))
                                      (_K291371291411_
                                       _rest291426_
                                       _opt291424_))))
                                (let ((_rest291402_ _tl291378291438_))
                                  (declare (not safe))
                                  (_K291368291396_ _rest291402_)))
                            (let ((_rest291402_ _tl291378291438_))
                              (declare (not safe))
                              (_K291368291396_ _rest291402_)))))
                  (let () (declare (not safe)) (_else291366291390_))))))))
    (define gxc#not-string-empty?
      (lambda (_str291355_)
        (let ((__tmp297405
               (let () (declare (not safe)) (string-empty? _str291355_))))
          (declare (not safe))
          (not __tmp297405))))
    (define gxc#gsc-compile-file
      (lambda (_path291323_ _phi?291324_)
        (letrec ((_gsc-link-path291326_
                  (lambda (_base-path291347_)
                    (let _lp291349_ ((_n291351_ '1))
                      (let ((_path291353_
                             (string-append
                              _base-path291347_
                              '".o"
                              (number->string _n291351_))))
                        (if (file-exists? _path291353_)
                            (let ((__tmp297406
                                   (let ()
                                     (declare (not safe))
                                     (+ _n291351_ '1))))
                              (declare (not safe))
                              (_lp291349_ __tmp297406))
                            _path291353_))))))
          (let* ((_base-path291328_ (path-strip-extension _path291323_))
                 (_path-c291330_ (string-append _base-path291328_ '".c"))
                 (_path-o291332_ (string-append _base-path291328_ '".o"))
                 (_link-path291334_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path291326_ _base-path291328_)))
                 (_link-path-c291336_ (string-append _link-path291334_ '".c"))
                 (_link-path-o291338_ (string-append _link-path291334_ '".o"))
                 (_gsc-link-opts291340_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?291324_)))
                 (_gsc-cc-opts291342_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?291324_)))
                 (_gcc-ld-opts291344_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp297413 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp297407
                   (let ((__tmp297408
                          (let ((__tmp297409
                                 (let ((__tmp297410
                                        (let ((__tmp297411
                                               (let ((__tmp297412
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path291323_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp297412
                                                         _gsc-link-opts291340_))))
                                          (declare (not safe))
                                          (cons _link-path-c291336_
                                                __tmp297411))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp297410))))
                            (declare (not safe))
                            (cons '"-flat" __tmp297409))))
                     (declare (not safe))
                     (cons '"-link" __tmp297408))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp297413 __tmp297407))
            (let ((__tmp297420 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp297414
                   (let ((__tmp297415
                          (let ((__tmp297416
                                 (let ((__tmp297417
                                        (let ((__tmp297418
                                               (let ((__tmp297419
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c291336_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c291330_
                                                       __tmp297419))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp297418
                                                  _gsc-cc-opts291342_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp297417))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp297416))))
                     (declare (not safe))
                     (cons '"-obj" __tmp297415))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp297420 __tmp297414))
            (let ((__tmp297426 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp297421
                   (let ((__tmp297422
                          (let ((__tmp297423
                                 (let ((__tmp297424
                                        (let ((__tmp297425
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o291338_
                                                       _gcc-ld-opts291344_))))
                                          (declare (not safe))
                                          (cons _path-o291332_ __tmp297425))))
                                   (declare (not safe))
                                   (cons _link-path291334_ __tmp297424))))
                            (declare (not safe))
                            (cons '"-o" __tmp297423))))
                     (declare (not safe))
                     (cons '"-shared" __tmp297422))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp297426
               __tmp297421))
            (for-each
             delete-file
             (let ((__tmp297427
                    (let ((__tmp297428
                           (let ((__tmp297429
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o291338_ '()))))
                             (declare (not safe))
                             (cons _link-path-c291336_ __tmp297429))))
                      (declare (not safe))
                      (cons _path-o291332_ __tmp297428))))
               (declare (not safe))
               (cons _path-c291330_ __tmp297427)))))))
    (define gxc#compile-output-file
      (lambda (_ctx291294_ _n291295_ _ext291296_)
        (letrec ((_module-relative-path291298_
                  (lambda (_ctx291321_)
                    (path-strip-directory
                     (let ((__tmp297430
                            (##structure-ref
                             _ctx291321_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp297430)))))
                 (_module-source-directory291299_
                  (lambda (_ctx291317_)
                    (path-directory
                     (let ((_mpath291319_
                            (##structure-ref
                             _ctx291317_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath291319_))
                           _mpath291319_
                           (let ()
                             (declare (not safe))
                             (last _mpath291319_)))))))
                 (_section-string291300_
                  (lambda (_n291315_)
                    (if (let () (declare (not safe)) (number? _n291315_))
                        (number->string _n291315_)
                        (if (let () (declare (not safe)) (symbol? _n291315_))
                            (symbol->string _n291315_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n291315_))
                                _n291315_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n291315_)))))))
                 (_file-name291301_
                  (lambda (_path291313_)
                    (if _n291295_
                        (string-append
                         _path291313_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string291300_ _n291295_))
                         _ext291296_)
                        (string-append _path291313_ _ext291296_))))
                 (_file-path291302_
                  (lambda ()
                    (let ((_$e291308_ (gxc#current-compile-output-dir)))
                      (if _$e291308_
                          ((lambda (_outdir291311_)
                             (path-expand
                              (let ((__tmp297431
                                     (let ((__tmp297432
                                            (##structure-ref
                                             _ctx291294_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp297432))))
                                (declare (not safe))
                                (_file-name291301_ __tmp297431))
                              _outdir291311_))
                           _$e291308_)
                          (path-expand
                           (let ((__tmp297433
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path291298_
                                     _ctx291294_))))
                             (declare (not safe))
                             (_file-name291301_ __tmp297433))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory291299_
                              _ctx291294_))))))))
          (let ((_path291304_
                 (let () (declare (not safe)) (_file-path291302_))))
            (let ((__tmp297434
                   (lambda ()
                     (let ((__tmp297435 (path-directory _path291304_)))
                       (declare (not safe))
                       (create-directory* __tmp297435)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp297434))
            _path291304_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx291276_)
        (letrec ((_file-name291278_
                  (lambda (_id291292_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id291292_))
                     '".scm")))
                 (_file-path291279_
                  (lambda ()
                    (let* ((_file291285_
                            (let ((__tmp297436
                                   (##structure-ref
                                    _ctx291276_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name291278_ __tmp297436)))
                           (_$e291287_ (gxc#current-compile-output-dir)))
                      (if _$e291287_
                          ((lambda (_outdir291290_)
                             (path-expand
                              _file291285_
                              (path-expand '"static" _outdir291290_)))
                           _$e291287_)
                          (path-expand _file291285_ '"static"))))))
          (let ((_path291281_
                 (let () (declare (not safe)) (_file-path291279_))))
            (let ((__tmp297437
                   (lambda ()
                     (let ((__tmp297438 (path-directory _path291281_)))
                       (declare (not safe))
                       (create-directory* __tmp297438)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp297437))
            _path291281_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx291270_ _opts291271_)
        (let ((_$e291273_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts291271_))))
          (if _$e291273_
              (values _$e291273_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx291270_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr291263_)
        (if (let () (declare (not safe)) (string? _idstr291263_))
            (let* ((_str291265_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr291263_)))
                   (_strs291267_
                    (let ()
                      (declare (not safe))
                      (string-split _str291265_ '#\/))))
              (let () (declare (not safe)) (string-join _strs291267_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr291263_))
                (let ((__tmp297439 (symbol->string _idstr291263_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp297439))
                (error '"Bad module id" _idstr291263_)))))
    (define gxc#invoke__%
      (lambda (_g297440_
               _stdout-redirection291227291231_
               _stderr-redirection291228291233_
               _program291235_
               _args291236_)
        (let* ((_stdout-redirection291238_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection291227291231_ absent-value))
                    '#f
                    _stdout-redirection291227291231_))
               (_stderr-redirection291240_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection291228291233_ absent-value))
                    '#f
                    _stderr-redirection291228291233_)))
          (let ((__tmp297441
                 (let ()
                   (declare (not safe))
                   (cons _program291235_ _args291236_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp297441))
          (let ((_proc291242_
                 (open-process
                  (let ((__tmp297442
                         (let ((__tmp297443
                                (let ((__tmp297444
                                       (let ((__tmp297445
                                              (let ((__tmp297446
                                                     (let ((__tmp297447
                                                            (let ((__tmp297448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection291240_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp297448))))
               (declare (not safe))
               (cons _stdout-redirection291238_ __tmp297447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp297446))))
                                         (declare (not safe))
                                         (cons _args291236_ __tmp297445))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp297444))))
                           (declare (not safe))
                           (cons _program291235_ __tmp297443))))
                    (declare (not safe))
                    (cons 'path: __tmp297442)))))
            (if (or _stdout-redirection291238_ _stderr-redirection291240_)
                (read-line _proc291242_ '#f)
                '#!void)
            (let ((_status291247_ (process-status _proc291242_)))
              (close-port _proc291242_)
              (if (let () (declare (not safe)) (zero? _status291247_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program291235_))))))))
    (define gxc#invoke__@
      (lambda (_keys291226291252_ . _args291254_)
        (apply gxc#invoke__%
               _keys291226291252_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys291226291252_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys291226291252_
                  'stderr-redirection:
                  absent-value))
               _args291254_)))
    (define gxc#invoke
      (lambda _args291229291260_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args291229291260_)))
    (define gxc#join!
      (lambda (_thread291220_)
        (let ((__tmp297450
               (lambda (_exn291222_)
                 (if (uncaught-exception? _exn291222_)
                     (raise (uncaught-exception-reason _exn291222_))
                     (raise _exn291222_))))
              (__tmp297449 (lambda () (thread-join! _thread291220_))))
          (declare (not safe))
          (with-catch __tmp297450 __tmp297449))))))
