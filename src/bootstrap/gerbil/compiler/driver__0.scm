(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710170112)
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
      (lambda (_path159007_ _fun159008_)
        (with-output-to-file
         (let ((__tmp159101
                (let ()
                  (declare (not safe))
                  (cons _path159007_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp159101))
         _fun159008_)))
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
      (lambda (_gerbil-libdir159002_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir159002_)))
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
      (lambda (_dir159000_) (delete-file-or-directory _dir159000_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath158974_ _opts158975_)
        (if (let () (declare (not safe)) (string? _srcpath158974_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158974_)))
        (let ((_outdir158977_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158975_)))
              (_invoke-gsc?158978_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158975_)))
              (_gsc-options158979_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158975_)))
              (_keep-scm?158980_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158975_)))
              (_verbosity158981_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158975_)))
              (_optimize158982_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts158975_)))
              (_debug158983_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158975_)))
              (_gen-ssxi158984_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts158975_))))
          (if _outdir158977_
              (let ((__tmp159102
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158977_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159102))
              '#!void)
          (if _optimize158982_
              (let ((__tmp159103
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159103))
              '#!void)
          (let ((__tmp159107
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath158974_))
                   (let ((__tmp159108
                          (let ((__tmp159109
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158974_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp159109))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp159108))))
                (__tmp159106
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp159104
                 (let ((__tmp159105
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158974_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp159105))))
            (declare (not safe))
            (call-with-parameters
             __tmp159107
             gxc#current-compile-output-dir
             _outdir158977_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158978_
             gxc#current-compile-gsc-options
             _gsc-options158979_
             gxc#current-compile-keep-scm
             _keep-scm?158980_
             gxc#current-compile-verbose
             _verbosity158981_
             gxc#current-compile-optimize
             _optimize158982_
             gxc#current-compile-debug
             _debug158983_
             gxc#current-compile-generate-ssxi
             _gen-ssxi158984_
             gxc#current-compile-timestamp
             __tmp159106
             gxc#current-compile-context
             __tmp159104
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath158993_)
        (let ((_opts158995_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath158993_ _opts158995_))))
    (define gxc#compile-module
      (lambda _g159111_
        (let ((_g159110_ (let () (declare (not safe)) (##length _g159111_))))
          (cond ((let () (declare (not safe)) (##fx= _g159110_ 1))
                 (apply (lambda (_srcpath158993_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath158993_)))
                        _g159111_))
                ((let () (declare (not safe)) (##fx= _g159110_ 2))
                 (apply (lambda (_srcpath158997_ _opts158998_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath158997_
                             _opts158998_)))
                        _g159111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g159111_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath158950_ _opts158951_)
        (if (let () (declare (not safe)) (string? _srcpath158950_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158950_)))
        (let ((_outdir158953_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158951_)))
              (_invoke-gsc?158954_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158951_)))
              (_gsc-options158955_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158951_)))
              (_keep-scm?158956_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158951_)))
              (_verbosity158957_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158951_)))
              (_debug158958_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158951_))))
          (if _outdir158953_
              (let ((__tmp159112
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158953_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159112))
              '#!void)
          (let ((__tmp159116
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath158950_))
                   (let ((__tmp159117
                          (let ((__tmp159118
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158950_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp159118))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp159117
                      _opts158951_))))
                (__tmp159115
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp159113
                 (let ((__tmp159114
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158950_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp159114))))
            (declare (not safe))
            (call-with-parameters
             __tmp159116
             gxc#current-compile-output-dir
             _outdir158953_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158954_
             gxc#current-compile-gsc-options
             _gsc-options158955_
             gxc#current-compile-keep-scm
             _keep-scm?158956_
             gxc#current-compile-verbose
             _verbosity158957_
             gxc#current-compile-debug
             _debug158958_
             gxc#current-compile-timestamp
             __tmp159115
             gxc#current-compile-context
             __tmp159113
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath158966_)
        (let ((_opts158968_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath158966_ _opts158968_))))
    (define gxc#compile-exe
      (lambda _g159120_
        (let ((_g159119_ (let () (declare (not safe)) (##length _g159120_))))
          (cond ((let () (declare (not safe)) (##fx= _g159119_ 1))
                 (apply (lambda (_srcpath158966_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath158966_)))
                        _g159120_))
                ((let () (declare (not safe)) (##fx= _g159119_ 2))
                 (apply (lambda (_srcpath158970_ _opts158971_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath158970_ _opts158971_)))
                        _g159120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g159120_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx158946_ _opts158947_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts158947_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx158946_
               _opts158947_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx158946_
               _opts158947_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx158829_ _opts158830_)
        (letrec ((_generate-stub158832_
                  (lambda (_builtin-modules158942_)
                    (let ((_mod-main158944_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158829_ 'main))))
                      (write (let ((__tmp159121
                                    (let ((__tmp159122
                                           (let ((__tmp159123
                                                  (let ((__tmp159124
                                                         (let ((__tmp159126
                                                                (let ((__tmp159127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules158942_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp159127)))
                       (__tmp159125
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp159126 __tmp159125))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp159124))))
                                             (declare (not safe))
                                             (cons __tmp159123 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp159122))))
                               (declare (not safe))
                               (cons 'define __tmp159121)))
                      (write (let ((__tmp159128
                                    (let ((__tmp159167
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp159129
                                           (let ((__tmp159130
                                                  (let ((__tmp159131
                                                         (let ((__tmp159155
                                                                (let ((__tmp159156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp159157
                                      (let ((__tmp159165
                                             (let ((__tmp159166
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp159166)))
                                            (__tmp159158
                                             (let ((__tmp159159
                                                    (let ((__tmp159160
                                                           (let ((__tmp159161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159162
                                 (let ((__tmp159163
                                        (let ((__tmp159164
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp159164 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp159163))))
                            (declare (not safe))
                            (cons __tmp159162 '()))))
                     (declare (not safe))
                     (cons _mod-main158944_ __tmp159161))))
              (declare (not safe))
              (cons 'apply __tmp159160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp159159 '()))))
                                        (declare (not safe))
                                        (cons __tmp159165 __tmp159158))))
                                 (declare (not safe))
                                 (cons '() __tmp159157))))
                          (declare (not safe))
                          (cons 'lambda __tmp159156)))
                       (__tmp159132
                        (let ((__tmp159133
                               (let ((__tmp159134
                                      (let ((__tmp159135
                                             (let ((__tmp159146
                                                    (let ((__tmp159147
                                                           (let ((__tmp159148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159149
                                 (let ((__tmp159150
                                        (let ((__tmp159151
                                               (let ((__tmp159152
                                                      (let ((__tmp159153
                                                             (let ((__tmp159154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp159154 '()))))
                (declare (not safe))
                (cons 'force-output __tmp159153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp159152 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp159151))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp159150))))
                            (declare (not safe))
                            (cons __tmp159149 '()))))
                     (declare (not safe))
                     (cons 'void __tmp159148))))
              (declare (not safe))
              (cons 'with-catch __tmp159147)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp159136
                                                    (let ((__tmp159137
                                                           (let ((__tmp159138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159139
                                 (let ((__tmp159140
                                        (let ((__tmp159141
                                               (let ((__tmp159142
                                                      (let ((__tmp159143
                                                             (let ((__tmp159144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp159145
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp159145 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp159144))))
                (declare (not safe))
                (cons __tmp159143 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp159142))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp159141))))
                                   (declare (not safe))
                                   (cons __tmp159140 '()))))
                            (declare (not safe))
                            (cons 'void __tmp159139))))
                     (declare (not safe))
                     (cons 'with-catch __tmp159138))))
              (declare (not safe))
              (cons __tmp159137 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp159146
                                                     __tmp159136))))
                                        (declare (not safe))
                                        (cons '() __tmp159135))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp159134))))
                          (declare (not safe))
                          (cons __tmp159133 '()))))
                   (declare (not safe))
                   (cons __tmp159155 __tmp159132))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp159131))))
                                             (declare (not safe))
                                             (cons __tmp159130 '()))))
                                      (declare (not safe))
                                      (cons __tmp159167 __tmp159129))))
                               (declare (not safe))
                               (cons 'define __tmp159128)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts158833_
                  (lambda (_libgerbil158940_)
                    (call-with-input-file
                     (string-append _libgerbil158940_ '".ldd")
                     read)))
                 (_replace-extension158834_
                  (lambda (_path158937_ _ext158938_)
                    (string-append
                     (path-strip-extension _path158937_)
                     _ext158938_)))
                 (_not-exclude-module?158835_
                  (lambda (_ctx158933_)
                    (let ((_id-str158935_
                           (symbol->string
                            (##structure-ref
                             _ctx158933_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp159169
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str158935_))))
                            (declare (not safe))
                            (not __tmp159169))
                          (let ((__tmp159168
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str158935_))))
                            (declare (not safe))
                            (not __tmp159168))
                          '#f))))
                 (_not-file-empty?158836_
                  (lambda (_path158931_)
                    (let ((__tmp159170
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path158931_))))
                      (declare (not safe))
                      (not __tmp159170))))
                 (_compile-stub158837_
                  (lambda (_output-scm158844_ _output-bin158845_)
                    (let* ((_gerbil-home158847_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158849_
                            (path-expand '"lib" _gerbil-home158847_))
                           (_gerbil-staticdir158851_
                            (path-expand '"static" _gerbil-libdir158849_))
                           (_gxlink158853_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir158849_))
                           (_tmp158855_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path158859_
                            (lambda (_f158857_)
                              (path-expand
                               (path-strip-directory _f158857_)
                               _tmp158855_)))
                           (_deps158861_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158829_)))
                           (_deps158863_
                            (filter _not-exclude-module?158835_ _deps158861_))
                           (_src-deps-scm158865_
                            (map gxc#find-static-module-file _deps158863_))
                           (_src-deps-scm158867_
                            (filter _not-file-empty?158836_
                                    _src-deps-scm158865_))
                           (_src-deps-scm158869_
                            (map path-expand _src-deps-scm158867_))
                           (_deps-scm158871_
                            (map _tmp-path158859_ _src-deps-scm158869_))
                           (_deps-c158877_
                            (map (lambda (_g158872158874_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158834_
                                      _g158872158874_
                                      '".c")))
                                 _deps-scm158871_))
                           (_deps-o158883_
                            (map (lambda (_g158878158880_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158834_
                                      _g158878158880_
                                      '".o")))
                                 _deps-scm158871_))
                           (_src-bin-scm158885_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158829_)))
                           (_src-bin-scm158887_
                            (path-expand _src-bin-scm158885_))
                           (_bin-scm158889_
                            (let ()
                              (declare (not safe))
                              (_tmp-path158859_ _src-bin-scm158887_)))
                           (_bin-c158891_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158834_
                               _bin-scm158889_
                               '".c")))
                           (_bin-o158893_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158834_
                               _bin-scm158889_
                               '".o")))
                           (_output-bin158895_
                            (path-expand _output-bin158845_))
                           (_output-scm158897_
                            (path-expand _output-scm158844_))
                           (_output-c158899_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158834_
                               _output-scm158897_
                               '".c")))
                           (_output-o158901_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158834_
                               _output-scm158897_
                               '".o")))
                           (_output_-c158903_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158834_
                               _output-scm158897_
                               '"_.c")))
                           (_output_-o158905_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158834_
                               _output-scm158897_
                               '"_.o")))
                           (_gsc-link-opts158907_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158909_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158911_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir158851_)))
                           (_output-ld-opts158913_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a158915_
                            (path-expand '"libgerbil.a" _gerbil-libdir158849_))
                           (_libgerbil.so158917_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir158849_))
                           (_libgerbil-ld-opts158919_
                            (if (file-exists? _libgerbil.so158917_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts158833_
                                   _libgerbil.so158917_))
                                (if (file-exists? _libgerbil.a158915_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts158833_
                                       _libgerbil.a158915_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a158915_
                                       _libgerbil.so158917_)))))
                           (_rpath158921_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158849_)))
                           (_builtin-modules158925_
                            (map (lambda (_mod158923_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod158923_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx158829_ _deps158863_)))))
                      (let ((__tmp159171
                             (lambda ()
                               (let ((__tmp159172
                                      (path-directory _output-bin158895_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp159172)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp159171))
                      (let ((__tmp159173
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub158832_
                                  _builtin-modules158925_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158897_
                         __tmp159173))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp159174
                                   (lambda () (create-directory _tmp158855_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp159174))
                            (for-each
                             copy-file
                             _src-deps-scm158869_
                             _deps-scm158871_)
                            (copy-file _src-bin-scm158887_ _bin-scm158889_)
                            (let ((__tmp159182
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159175
                                   (let ((__tmp159176
                                          (let ((__tmp159177
                                                 (let ((__tmp159178
                                                        (let ((__tmp159179
                                                               (let ((__tmp159180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159181
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm158897_ '()))))
                                (declare (not safe))
                                (cons _bin-scm158889_ __tmp159181))))
                         (declare (not safe))
                         (foldr1 cons __tmp159180 _deps-scm158871_))))
                  (declare (not safe))
                  (foldr1 cons __tmp159179 _gsc-link-opts158907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink158853_
                                                         __tmp159178))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp159177))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp159176))))
                              (declare (not safe))
                              (gxc#invoke __tmp159182 __tmp159175))
                            (let ((__tmp159190
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159183
                                   (let ((__tmp159184
                                          (let ((__tmp159185
                                                 (let ((__tmp159186
                                                        (let ((__tmp159187
                                                               (let ((__tmp159188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159189
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c158903_ '()))))
                                (declare (not safe))
                                (cons _output-c158899_ __tmp159189))))
                         (declare (not safe))
                         (cons _bin-c158891_ __tmp159188))))
                  (declare (not safe))
                  (foldr1 cons __tmp159187 _deps-c158877_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159186
                                                           _gsc-static-opts158911_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp159185
                                                    _gsc-cc-opts158909_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp159184))))
                              (declare (not safe))
                              (gxc#invoke __tmp159190 __tmp159183))
                            (let ((__tmp159203
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp159191
                                   (let ((__tmp159192
                                          (let ((__tmp159193
                                                 (let ((__tmp159194
                                                        (let ((__tmp159195
                                                               (let ((__tmp159196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159197
                                     (let ((__tmp159198
                                            (let ((__tmp159199
                                                   (let ((__tmp159200
                                                          (let ((__tmp159201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp159202
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts158919_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp159202))))
                    (declare (not safe))
                    (cons _gerbil-libdir158849_ __tmp159201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp159200))))
                                              (declare (not safe))
                                              (cons _rpath158921_
                                                    __tmp159199))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp159198
                                               _output-ld-opts158913_))))
                                (declare (not safe))
                                (cons _output_-o158905_ __tmp159197))))
                         (declare (not safe))
                         (cons _output-o158901_ __tmp159196))))
                  (declare (not safe))
                  (cons _bin-o158893_ __tmp159195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159194
                                                           _deps-o158883_))))
                                            (declare (not safe))
                                            (cons _output-bin158895_
                                                  __tmp159193))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp159192))))
                              (declare (not safe))
                              (gxc#invoke __tmp159203 __tmp159191))
                            (for-each
                             delete-file
                             (let ((__tmp159204
                                    (let ((__tmp159205
                                           (let ((__tmp159206
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o158905_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o158901_
                                                   __tmp159206))))
                                      (declare (not safe))
                                      (cons _output_-c158903_ __tmp159205))))
                               (declare (not safe))
                               (cons _output-c158899_ __tmp159204)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp158855_)))
                          '#!void)))))
          (let* ((_output-bin158839_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158829_ _opts158830_)))
                 (_output-scm158841_
                  (string-append _output-bin158839_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158837_ _output-scm158841_ _output-bin158839_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158841_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx158654_ _opts158655_)
        (letrec ((_reset-declare158657_
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
                 (_generate-stub158658_
                  (lambda (_deps158820_)
                    (let ((_mod-main158822_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158654_ 'main)))
                          (_reset-decl158823_
                           (let ()
                             (declare (not safe))
                             (_reset-declare158657_)))
                          (_user-decl158824_
                           (let ()
                             (declare (not safe))
                             (_user-declare158659_))))
                      (for-each
                       (lambda (_dep158826_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl158823_)
                         (newline)
                         (if _user-decl158824_
                             (begin (write _user-decl158824_) (newline))
                             '#!void)
                         (write (let ((__tmp159207
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep158826_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp159207)))
                         (newline))
                       _deps158820_)
                      (write (let ((__tmp159208
                                    (let ((__tmp159221
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp159209
                                           (let ((__tmp159217
                                                  (let ((__tmp159218
                                                         (let ((__tmp159219
                                                                (let ((__tmp159220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp159220))))
                   (declare (not safe))
                   (cons __tmp159219 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp159218)))
                                                 (__tmp159210
                                                  (let ((__tmp159211
                                                         (let ((__tmp159212
                                                                (let ((__tmp159213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp159214
                                      (let ((__tmp159215
                                             (let ((__tmp159216
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp159216 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp159215))))
                                 (declare (not safe))
                                 (cons __tmp159214 '()))))
                          (declare (not safe))
                          (cons _mod-main158822_ __tmp159213))))
                   (declare (not safe))
                   (cons 'apply __tmp159212))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp159211 '()))))
                                             (declare (not safe))
                                             (cons __tmp159217 __tmp159210))))
                                      (declare (not safe))
                                      (cons __tmp159221 __tmp159209))))
                               (declare (not safe))
                               (cons 'define __tmp159208)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare158659_
                  (lambda ()
                    (let* ((_gsc-opts158725_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts158655_)))
                           (_gsc-prelude158727_
                            (if _gsc-opts158725_
                                (member '"-prelude" _gsc-opts158725_)
                                '#f))
                           (_gsc-prelude158729_
                            (if _gsc-prelude158727_
                                (read (open-input-string
                                       (cadr _gsc-prelude158727_)))
                                '#f)))
                      (let _lp158732_ ((_rest158734_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude158729_ '())))
                                       (_user-decls158735_ '()))
                        (let* ((_rest158736158744_ _rest158734_)
                               (_else158738158752_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls158735_))
                                      '#f
                                      (let ((__tmp159222
                                             (reverse _user-decls158735_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp159222)))))
                               (_K158740158808_
                                (lambda (_rest158755_ _expr158756_)
                                  (let* ((_expr158757158769_ _expr158756_)
                                         (_else158760158777_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp158732_
                                               _rest158755_
                                               _user-decls158735_)))))
                                    (let ((_K158765158798_
                                           (lambda (_decls158796_)
                                             (let ((__tmp159223
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls158735_
                                                              _decls158796_))))
                                               (declare (not safe))
                                               (_lp158732_
                                                _rest158755_
                                                __tmp159223))))
                                          (_K158762158783_
                                           (lambda (_exprs158781_)
                                             (let ((__tmp159224
                                                    (append _exprs158781_
                                                            _rest158755_)))
                                               (declare (not safe))
                                               (_lp158732_
                                                __tmp159224
                                                _user-decls158735_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr158757158769_))
                                          (let ((_tl158767158803_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr158757158769_)))
                                                (_hd158766158801_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr158757158769_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd158766158801_
                                                         'declare))
                                                (let ((_decls158806_
                                                       _tl158767158803_))
                                                  (declare (not safe))
                                                  (_K158765158798_
                                                   _decls158806_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd158766158801_
                                                             'begin))
                                                    (let ((_exprs158791_
                                                           _tl158767158803_))
                                                      (declare (not safe))
                                                      (_K158762158783_
                                                       _exprs158791_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else158760158777_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else158760158777_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest158736158744_))
                              (let ((_hd158741158811_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest158736158744_)))
                                    (_tl158742158813_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest158736158744_))))
                                (let* ((_expr158816_ _hd158741158811_)
                                       (_rest158818_ _tl158742158813_))
                                  (declare (not safe))
                                  (_K158740158808_ _rest158818_ _expr158816_)))
                              (let ()
                                (declare (not safe))
                                (_else158738158752_))))))))
                 (_compile-stub158660_
                  (lambda (_output-scm158667_ _output-bin158668_)
                    (let* ((_gerbil-home158670_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158672_
                            (path-expand '"lib" _gerbil-home158670_))
                           (_runtime158674_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp158676_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home158670_))
                           (_include-gambit-sharp158678_
                            (string-append
                             '"(include \""
                             _gambit-sharp158676_
                             '"\")"))
                           (_bin-scm158680_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158654_)))
                           (_deps158682_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158654_)))
                           (_deps158684_
                            (map gxc#find-static-module-file _deps158682_))
                           (_deps158689_
                            (filter (lambda (_$obj158686_)
                                      (let ((__tmp159225
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj158686_))))
                                        (declare (not safe))
                                        (not __tmp159225)))
                                    _deps158684_))
                           (_deps158693_
                            (filter (lambda (_f158691_)
                                      (let ((__tmp159226
                                             (member _f158691_
                                                     _runtime158674_)))
                                        (declare (not safe))
                                        (not __tmp159226)))
                                    _deps158689_))
                           (_output-base158695_
                            (string-append
                             (path-strip-extension _output-scm158667_)))
                           (_output-c158697_
                            (string-append _output-base158695_ '".c"))
                           (_output-o158699_
                            (string-append _output-base158695_ '".o"))
                           (_output-c_158701_
                            (string-append _output-base158695_ '"_.c"))
                           (_output-o_158703_
                            (string-append _output-base158695_ '"_.o"))
                           (_gsc-link-opts158705_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158707_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158709_
                            (let ((__tmp159227
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir158672_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp159227)))
                           (_output-ld-opts158711_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros158713_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp159229
                                       (let ((__tmp159230
                                              (let ((__tmp159231
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp158678_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp159231))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp159230))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp159229))
                                (let ((__tmp159228
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp158678_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp159228))))
                           (_gsc-link-opts158715_
                            (append _gsc-link-opts158705_
                                    _gsc-gx-macros158713_))
                           (_rpath158717_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158672_)))
                           (_default-ld-options158719_
                            (let ((__tmp159232
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp159232))))
                      (let ((__tmp159233
                             (lambda ()
                               (let ((__tmp159234
                                      (path-directory _output-bin158668_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp159234)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp159233))
                      (let ((__tmp159235
                             (lambda ()
                               (let ((__tmp159236
                                      (let ((__tmp159237
                                             (let ((__tmp159238
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm158680_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp159238
                                                       _deps158693_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp159237
                                                _runtime158674_))))
                                 (declare (not safe))
                                 (_generate-stub158658_ __tmp159236)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158667_
                         __tmp159235))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp159244
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159239
                                   (let ((__tmp159240
                                          (let ((__tmp159241
                                                 (let ((__tmp159242
                                                        (let ((__tmp159243
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm158667_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp159243 _gsc-link-opts158715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_158701_
                                                         __tmp159242))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp159241))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp159240))))
                              (declare (not safe))
                              (gxc#invoke __tmp159244 __tmp159239))
                            (let ((__tmp159250
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159245
                                   (let ((__tmp159246
                                          (let ((__tmp159247
                                                 (let ((__tmp159248
                                                        (let ((__tmp159249
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_158701_ '()))))
                  (declare (not safe))
                  (cons _output-c158697_ __tmp159249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159248
                                                           _gsc-static-opts158709_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp159247
                                                    _gsc-cc-opts158707_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp159246))))
                              (declare (not safe))
                              (gxc#invoke __tmp159250 __tmp159245))
                            (let ((__tmp159260
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp159251
                                   (let ((__tmp159252
                                          (let ((__tmp159253
                                                 (let ((__tmp159254
                                                        (let ((__tmp159255
                                                               (let ((__tmp159256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159257
                                     (let ((__tmp159258
                                            (let ((__tmp159259
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options158719_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir158672_
                                                    __tmp159259))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp159258))))
                                (declare (not safe))
                                (cons _rpath158717_ __tmp159257))))
                         (declare (not safe))
                         (foldr1 cons __tmp159256 _output-ld-opts158711_))))
                  (declare (not safe))
                  (cons _output-o_158703_ __tmp159255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o158699_
                                                         __tmp159254))))
                                            (declare (not safe))
                                            (cons _output-bin158668_
                                                  __tmp159253))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp159252))))
                              (declare (not safe))
                              (gxc#invoke __tmp159260 __tmp159251)))
                          '#!void)))))
          (let* ((_output-bin158662_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158654_ _opts158655_)))
                 (_output-scm158664_
                  (string-append _output-bin158662_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158660_ _output-scm158664_ _output-bin158662_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158664_))))))
    (define gxc#find-export-binding
      (lambda (_ctx158604_ _id158605_)
        (let ((_$e158651_
               (let ((__tmp159262
                      (lambda (_e158606158608_)
                        (let* ((_g158610158620_ _e158606158608_)
                               (_else158612158628_ (lambda () '#f))
                               (_K158614158632_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g158610158620_
                                 'gx#module-export::t))
                              (let* ((_e158615158635_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158610158620_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e158616158638_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158610158620_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e158617158641_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158610158620_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e158617158641_ '0))
                                    (let ((_e158618158644_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g158610158620_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g158646158648_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g158646158648_
                                                    _id158605_)))
                                           _e158618158644_)
                                          (let ()
                                            (declare (not safe))
                                            (_K158614158632_))
                                          (let ()
                                            (declare (not safe))
                                            (_else158612158628_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else158612158628_))))
                              (let ()
                                (declare (not safe))
                                (_else158612158628_))))))
                     (__tmp159261
                      (##structure-ref
                       _ctx158604_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp159262 __tmp159261))))
          (if _$e158651_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e158651_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx158596_ _id158597_)
        (let ((_$e158599_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx158596_ _id158597_))))
          (if _$e158599_
              ((lambda (_bind158602_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind158602_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id158597_)))
                 (##structure-ref _bind158602_ '1 gx#binding::t '#f))
               _$e158599_)
              (let ((__tmp159263
                     (##structure-ref
                      _ctx158596_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp159263
                 _id158597_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx158483_)
        (letrec* ((_ht158485_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template158486_
                   (lambda (_in158548_ _phi158549_)
                     (let ((_iphi158551_
                            (fx+ _phi158549_
                                 (##direct-structure-ref
                                  _in158548_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports158552_
                            (##structure-ref
                             (##direct-structure-ref
                              _in158548_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp158554_ ((_rest158556_ _imports158552_)
                                        (_r158557_ '()))
                         (let* ((_rest158558158566_ _rest158556_)
                                (_else158560158574_ (lambda () _r158557_))
                                (_K158562158584_
                                 (lambda (_rest158577_ _in158578_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in158578_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi158551_))
                                           (let ((__tmp159270
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in158578_
                                                          _r158557_))))
                                             (declare (not safe))
                                             (_lp158554_
                                              _rest158577_
                                              __tmp159270))
                                           (let ()
                                             (declare (not safe))
                                             (_lp158554_
                                              _rest158577_
                                              _r158557_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in158578_
                                              'gx#module-import::t))
                                           (let ((_iphi158580_
                                                  (fx+ _phi158549_
                                                       (##direct-structure-ref
                                                        _in158578_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi158580_))
                                                 (let ((__tmp159268
                                                        (let ((__tmp159269
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in158578_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp159269 _r158557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp158554_
                                                    _rest158577_
                                                    __tmp159268))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp158554_
                                                    _rest158577_
                                                    _r158557_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in158578_
                                                  'gx#import-set::t))
                                               (let ((_xphi158582_
                                                      (fx+ _iphi158551_
                                                           (##direct-structure-ref
                                                            _in158578_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi158582_))
                                                     (let ((__tmp159266
                                                            (let ((__tmp159267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in158578_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp159267 _r158557_))))
               (declare (not safe))
               (_lp158554_ _rest158577_ __tmp159266))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi158582_)
                                                         (let ((__tmp159264
                                                                (let ((__tmp159265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template158486_
                                  _in158578_
                                  _iphi158551_))))
                          (declare (not safe))
                          (foldl1 cons _r158557_ __tmp159265))))
                   (declare (not safe))
                   (_lp158554_ _rest158577_ __tmp159264))
                 (let ()
                   (declare (not safe))
                   (_lp158554_ _rest158577_ _r158557_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp158554_
                                                  _rest158577_
                                                  _r158557_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest158558158566_))
                               (let ((_hd158563158587_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest158558158566_)))
                                     (_tl158564158589_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest158558158566_))))
                                 (let* ((_in158592_ _hd158563158587_)
                                        (_rest158594_ _tl158564158589_))
                                   (declare (not safe))
                                   (_K158562158584_ _rest158594_ _in158592_)))
                               (let ()
                                 (declare (not safe))
                                 (_else158560158574_))))))))
                  (_find-deps158487_
                   (lambda (_rest158494_ _deps158495_)
                     (let* ((_rest158496158504_ _rest158494_)
                            (_else158498158512_ (lambda () _deps158495_))
                            (_K158500158536_
                             (lambda (_rest158515_ _hd158516_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd158516_
                                      'gx#module-context::t))
                                   (let ((_id158518_
                                          (##structure-ref
                                           _hd158516_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports158519_
                                          (##structure-ref
                                           _hd158516_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht158485_ _id158518_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps158487_
                                            _rest158515_
                                            _deps158495_))
                                         (let ((_$e158521_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd158516_))))
                                           (if _$e158521_
                                               ((lambda (_pre158524_)
                                                  (let ((_xdeps158526_
                                                         (let ((__tmp159283
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre158524_ _imports158519_))))
                   (declare (not safe))
                   (_find-deps158487_ __tmp159283 _deps158495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht158485_
                                                       _id158518_
                                                       _hd158516_))
                                                    (let ((__tmp159284
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd158516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps158526_))))
              (declare (not safe))
              (_find-deps158487_ _rest158515_ __tmp159284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e158521_)
                                               (let ((_xdeps158528_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps158487_
                                                         _imports158519_
                                                         _deps158495_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht158485_
                                                    _id158518_
                                                    _hd158516_))
                                                 (let ((__tmp159282
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd158516_
                                                                _xdeps158528_))))
                                                   (declare (not safe))
                                                   (_find-deps158487_
                                                    _rest158515_
                                                    __tmp159282)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd158516_
                                          'gx#prelude-context::t))
                                       (let ((_id158530_
                                              (##structure-ref
                                               _hd158516_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht158485_
                                                _id158530_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps158487_
                                                _rest158515_
                                                _deps158495_))
                                             (let ((_xdeps158532_
                                                    (let ((__tmp159280
                                                           (##structure-ref
                                                            _hd158516_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps158487_
                                                       __tmp159280
                                                       _deps158495_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht158485_
                                                      _id158530_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps158487_
                                                      _rest158515_
                                                      _xdeps158532_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht158485_
                                                        _id158530_
                                                        _hd158516_))
                                                     (let ((__tmp159281
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd158516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps158532_))))
               (declare (not safe))
               (_find-deps158487_ _rest158515_ __tmp159281)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd158516_
                                              'gx#module-import::t))
                                           (if (let ((__tmp159279
                                                      (##direct-structure-ref
                                                       _hd158516_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp159279))
                                               (let ((__tmp159277
                                                      (let ((__tmp159278
                                                             (##direct-structure-ref
                                                              _hd158516_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp159278
                                                              _rest158515_))))
                                                 (declare (not safe))
                                                 (_find-deps158487_
                                                  __tmp159277
                                                  _deps158495_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps158487_
                                                  _rest158515_
                                                  _deps158495_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd158516_
                                                  'gx#module-export::t))
                                               (let ((__tmp159275
                                                      (let ((__tmp159276
                                                             (##direct-structure-ref
                                                              _hd158516_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp159276
                                                              _rest158515_))))
                                                 (declare (not safe))
                                                 (_find-deps158487_
                                                  __tmp159275
                                                  _deps158495_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd158516_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp159274
                                                              (##direct-structure-ref
                                                               _hd158516_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp159274))
                                                       (let ((__tmp159272
                                                              (let ((__tmp159273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd158516_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp159273 _rest158515_))))
                 (declare (not safe))
                 (_find-deps158487_ __tmp159272 _deps158495_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd158516_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps158534_
                           (let ()
                             (declare (not safe))
                             (_import-set-template158486_ _hd158516_ '0)))
                          (__tmp159271
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest158515_ _xdeps158534_))))
                     (declare (not safe))
                     (_find-deps158487_ __tmp159271 _deps158495_))
                   (let ()
                     (declare (not safe))
                     (_find-deps158487_ _rest158515_ _deps158495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd158516_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest158496158504_))
                           (let ((_hd158501158539_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest158496158504_)))
                                 (_tl158502158541_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest158496158504_))))
                             (let* ((_hd158544_ _hd158501158539_)
                                    (_rest158546_ _tl158502158541_))
                               (declare (not safe))
                               (_K158500158536_ _rest158546_ _hd158544_)))
                           (let ()
                             (declare (not safe))
                             (_else158498158512_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp159285
                                  (let ((_$e158489_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx158483_))))
                                    (if _$e158489_
                                        ((lambda (_pre158492_)
                                           (let ((__tmp159286
                                                  (##structure-ref
                                                   _ctx158483_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre158492_ __tmp159286)))
                                         _$e158489_)
                                        (##structure-ref
                                         _ctx158483_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps158487_ __tmp159285 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx158414_)
        (let* ((_context-id158416_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx158414_
                       'gx#module-context::t))
                    (##structure-ref _ctx158414_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx158414_)))
               (_scm158418_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id158416_))
                 '".scm"))
               (_dirs158420_ (gx#current-expander-module-library-path))
               (_dirs158426_
                (let ((_user-libpath158422_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath158422_
                      (let ((_user-libpath158424_
                             (path-expand '"lib" _user-libpath158422_)))
                        (if (member _user-libpath158424_ _dirs158420_)
                            _dirs158420_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath158424_ _dirs158420_))))
                      _dirs158420_)))
               (_dirs158435_
                (let ((_$e158428_ (gxc#current-compile-output-dir)))
                  (if _$e158428_
                      ((lambda (_g158430158432_)
                         (let ()
                           (declare (not safe))
                           (cons _g158430158432_ _dirs158426_)))
                       _$e158428_)
                      _dirs158426_)))
               (_dirs158441_
                (map (lambda (_g158436158438_)
                       (path-expand '"static" _g158436158438_))
                     _dirs158435_)))
          (let _lp158444_ ((_rest158446_ _dirs158441_))
            (let* ((_rest158447158455_ _rest158446_)
                   (_else158449158463_
                    (lambda ()
                      (let ((__tmp159287
                             (##structure-ref
                              _ctx158414_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp159287
                         _scm158418_))))
                   (_K158451158471_
                    (lambda (_rest158466_ _dir158467_)
                      (let ((_path158469_
                             (path-expand _scm158418_ _dir158467_)))
                        (if (file-exists? _path158469_)
                            _path158469_
                            (let ()
                              (declare (not safe))
                              (_lp158444_ _rest158466_)))))))
              (if (let () (declare (not safe)) (##pair? _rest158447158455_))
                  (let ((_hd158452158474_
                         (let ()
                           (declare (not safe))
                           (##car _rest158447158455_)))
                        (_tl158453158476_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158447158455_))))
                    (let* ((_dir158479_ _hd158452158474_)
                           (_rest158481_ _tl158453158476_))
                      (declare (not safe))
                      (_K158451158471_ _rest158481_ _dir158479_)))
                  (let () (declare (not safe)) (_else158449158463_))))))))
    (define gxc#file-empty?
      (lambda (_path158412_)
        (let ((__tmp159288 (file-info-size (file-info _path158412_ '#t))))
          (declare (not safe))
          (zero? __tmp159288))))
    (define gxc#compile-top-module
      (lambda (_ctx158401_)
        (let ((__tmp159292
               (lambda ()
                 (let ((__tmp159293
                        (##structure-ref
                         _ctx158401_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp159293))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp159294
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx158401_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp159294))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx158401_))
                 (if (let ((__tmp159297
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx158401_))))
                       (declare (not safe))
                       (null? __tmp159297))
                     (let* ((_thr1158406_
                             (let ((__tmp159295
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx158401_)))))
                               (declare (not safe))
                               (spawn __tmp159295)))
                            (_thr2158409_
                             (let ((__tmp159296
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx158401_)))))
                               (declare (not safe))
                               (spawn __tmp159296))))
                       (let () (declare (not safe)) (gxc#join! _thr1158406_))
                       (let () (declare (not safe)) (gxc#join! _thr2158409_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx158401_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx158401_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx158401_))
                     '#!void)))
              (__tmp159291
               (let ((__obj159099
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj159099)
                 __obj159099))
              (__tmp159290 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp159289 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp159292
           gx#current-expander-context
           _ctx158401_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp159291
           gxc#current-compile-runtime-sections
           __tmp159290
           gxc#current-compile-runtime-names
           __tmp159289))))
    (define gxc#collect-bindings
      (lambda (_ctx158399_)
        (let ((__tmp159298
               (##structure-ref _ctx158399_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp159298))))
    (define gxc#compile-runtime-code
      (lambda (_ctx158345_)
        (letrec ((_compile1158347_
                  (lambda (_ctx158388_)
                    (let* ((_code158390_
                            (##structure-ref
                             _ctx158388_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt158394_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code158390_))
                                (let ((_idstr158392_
                                       (let ((__tmp159299
                                              (##structure-ref
                                               _ctx158388_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp159299))))
                                  (string-append _idstr158392_ '"__0"))
                                '#f)))
                      (if _rt158394_
                          (begin
                            (let ((__tmp159300
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp159300 _ctx158388_ _rt158394_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code158349_
                               _ctx158388_
                               _code158390_)))
                          (let ((_path158397_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx158388_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path158397_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code158350_
                         _ctx158388_
                         _code158390_
                         _rt158394_)))))
                 (_context-timestamp158348_
                  (lambda (_ctx158386_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx158386_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code158349_
                  (lambda (_ctx158368_ _code158369_)
                    (let* ((_lifts158371_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code158374_
                            (let ((__tmp159303
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code158369_))))
                                  (__tmp159302
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp159301
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp159303
                               gx#current-expander-context
                               _ctx158368_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts158371_
                               gxc#current-compile-marks
                               __tmp159302
                               gxc#current-compile-identifiers
                               __tmp159301)))
                           (_runtime-code158376_
                            (if (let ((__tmp159307 (unbox _lifts158371_)))
                                  (declare (not safe))
                                  (null? __tmp159307))
                                _runtime-code158374_
                                (let ((__tmp159304
                                       (let ((__tmp159306
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code158374_
                                                      '())))
                                             (__tmp159305
                                              (reverse (unbox _lifts158371_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp159306
                                                 __tmp159305))))
                                  (declare (not safe))
                                  (cons 'begin __tmp159304))))
                           (_runtime-code158378_
                            (let ((__tmp159308
                                   (let ((__tmp159310
                                          (let ((__tmp159311
                                                 (let ((__tmp159314
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp158348_
                                                           _ctx158368_)))
                                                       (__tmp159312
                                                        (let ((__tmp159313
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp159313
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp159314
                                                         __tmp159312))))
                                            (declare (not safe))
                                            (cons 'define __tmp159311)))
                                         (__tmp159309
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code158376_ '()))))
                                     (declare (not safe))
                                     (cons __tmp159310 __tmp159309))))
                              (declare (not safe))
                              (cons 'begin __tmp159308)))
                           (_scm0158380_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx158368_
                               '0
                               '".scm"))))
                      (let ((_scms158383_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx158368_))))
                        (let ((__tmp159315
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0158380_
                                    _runtime-code158378_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp159315
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms158383_)
                            (delete-file _scms158383_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0158380_
                           '" => "
                           _scms158383_))
                        (copy-file _scm0158380_ _scms158383_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0158380_))))))
                 (_generate-loader-code158350_
                  (lambda (_ctx158357_ _code158358_ _rt158359_)
                    (let* ((_loader-code158362_
                            (let ((__tmp159316
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code158358_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp159316
                               gx#current-expander-context
                               _ctx158357_)))
                           (_loader-code158364_
                            (if _rt158359_
                                (let ((__tmp159317
                                       (let ((__tmp159318
                                              (let ((__tmp159319
                                                     (let ((__tmp159320
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt158359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp159320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159319 '()))))
                                         (declare (not safe))
                                         (cons _loader-code158362_
                                               __tmp159318))))
                                  (declare (not safe))
                                  (cons 'begin __tmp159317))
                                _loader-code158362_)))
                      (let ((__tmp159321
                             (lambda ()
                               (let ((__tmp159322
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx158357_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp159322
                                  _loader-code158364_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp159321
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules158352_
                 (let ((__tmp159323
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx158345_))))
                   (declare (not safe))
                   (cons _ctx158345_ __tmp159323))))
            (for-each
             (lambda (_ctx158354_)
               (let ((__tmp159324
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1158347_ _ctx158354_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp159324
                  gxc#current-compile-decls
                  '())))
             _all-modules158352_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx158242_)
        (letrec ((_compile-ssi158244_
                  (lambda (_code158315_)
                    (let* ((_path158317_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx158242_
                               '#f
                               '".ssi")))
                           (_prelude158328_
                            (let* ((_super158319_
                                    (##structure-ref
                                     _ctx158242_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e158321_
                                    (##structure-ref
                                     _super158319_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e158321_
                                  ((lambda (_g158323158325_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g158323158325_)))
                                   _$e158321_)
                                  ':<root>)))
                           (_ns158330_
                            (##structure-ref
                             _ctx158242_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr158332_
                            (symbol->string
                             (##structure-ref
                              _ctx158242_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg158339_
                            (let ((_$e158334_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr158332_ '#\/))))
                              (if _$e158334_
                                  ((lambda (_x158337_)
                                     (string->symbol
                                      (substring _idstr158332_ '0 _x158337_)))
                                   _$e158334_)
                                  '#f)))
                           (_rt158341_
                            (let ((__tmp159325
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp159325 _ctx158242_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path158317_))
                      (let ((__tmp159326
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude158328_))
                               (if _pkg158339_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg158339_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns158330_))
                               (newline)
                               (pretty-print _code158315_)
                               (if _rt158341_
                                   (pretty-print
                                    (let ((__tmp159327
                                           (let ((__tmp159331
                                                  (let ((__tmp159332
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp159332)))
                                                 (__tmp159328
                                                  (let ((__tmp159329
                                                         (let ((__tmp159330
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt158341_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp159330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp159329 '()))))
                                             (declare (not safe))
                                             (cons __tmp159331 __tmp159328))))
                                      (declare (not safe))
                                      (cons '%#call __tmp159327)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path158317_
                         __tmp159326)))))
                 (_compile-phi158245_
                  (lambda (_part158255_)
                    (let* ((_part158256158269_ _part158255_)
                           (_E158258158273_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part158256158269_))))
                           (_K158259158284_
                            (lambda (_code158276_
                                     _n158277_
                                     _phi158278_
                                     _phi-ctx158279_)
                              (let* ((_code158282_
                                      (let ((__tmp159333
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code158276_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp159333
                                         gx#current-expander-context
                                         _phi-ctx158279_
                                         gx#current-expander-phi
                                         _phi158278_)))
                                     (__tmp159334
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx158242_
                                         _n158277_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp159334
                                 _code158282_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part158256158269_))
                          (let ((_hd158260158287_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part158256158269_)))
                                (_tl158261158289_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part158256158269_))))
                            (let ((_phi-ctx158292_ _hd158260158287_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl158261158289_))
                                  (let ((_hd158262158294_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl158261158289_)))
                                        (_tl158263158296_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl158261158289_))))
                                    (let ((_phi158299_ _hd158262158294_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl158263158296_))
                                          (let ((_hd158264158301_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl158263158296_)))
                                                (_tl158265158303_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl158263158296_))))
                                            (let ((_n158306_ _hd158264158301_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl158265158303_))
                                                  (let ((_hd158266158308_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl158265158303_)))
                                                        (_tl158267158310_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl158265158303_))))
                                                    (let ((_code158313_
                                                           _hd158266158308_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl158267158310_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K158259158284_
                                                             _code158313_
                                                             _n158306_
                                                             _phi158299_
                                                             _phi-ctx158292_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E158258158273_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E158258158273_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E158258158273_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E158258158273_)))))
                          (let () (declare (not safe)) (_E158258158273_)))))))
          (let ((_g159335_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx158242_))))
            (begin
              (let ((_g159336_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g159335_)
                           (##vector-length _g159335_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g159336_ 2)))
                    (error "Context expects 2 values" _g159336_)))
              (let ((_ssi-code158247_
                     (let () (declare (not safe)) (##vector-ref _g159335_ 0)))
                    (_phi-code158248_
                     (let () (declare (not safe)) (##vector-ref _g159335_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi158244_ _ssi-code158247_))
                  (let ((_threads158253_
                         (map (lambda (_code158250_)
                                (let ((__tmp159337
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi158245_
                                            _code158250_)))))
                                  (declare (not safe))
                                  (spawn __tmp159337)))
                              _phi-code158248_)))
                    (for-each gxc#join! _threads158253_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx158225_)
        (let* ((_path158227_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx158225_ '#f '".ssxi.ss")))
               (_code158229_
                (let ((__tmp159338
                       (##structure-ref
                        _ctx158225_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp159338)))
               (_idstr158231_
                (symbol->string
                 (##structure-ref _ctx158225_ '1 gx#expander-context::t '#f)))
               (_pkg158238_
                (let ((_$e158233_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr158231_ '#\/))))
                  (if _$e158233_
                      ((lambda (_x158236_)
                         (string->symbol
                          (substring _idstr158231_ '0 _x158236_)))
                       _$e158233_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path158227_))
          (let ((__tmp159339
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg158238_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg158238_))
                       '#!void)
                   (newline)
                   (pretty-print _code158229_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path158227_ __tmp159339)))))
    (define gxc#generate-meta-code
      (lambda (_ctx158218_)
        (let* ((_state158220_
                (let ((__obj159100
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj159100 _ctx158218_)
                  __obj159100))
               (_ssi-code158222_
                (let ((__tmp159340
                       (##structure-ref
                        _ctx158218_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp159340
                   'state:
                   _state158220_))))
          (values _ssi-code158222_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state158220_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx158211_)
        (let ((_lifts158213_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp159343
                 (lambda ()
                   (let ((_code158216_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx158211_))))
                     (if (let ((__tmp159347 (unbox _lifts158213_)))
                           (declare (not safe))
                           (null? __tmp159347))
                         _code158216_
                         (let ((__tmp159344
                                (let ((__tmp159346
                                       (let ()
                                         (declare (not safe))
                                         (cons _code158216_ '())))
                                      (__tmp159345
                                       (reverse (unbox _lifts158213_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp159346 __tmp159345))))
                           (declare (not safe))
                           (cons 'begin __tmp159344))))))
                (__tmp159342
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp159341
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp159343
             gxc#current-compile-lift
             _lifts158213_
             gxc#current-compile-marks
             __tmp159342
             gxc#current-compile-identifiers
             __tmp159341)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx158207_)
        (let ((_modules158209_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp159348
                 (##structure-ref _ctx158207_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp159348 'modules: _modules158209_))
          (reverse (unbox _modules158209_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path158190_ _code158191_ _phi?158192_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path158190_))
        (let ((__tmp159349
               (lambda ()
                 (pretty-print
                  (let ((__tmp159350
                         (let ((__tmp159357
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp159351
                                (let ((__tmp159356
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp159352
                                       (let ((__tmp159355
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp159353
                                              (let ((__tmp159354
                                                     (if _phi?158192_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp159354))))
                                         (declare (not safe))
                                         (cons __tmp159355 __tmp159353))))
                                  (declare (not safe))
                                  (cons __tmp159356 __tmp159352))))
                           (declare (not safe))
                           (cons __tmp159357 __tmp159351))))
                    (declare (not safe))
                    (cons 'declare __tmp159350)))
                 (pretty-print _code158191_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path158190_ __tmp159349))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path158190_ _phi?158192_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path158190_))))
    (define gxc#compile-scm-file__0
      (lambda (_path158198_ _code158199_)
        (let ((_phi?158201_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path158198_ _code158199_ _phi?158201_))))
    (define gxc#compile-scm-file
      (lambda _g159359_
        (let ((_g159358_ (let () (declare (not safe)) (##length _g159359_))))
          (cond ((let () (declare (not safe)) (##fx= _g159358_ 2))
                 (apply (lambda (_path158198_ _code158199_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path158198_
                             _code158199_)))
                        _g159359_))
                ((let () (declare (not safe)) (##fx= _g159358_ 3))
                 (apply (lambda (_path158203_ _code158204_ _phi?158205_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path158203_
                             _code158204_
                             _phi?158205_)))
                        _g159359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g159359_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?158091_)
        (let _lp158093_ ((_rest158095_ (gxc#current-compile-gsc-options))
                         (_opts158096_ '()))
          (let* ((_rest158097158117_ _rest158095_)
                 (_else158101158125_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?158091_))
                             (gxc#current-compile-debug))
                        (let ((__tmp159360
                               (let ((__tmp159361 (reverse _opts158096_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp159361))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp159360))
                        (reverse _opts158096_)))))
            (let ((_K158111158168_
                   (lambda (_rest158166_)
                     (let ()
                       (declare (not safe))
                       (_lp158093_ _rest158166_ _opts158096_))))
                  (_K158106158150_
                   (lambda (_rest158148_)
                     (let ()
                       (declare (not safe))
                       (_lp158093_ _rest158148_ _opts158096_))))
                  (_K158103158132_
                   (lambda (_rest158129_ _opt158130_)
                     (let ((__tmp159362
                            (let ()
                              (declare (not safe))
                              (cons _opt158130_ _opts158096_))))
                       (declare (not safe))
                       (_lp158093_ _rest158129_ __tmp159362)))))
              (if (let () (declare (not safe)) (##pair? _rest158097158117_))
                  (let ((_tl158113158173_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158097158117_)))
                        (_hd158112158171_
                         (let ()
                           (declare (not safe))
                           (##car _rest158097158117_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158112158171_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158113158173_))
                            (let* ((_tl158115158176_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl158113158173_)))
                                   (_rest158179_ _tl158115158176_))
                              (declare (not safe))
                              (_K158111158168_ _rest158179_))
                            (let ((_opt158140_ _hd158112158171_)
                                  (_rest158142_ _tl158113158173_))
                              (let ()
                                (declare (not safe))
                                (_K158103158132_ _rest158142_ _opt158140_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158112158171_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158113158173_))
                                (let* ((_tl158110158158_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl158113158173_)))
                                       (_rest158161_ _tl158110158158_))
                                  (declare (not safe))
                                  (_K158106158150_ _rest158161_))
                                (let ((_opt158140_ _hd158112158171_)
                                      (_rest158142_ _tl158113158173_))
                                  (let ()
                                    (declare (not safe))
                                    (_K158103158132_
                                     _rest158142_
                                     _opt158140_))))
                            (let ((_opt158140_ _hd158112158171_)
                                  (_rest158142_ _tl158113158173_))
                              (let ()
                                (declare (not safe))
                                (_K158103158132_ _rest158142_ _opt158140_))))))
                  (let () (declare (not safe)) (_else158101158125_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?158185_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?158185_))))
    (define gxc#gsc-link-options
      (lambda _g159364_
        (let ((_g159363_ (let () (declare (not safe)) (##length _g159364_))))
          (cond ((let () (declare (not safe)) (##fx= _g159363_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g159364_))
                ((let () (declare (not safe)) (##fx= _g159363_ 1))
                 (apply (lambda (_phi?158187_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?158187_)))
                        _g159364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g159364_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?157992_)
        (let _lp157994_ ((_rest157996_ (gxc#current-compile-gsc-options))
                         (_opts157997_ '()))
          (let* ((_rest157998158018_ _rest157996_)
                 (_else158002158026_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157992_))
                             (gxc#current-compile-debug))
                        (let ((__tmp159365
                               (let ((__tmp159366 (reverse _opts157997_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp159366))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp159365))
                        (reverse _opts157997_)))))
            (let ((_K158012158065_
                   (lambda (_rest158062_ _opt158063_)
                     (let ((__tmp159367
                            (let ((__tmp159368
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts157997_))))
                              (declare (not safe))
                              (cons _opt158063_ __tmp159368))))
                       (declare (not safe))
                       (_lp157994_ _rest158062_ __tmp159367))))
                  (_K158007158046_
                   (lambda (_rest158044_)
                     (let ()
                       (declare (not safe))
                       (_lp157994_ _rest158044_ _opts157997_))))
                  (_K158004158032_
                   (lambda (_rest158030_)
                     (let ()
                       (declare (not safe))
                       (_lp157994_ _rest158030_ _opts157997_)))))
              (if (let () (declare (not safe)) (##pair? _rest157998158018_))
                  (let ((_tl158014158070_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157998158018_)))
                        (_hd158013158068_
                         (let ()
                           (declare (not safe))
                           (##car _rest157998158018_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158013158068_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158014158070_))
                            (let ((_tl158016158075_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl158014158070_)))
                                  (_hd158015158073_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl158014158070_))))
                              (let ((_opt158078_ _hd158015158073_)
                                    (_rest158080_ _tl158016158075_))
                                (let ()
                                  (declare (not safe))
                                  (_K158012158065_ _rest158080_ _opt158078_))))
                            (let ((_rest158038_ _tl158014158070_))
                              (declare (not safe))
                              (_K158004158032_ _rest158038_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158013158068_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158014158070_))
                                (let* ((_tl158011158054_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl158014158070_)))
                                       (_rest158057_ _tl158011158054_))
                                  (declare (not safe))
                                  (_K158007158046_ _rest158057_))
                                (let ((_rest158038_ _tl158014158070_))
                                  (declare (not safe))
                                  (_K158004158032_ _rest158038_)))
                            (let ((_rest158038_ _tl158014158070_))
                              (declare (not safe))
                              (_K158004158032_ _rest158038_)))))
                  (let () (declare (not safe)) (_else158002158026_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?158086_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?158086_))))
    (define gxc#gsc-cc-options
      (lambda _g159370_
        (let ((_g159369_ (let () (declare (not safe)) (##length _g159370_))))
          (cond ((let () (declare (not safe)) (##fx= _g159369_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g159370_))
                ((let () (declare (not safe)) (##fx= _g159369_ 1))
                 (apply (lambda (_phi?158088_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?158088_)))
                        _g159370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g159370_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir157987_)
        (let* ((_user-staticdir157989_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp159371
                (let ((__tmp159372
                       (string-append
                        '"-I "
                        _staticdir157987_
                        '" -I "
                        _user-staticdir157989_)))
                  (declare (not safe))
                  (cons __tmp159372 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp159371))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp157899_ ((_rest157901_ (gxc#current-compile-gsc-options))
                         (_opts157902_ '()))
          (let* ((_rest157903157923_ _rest157901_)
                 (_else157907157931_ (lambda () _opts157902_)))
            (let ((_K157917157974_
                   (lambda (_rest157972_)
                     (let ()
                       (declare (not safe))
                       (_lp157899_ _rest157972_ _opts157902_))))
                  (_K157912157952_
                   (lambda (_rest157949_ _opt157950_)
                     (let ((__tmp159373
                            (append _opts157902_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt157950_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp157899_ _rest157949_ __tmp159373))))
                  (_K157909157937_
                   (lambda (_rest157935_)
                     (let ()
                       (declare (not safe))
                       (_lp157899_ _rest157935_ _opts157902_)))))
              (if (let () (declare (not safe)) (##pair? _rest157903157923_))
                  (let ((_tl157919157979_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157903157923_)))
                        (_hd157918157977_
                         (let ()
                           (declare (not safe))
                           (##car _rest157903157923_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157918157977_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157919157979_))
                            (let* ((_tl157921157982_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157919157979_)))
                                   (_rest157985_ _tl157921157982_))
                              (declare (not safe))
                              (_K157917157974_ _rest157985_))
                            (let ((_rest157943_ _tl157919157979_))
                              (declare (not safe))
                              (_K157909157937_ _rest157943_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157918157977_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157919157979_))
                                (let ((_tl157916157962_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl157919157979_)))
                                      (_hd157915157960_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl157919157979_))))
                                  (let ((_opt157965_ _hd157915157960_)
                                        (_rest157967_ _tl157916157962_))
                                    (let ()
                                      (declare (not safe))
                                      (_K157912157952_
                                       _rest157967_
                                       _opt157965_))))
                                (let ((_rest157943_ _tl157919157979_))
                                  (declare (not safe))
                                  (_K157909157937_ _rest157943_)))
                            (let ((_rest157943_ _tl157919157979_))
                              (declare (not safe))
                              (_K157909157937_ _rest157943_)))))
                  (let () (declare (not safe)) (_else157907157931_))))))))
    (define gxc#not-string-empty?
      (lambda (_str157896_)
        (let ((__tmp159374
               (let () (declare (not safe)) (string-empty? _str157896_))))
          (declare (not safe))
          (not __tmp159374))))
    (define gxc#gsc-compile-file
      (lambda (_path157864_ _phi?157865_)
        (letrec ((_gsc-link-path157867_
                  (lambda (_base-path157888_)
                    (let _lp157890_ ((_n157892_ '1))
                      (let ((_path157894_
                             (string-append
                              _base-path157888_
                              '".o"
                              (number->string _n157892_))))
                        (if (file-exists? _path157894_)
                            (let ((__tmp159375
                                   (let ()
                                     (declare (not safe))
                                     (+ _n157892_ '1))))
                              (declare (not safe))
                              (_lp157890_ __tmp159375))
                            _path157894_))))))
          (let* ((_base-path157869_ (path-strip-extension _path157864_))
                 (_path-c157871_ (string-append _base-path157869_ '".c"))
                 (_path-o157873_ (string-append _base-path157869_ '".o"))
                 (_link-path157875_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path157867_ _base-path157869_)))
                 (_link-path-c157877_ (string-append _link-path157875_ '".c"))
                 (_link-path-o157879_ (string-append _link-path157875_ '".o"))
                 (_gsc-link-opts157881_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?157865_)))
                 (_gsc-cc-opts157883_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?157865_)))
                 (_gcc-ld-opts157885_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp159382 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp159376
                   (let ((__tmp159377
                          (let ((__tmp159378
                                 (let ((__tmp159379
                                        (let ((__tmp159380
                                               (let ((__tmp159381
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path157864_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp159381
                                                         _gsc-link-opts157881_))))
                                          (declare (not safe))
                                          (cons _link-path-c157877_
                                                __tmp159380))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp159379))))
                            (declare (not safe))
                            (cons '"-flat" __tmp159378))))
                     (declare (not safe))
                     (cons '"-link" __tmp159377))))
              (declare (not safe))
              (gxc#invoke __tmp159382 __tmp159376 'stdout-redirection: '#t))
            (let ((__tmp159389 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp159383
                   (let ((__tmp159384
                          (let ((__tmp159385
                                 (let ((__tmp159386
                                        (let ((__tmp159387
                                               (let ((__tmp159388
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c157877_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c157871_
                                                       __tmp159388))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp159387
                                                  _gsc-cc-opts157883_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp159386))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp159385))))
                     (declare (not safe))
                     (cons '"-obj" __tmp159384))))
              (declare (not safe))
              (gxc#invoke __tmp159389 __tmp159383 'stdout-redirection: '#t))
            (let ((__tmp159395 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp159390
                   (let ((__tmp159391
                          (let ((__tmp159392
                                 (let ((__tmp159393
                                        (let ((__tmp159394
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o157879_
                                                       _gcc-ld-opts157885_))))
                                          (declare (not safe))
                                          (cons _path-o157873_ __tmp159394))))
                                   (declare (not safe))
                                   (cons _link-path157875_ __tmp159393))))
                            (declare (not safe))
                            (cons '"-o" __tmp159392))))
                     (declare (not safe))
                     (cons '"-shared" __tmp159391))))
              (declare (not safe))
              (gxc#invoke __tmp159395 __tmp159390))
            (for-each
             delete-file
             (let ((__tmp159396
                    (let ((__tmp159397
                           (let ((__tmp159398
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o157879_ '()))))
                             (declare (not safe))
                             (cons _link-path-c157877_ __tmp159398))))
                      (declare (not safe))
                      (cons _path-o157873_ __tmp159397))))
               (declare (not safe))
               (cons _path-c157871_ __tmp159396)))))))
    (define gxc#compile-output-file
      (lambda (_ctx157835_ _n157836_ _ext157837_)
        (letrec ((_module-relative-path157839_
                  (lambda (_ctx157862_)
                    (path-strip-directory
                     (let ((__tmp159399
                            (##structure-ref
                             _ctx157862_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp159399)))))
                 (_module-source-directory157840_
                  (lambda (_ctx157858_)
                    (path-directory
                     (let ((_mpath157860_
                            (##structure-ref
                             _ctx157858_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath157860_))
                           _mpath157860_
                           (last _mpath157860_))))))
                 (_section-string157841_
                  (lambda (_n157856_)
                    (if (let () (declare (not safe)) (number? _n157856_))
                        (number->string _n157856_)
                        (if (let () (declare (not safe)) (symbol? _n157856_))
                            (symbol->string _n157856_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n157856_))
                                _n157856_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n157856_)))))))
                 (_file-name157842_
                  (lambda (_path157854_)
                    (if _n157836_
                        (string-append
                         _path157854_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string157841_ _n157836_))
                         _ext157837_)
                        (string-append _path157854_ _ext157837_))))
                 (_file-path157843_
                  (lambda ()
                    (let ((_$e157849_ (gxc#current-compile-output-dir)))
                      (if _$e157849_
                          ((lambda (_outdir157852_)
                             (path-expand
                              (let ((__tmp159401
                                     (let ((__tmp159402
                                            (##structure-ref
                                             _ctx157835_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp159402))))
                                (declare (not safe))
                                (_file-name157842_ __tmp159401))
                              _outdir157852_))
                           _$e157849_)
                          (path-expand
                           (let ((__tmp159400
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path157839_
                                     _ctx157835_))))
                             (declare (not safe))
                             (_file-name157842_ __tmp159400))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory157840_
                              _ctx157835_))))))))
          (let ((_path157845_
                 (let () (declare (not safe)) (_file-path157843_))))
            (let ((__tmp159403
                   (lambda ()
                     (let ((__tmp159404 (path-directory _path157845_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp159404)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp159403))
            _path157845_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx157817_)
        (letrec ((_file-name157819_
                  (lambda (_id157833_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id157833_))
                     '".scm")))
                 (_file-path157820_
                  (lambda ()
                    (let* ((_file157826_
                            (let ((__tmp159405
                                   (##structure-ref
                                    _ctx157817_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name157819_ __tmp159405)))
                           (_$e157828_ (gxc#current-compile-output-dir)))
                      (if _$e157828_
                          ((lambda (_outdir157831_)
                             (path-expand
                              _file157826_
                              (path-expand '"static" _outdir157831_)))
                           _$e157828_)
                          (path-expand _file157826_ '"static"))))))
          (let ((_path157822_
                 (let () (declare (not safe)) (_file-path157820_))))
            (let ((__tmp159406
                   (lambda ()
                     (let ((__tmp159407 (path-directory _path157822_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp159407)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp159406))
            _path157822_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx157811_ _opts157812_)
        (let ((_$e157814_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts157812_))))
          (if _$e157814_
              (values _$e157814_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx157811_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr157804_)
        (if (let () (declare (not safe)) (string? _idstr157804_))
            (let* ((_str157806_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr157804_)))
                   (_strs157808_
                    (let ()
                      (declare (not safe))
                      (string-split _str157806_ '#\/))))
              (let () (declare (not safe)) (string-join _strs157808_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr157804_))
                (let ((__tmp159408 (symbol->string _idstr157804_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp159408))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr157804_))))))
    (define gxc#invoke__%
      (lambda (_g159409_
               _stdout-redirection157765157769_
               _stderr-redirection157766157771_
               _program157773_
               _args157774_)
        (let* ((_stdout-redirection157776_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection157765157769_ absent-value))
                    '#f
                    _stdout-redirection157765157769_))
               (_stderr-redirection157778_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection157766157771_ absent-value))
                    '#f
                    _stderr-redirection157766157771_)))
          (let ((__tmp159410
                 (let ()
                   (declare (not safe))
                   (cons _program157773_ _args157774_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp159410))
          (let* ((_proc157780_
                  (open-process
                   (let ((__tmp159411
                          (let ((__tmp159412
                                 (let ((__tmp159413
                                        (let ((__tmp159414
                                               (let ((__tmp159415
                                                      (let ((__tmp159416
                                                             (let ((__tmp159417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection157778_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp159417))))
                (declare (not safe))
                (cons _stdout-redirection157776_ __tmp159416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp159415))))
                                          (declare (not safe))
                                          (cons _args157774_ __tmp159414))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp159413))))
                            (declare (not safe))
                            (cons _program157773_ __tmp159412))))
                     (declare (not safe))
                     (cons 'path: __tmp159411))))
                 (_output157785_
                  (if (or _stdout-redirection157776_
                          _stderr-redirection157778_)
                      (read-line _proc157780_ '#f)
                      '#f)))
            (let ((_status157788_ (process-status _proc157780_)))
              (close-port _proc157780_)
              (if (let () (declare (not safe)) (zero? _status157788_))
                  '#!void
                  (begin
                    (display _output157785_)
                    (let ((__tmp159418
                           (let ()
                             (declare (not safe))
                             (cons _program157773_ _args157774_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp159418
                       _status157788_)))))))))
    (define gxc#invoke__@
      (lambda (_keys157764157793_ . _args157795_)
        (apply gxc#invoke__%
               _keys157764157793_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157764157793_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157764157793_
                  'stderr-redirection:
                  absent-value))
               _args157795_)))
    (define gxc#invoke
      (lambda _args157767157801_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args157767157801_)))
    (define gxc#join!
      (lambda (_thread157758_)
        (let ((__tmp159420
               (lambda (_exn157760_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn157760_))
                     (let ((__tmp159421
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn157760_))))
                       (declare (not safe))
                       (raise __tmp159421))
                     (let () (declare (not safe)) (raise _exn157760_)))))
              (__tmp159419 (lambda () (thread-join! _thread157758_))))
          (declare (not safe))
          (with-catch __tmp159420 __tmp159419))))))
