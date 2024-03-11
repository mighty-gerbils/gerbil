(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710140934)
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
      (lambda (_path159009_ _fun159010_)
        (with-output-to-file
         (let ((__tmp159103
                (let ()
                  (declare (not safe))
                  (cons _path159009_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp159103))
         _fun159010_)))
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
      (lambda (_gerbil-libdir159004_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir159004_)))
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
      (lambda (_dir159002_) (delete-file-or-directory _dir159002_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath158976_ _opts158977_)
        (if (let () (declare (not safe)) (string? _srcpath158976_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158976_)))
        (let ((_outdir158979_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158977_)))
              (_invoke-gsc?158980_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158977_)))
              (_gsc-options158981_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158977_)))
              (_keep-scm?158982_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158977_)))
              (_verbosity158983_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158977_)))
              (_optimize158984_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts158977_)))
              (_debug158985_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158977_)))
              (_gen-ssxi158986_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts158977_))))
          (if _outdir158979_
              (let ((__tmp159104
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158979_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159104))
              '#!void)
          (if _optimize158984_
              (let ((__tmp159105
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159105))
              '#!void)
          (let ((__tmp159109
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath158976_))
                   (let ((__tmp159110
                          (let ((__tmp159111
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158976_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp159111))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp159110))))
                (__tmp159108
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp159106
                 (let ((__tmp159107
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158976_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp159107))))
            (declare (not safe))
            (call-with-parameters
             __tmp159109
             gxc#current-compile-output-dir
             _outdir158979_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158980_
             gxc#current-compile-gsc-options
             _gsc-options158981_
             gxc#current-compile-keep-scm
             _keep-scm?158982_
             gxc#current-compile-verbose
             _verbosity158983_
             gxc#current-compile-optimize
             _optimize158984_
             gxc#current-compile-debug
             _debug158985_
             gxc#current-compile-generate-ssxi
             _gen-ssxi158986_
             gxc#current-compile-timestamp
             __tmp159108
             gxc#current-compile-context
             __tmp159106
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath158995_)
        (let ((_opts158997_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath158995_ _opts158997_))))
    (define gxc#compile-module
      (lambda _g159113_
        (let ((_g159112_ (let () (declare (not safe)) (##length _g159113_))))
          (cond ((let () (declare (not safe)) (##fx= _g159112_ 1))
                 (apply (lambda (_srcpath158995_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath158995_)))
                        _g159113_))
                ((let () (declare (not safe)) (##fx= _g159112_ 2))
                 (apply (lambda (_srcpath158999_ _opts159000_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath158999_
                             _opts159000_)))
                        _g159113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g159113_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath158952_ _opts158953_)
        (if (let () (declare (not safe)) (string? _srcpath158952_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158952_)))
        (let ((_outdir158955_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158953_)))
              (_invoke-gsc?158956_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158953_)))
              (_gsc-options158957_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158953_)))
              (_keep-scm?158958_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158953_)))
              (_verbosity158959_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158953_)))
              (_debug158960_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158953_))))
          (if _outdir158955_
              (let ((__tmp159114
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158955_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159114))
              '#!void)
          (let ((__tmp159118
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath158952_))
                   (let ((__tmp159119
                          (let ((__tmp159120
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158952_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp159120))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp159119
                      _opts158953_))))
                (__tmp159117
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp159115
                 (let ((__tmp159116
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158952_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp159116))))
            (declare (not safe))
            (call-with-parameters
             __tmp159118
             gxc#current-compile-output-dir
             _outdir158955_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158956_
             gxc#current-compile-gsc-options
             _gsc-options158957_
             gxc#current-compile-keep-scm
             _keep-scm?158958_
             gxc#current-compile-verbose
             _verbosity158959_
             gxc#current-compile-debug
             _debug158960_
             gxc#current-compile-timestamp
             __tmp159117
             gxc#current-compile-context
             __tmp159115
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath158968_)
        (let ((_opts158970_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath158968_ _opts158970_))))
    (define gxc#compile-exe
      (lambda _g159122_
        (let ((_g159121_ (let () (declare (not safe)) (##length _g159122_))))
          (cond ((let () (declare (not safe)) (##fx= _g159121_ 1))
                 (apply (lambda (_srcpath158968_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath158968_)))
                        _g159122_))
                ((let () (declare (not safe)) (##fx= _g159121_ 2))
                 (apply (lambda (_srcpath158972_ _opts158973_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath158972_ _opts158973_)))
                        _g159122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g159122_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx158948_ _opts158949_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts158949_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx158948_
               _opts158949_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx158948_
               _opts158949_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx158831_ _opts158832_)
        (letrec ((_generate-stub158834_
                  (lambda (_builtin-modules158944_)
                    (let ((_mod-main158946_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158831_ 'main))))
                      (write (let ((__tmp159123
                                    (let ((__tmp159124
                                           (let ((__tmp159125
                                                  (let ((__tmp159126
                                                         (let ((__tmp159128
                                                                (let ((__tmp159129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules158944_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp159129)))
                       (__tmp159127
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp159128 __tmp159127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp159126))))
                                             (declare (not safe))
                                             (cons __tmp159125 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp159124))))
                               (declare (not safe))
                               (cons 'define __tmp159123)))
                      (write (let ((__tmp159130
                                    (let ((__tmp159169
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp159131
                                           (let ((__tmp159132
                                                  (let ((__tmp159133
                                                         (let ((__tmp159157
                                                                (let ((__tmp159158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp159159
                                      (let ((__tmp159167
                                             (let ((__tmp159168
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp159168)))
                                            (__tmp159160
                                             (let ((__tmp159161
                                                    (let ((__tmp159162
                                                           (let ((__tmp159163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159164
                                 (let ((__tmp159165
                                        (let ((__tmp159166
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp159166 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp159165))))
                            (declare (not safe))
                            (cons __tmp159164 '()))))
                     (declare (not safe))
                     (cons _mod-main158946_ __tmp159163))))
              (declare (not safe))
              (cons 'apply __tmp159162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp159161 '()))))
                                        (declare (not safe))
                                        (cons __tmp159167 __tmp159160))))
                                 (declare (not safe))
                                 (cons '() __tmp159159))))
                          (declare (not safe))
                          (cons 'lambda __tmp159158)))
                       (__tmp159134
                        (let ((__tmp159135
                               (let ((__tmp159136
                                      (let ((__tmp159137
                                             (let ((__tmp159148
                                                    (let ((__tmp159149
                                                           (let ((__tmp159150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159151
                                 (let ((__tmp159152
                                        (let ((__tmp159153
                                               (let ((__tmp159154
                                                      (let ((__tmp159155
                                                             (let ((__tmp159156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp159156 '()))))
                (declare (not safe))
                (cons 'force-output __tmp159155))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp159154 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp159153))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp159152))))
                            (declare (not safe))
                            (cons __tmp159151 '()))))
                     (declare (not safe))
                     (cons 'void __tmp159150))))
              (declare (not safe))
              (cons 'with-catch __tmp159149)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp159138
                                                    (let ((__tmp159139
                                                           (let ((__tmp159140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp159141
                                 (let ((__tmp159142
                                        (let ((__tmp159143
                                               (let ((__tmp159144
                                                      (let ((__tmp159145
                                                             (let ((__tmp159146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp159147
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp159147 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp159146))))
                (declare (not safe))
                (cons __tmp159145 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp159144))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp159143))))
                                   (declare (not safe))
                                   (cons __tmp159142 '()))))
                            (declare (not safe))
                            (cons 'void __tmp159141))))
                     (declare (not safe))
                     (cons 'with-catch __tmp159140))))
              (declare (not safe))
              (cons __tmp159139 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp159148
                                                     __tmp159138))))
                                        (declare (not safe))
                                        (cons '() __tmp159137))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp159136))))
                          (declare (not safe))
                          (cons __tmp159135 '()))))
                   (declare (not safe))
                   (cons __tmp159157 __tmp159134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp159133))))
                                             (declare (not safe))
                                             (cons __tmp159132 '()))))
                                      (declare (not safe))
                                      (cons __tmp159169 __tmp159131))))
                               (declare (not safe))
                               (cons 'define __tmp159130)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts158835_
                  (lambda (_libgerbil158942_)
                    (call-with-input-file
                     (string-append _libgerbil158942_ '".ldd")
                     read)))
                 (_replace-extension158836_
                  (lambda (_path158939_ _ext158940_)
                    (string-append
                     (path-strip-extension _path158939_)
                     _ext158940_)))
                 (_not-exclude-module?158837_
                  (lambda (_ctx158935_)
                    (let ((_id-str158937_
                           (symbol->string
                            (##structure-ref
                             _ctx158935_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp159171
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str158937_))))
                            (declare (not safe))
                            (not __tmp159171))
                          (let ((__tmp159170
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str158937_))))
                            (declare (not safe))
                            (not __tmp159170))
                          '#f))))
                 (_not-file-empty?158838_
                  (lambda (_path158933_)
                    (let ((__tmp159172
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path158933_))))
                      (declare (not safe))
                      (not __tmp159172))))
                 (_compile-stub158839_
                  (lambda (_output-scm158846_ _output-bin158847_)
                    (let* ((_gerbil-home158849_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158851_
                            (path-expand '"lib" _gerbil-home158849_))
                           (_gerbil-staticdir158853_
                            (path-expand '"static" _gerbil-libdir158851_))
                           (_gxlink158855_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir158851_))
                           (_tmp158857_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path158861_
                            (lambda (_f158859_)
                              (path-expand
                               (path-strip-directory _f158859_)
                               _tmp158857_)))
                           (_deps158863_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158831_)))
                           (_deps158865_
                            (filter _not-exclude-module?158837_ _deps158863_))
                           (_src-deps-scm158867_
                            (map gxc#find-static-module-file _deps158865_))
                           (_src-deps-scm158869_
                            (filter _not-file-empty?158838_
                                    _src-deps-scm158867_))
                           (_src-deps-scm158871_
                            (map path-expand _src-deps-scm158869_))
                           (_deps-scm158873_
                            (map _tmp-path158861_ _src-deps-scm158871_))
                           (_deps-c158879_
                            (map (lambda (_g158874158876_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158836_
                                      _g158874158876_
                                      '".c")))
                                 _deps-scm158873_))
                           (_deps-o158885_
                            (map (lambda (_g158880158882_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158836_
                                      _g158880158882_
                                      '".o")))
                                 _deps-scm158873_))
                           (_src-bin-scm158887_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158831_)))
                           (_src-bin-scm158889_
                            (path-expand _src-bin-scm158887_))
                           (_bin-scm158891_
                            (let ()
                              (declare (not safe))
                              (_tmp-path158861_ _src-bin-scm158889_)))
                           (_bin-c158893_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158836_
                               _bin-scm158891_
                               '".c")))
                           (_bin-o158895_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158836_
                               _bin-scm158891_
                               '".o")))
                           (_output-bin158897_
                            (path-expand _output-bin158847_))
                           (_output-scm158899_
                            (path-expand _output-scm158846_))
                           (_output-c158901_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158836_
                               _output-scm158899_
                               '".c")))
                           (_output-o158903_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158836_
                               _output-scm158899_
                               '".o")))
                           (_output_-c158905_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158836_
                               _output-scm158899_
                               '"_.c")))
                           (_output_-o158907_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158836_
                               _output-scm158899_
                               '"_.o")))
                           (_gsc-link-opts158909_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158911_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158913_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir158853_)))
                           (_output-ld-opts158915_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a158917_
                            (path-expand '"libgerbil.a" _gerbil-libdir158851_))
                           (_libgerbil.so158919_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir158851_))
                           (_libgerbil-ld-opts158921_
                            (if (file-exists? _libgerbil.so158919_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts158835_
                                   _libgerbil.so158919_))
                                (if (file-exists? _libgerbil.a158917_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts158835_
                                       _libgerbil.a158917_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a158917_
                                       _libgerbil.so158919_)))))
                           (_rpath158923_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158851_)))
                           (_builtin-modules158927_
                            (map (lambda (_mod158925_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod158925_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx158831_ _deps158865_)))))
                      (let ((__tmp159173
                             (lambda ()
                               (let ((__tmp159174
                                      (path-directory _output-bin158897_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp159174)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp159173))
                      (let ((__tmp159175
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub158834_
                                  _builtin-modules158927_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158899_
                         __tmp159175))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp159176
                                   (lambda () (create-directory _tmp158857_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp159176))
                            (for-each
                             copy-file
                             _src-deps-scm158871_
                             _deps-scm158873_)
                            (copy-file _src-bin-scm158889_ _bin-scm158891_)
                            (let ((__tmp159184
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159177
                                   (let ((__tmp159178
                                          (let ((__tmp159179
                                                 (let ((__tmp159180
                                                        (let ((__tmp159181
                                                               (let ((__tmp159182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159183
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm158899_ '()))))
                                (declare (not safe))
                                (cons _bin-scm158891_ __tmp159183))))
                         (declare (not safe))
                         (foldr1 cons __tmp159182 _deps-scm158873_))))
                  (declare (not safe))
                  (foldr1 cons __tmp159181 _gsc-link-opts158909_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink158855_
                                                         __tmp159180))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp159179))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp159178))))
                              (declare (not safe))
                              (gxc#invoke __tmp159184 __tmp159177))
                            (let ((__tmp159192
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159185
                                   (let ((__tmp159186
                                          (let ((__tmp159187
                                                 (let ((__tmp159188
                                                        (let ((__tmp159189
                                                               (let ((__tmp159190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159191
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c158905_ '()))))
                                (declare (not safe))
                                (cons _output-c158901_ __tmp159191))))
                         (declare (not safe))
                         (cons _bin-c158893_ __tmp159190))))
                  (declare (not safe))
                  (foldr1 cons __tmp159189 _deps-c158879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159188
                                                           _gsc-static-opts158913_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp159187
                                                    _gsc-cc-opts158911_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp159186))))
                              (declare (not safe))
                              (gxc#invoke __tmp159192 __tmp159185))
                            (let ((__tmp159205
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp159193
                                   (let ((__tmp159194
                                          (let ((__tmp159195
                                                 (let ((__tmp159196
                                                        (let ((__tmp159197
                                                               (let ((__tmp159198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159199
                                     (let ((__tmp159200
                                            (let ((__tmp159201
                                                   (let ((__tmp159202
                                                          (let ((__tmp159203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp159204
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts158921_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp159204))))
                    (declare (not safe))
                    (cons _gerbil-libdir158851_ __tmp159203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp159202))))
                                              (declare (not safe))
                                              (cons _rpath158923_
                                                    __tmp159201))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp159200
                                               _output-ld-opts158915_))))
                                (declare (not safe))
                                (cons _output_-o158907_ __tmp159199))))
                         (declare (not safe))
                         (cons _output-o158903_ __tmp159198))))
                  (declare (not safe))
                  (cons _bin-o158895_ __tmp159197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159196
                                                           _deps-o158885_))))
                                            (declare (not safe))
                                            (cons _output-bin158897_
                                                  __tmp159195))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp159194))))
                              (declare (not safe))
                              (gxc#invoke __tmp159205 __tmp159193))
                            (for-each
                             delete-file
                             (let ((__tmp159206
                                    (let ((__tmp159207
                                           (let ((__tmp159208
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o158907_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o158903_
                                                   __tmp159208))))
                                      (declare (not safe))
                                      (cons _output_-c158905_ __tmp159207))))
                               (declare (not safe))
                               (cons _output-c158901_ __tmp159206)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp158857_)))
                          '#!void)))))
          (let* ((_output-bin158841_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158831_ _opts158832_)))
                 (_output-scm158843_
                  (string-append _output-bin158841_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158839_ _output-scm158843_ _output-bin158841_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158843_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx158656_ _opts158657_)
        (letrec ((_reset-declare158659_
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
                 (_generate-stub158660_
                  (lambda (_deps158822_)
                    (let ((_mod-main158824_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158656_ 'main)))
                          (_reset-decl158825_
                           (let ()
                             (declare (not safe))
                             (_reset-declare158659_)))
                          (_user-decl158826_
                           (let ()
                             (declare (not safe))
                             (_user-declare158661_))))
                      (for-each
                       (lambda (_dep158828_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl158825_)
                         (newline)
                         (if _user-decl158826_
                             (begin (write _user-decl158826_) (newline))
                             '#!void)
                         (write (let ((__tmp159209
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep158828_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp159209)))
                         (newline))
                       _deps158822_)
                      (write (let ((__tmp159210
                                    (let ((__tmp159223
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp159211
                                           (let ((__tmp159219
                                                  (let ((__tmp159220
                                                         (let ((__tmp159221
                                                                (let ((__tmp159222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp159222))))
                   (declare (not safe))
                   (cons __tmp159221 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp159220)))
                                                 (__tmp159212
                                                  (let ((__tmp159213
                                                         (let ((__tmp159214
                                                                (let ((__tmp159215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp159216
                                      (let ((__tmp159217
                                             (let ((__tmp159218
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp159218 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp159217))))
                                 (declare (not safe))
                                 (cons __tmp159216 '()))))
                          (declare (not safe))
                          (cons _mod-main158824_ __tmp159215))))
                   (declare (not safe))
                   (cons 'apply __tmp159214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp159213 '()))))
                                             (declare (not safe))
                                             (cons __tmp159219 __tmp159212))))
                                      (declare (not safe))
                                      (cons __tmp159223 __tmp159211))))
                               (declare (not safe))
                               (cons 'define __tmp159210)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare158661_
                  (lambda ()
                    (let* ((_gsc-opts158727_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts158657_)))
                           (_gsc-prelude158729_
                            (if _gsc-opts158727_
                                (member '"-prelude" _gsc-opts158727_)
                                '#f))
                           (_gsc-prelude158731_
                            (if _gsc-prelude158729_
                                (read (open-input-string
                                       (cadr _gsc-prelude158729_)))
                                '#f)))
                      (let _lp158734_ ((_rest158736_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude158731_ '())))
                                       (_user-decls158737_ '()))
                        (let* ((_rest158738158746_ _rest158736_)
                               (_else158740158754_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls158737_))
                                      '#f
                                      (let ((__tmp159224
                                             (reverse _user-decls158737_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp159224)))))
                               (_K158742158810_
                                (lambda (_rest158757_ _expr158758_)
                                  (let* ((_expr158759158771_ _expr158758_)
                                         (_else158762158779_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp158734_
                                               _rest158757_
                                               _user-decls158737_)))))
                                    (let ((_K158767158800_
                                           (lambda (_decls158798_)
                                             (let ((__tmp159225
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls158737_
                                                              _decls158798_))))
                                               (declare (not safe))
                                               (_lp158734_
                                                _rest158757_
                                                __tmp159225))))
                                          (_K158764158785_
                                           (lambda (_exprs158783_)
                                             (let ((__tmp159226
                                                    (append _exprs158783_
                                                            _rest158757_)))
                                               (declare (not safe))
                                               (_lp158734_
                                                __tmp159226
                                                _user-decls158737_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr158759158771_))
                                          (let ((_tl158769158805_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr158759158771_)))
                                                (_hd158768158803_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr158759158771_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd158768158803_
                                                         'declare))
                                                (let ((_decls158808_
                                                       _tl158769158805_))
                                                  (declare (not safe))
                                                  (_K158767158800_
                                                   _decls158808_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd158768158803_
                                                             'begin))
                                                    (let ((_exprs158793_
                                                           _tl158769158805_))
                                                      (declare (not safe))
                                                      (_K158764158785_
                                                       _exprs158793_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else158762158779_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else158762158779_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest158738158746_))
                              (let ((_hd158743158813_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest158738158746_)))
                                    (_tl158744158815_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest158738158746_))))
                                (let* ((_expr158818_ _hd158743158813_)
                                       (_rest158820_ _tl158744158815_))
                                  (declare (not safe))
                                  (_K158742158810_ _rest158820_ _expr158818_)))
                              (let ()
                                (declare (not safe))
                                (_else158740158754_))))))))
                 (_compile-stub158662_
                  (lambda (_output-scm158669_ _output-bin158670_)
                    (let* ((_gerbil-home158672_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158674_
                            (path-expand '"lib" _gerbil-home158672_))
                           (_runtime158676_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp158678_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home158672_))
                           (_include-gambit-sharp158680_
                            (string-append
                             '"(include \""
                             _gambit-sharp158678_
                             '"\")"))
                           (_bin-scm158682_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158656_)))
                           (_deps158684_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158656_)))
                           (_deps158686_
                            (map gxc#find-static-module-file _deps158684_))
                           (_deps158691_
                            (filter (lambda (_$obj158688_)
                                      (let ((__tmp159227
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj158688_))))
                                        (declare (not safe))
                                        (not __tmp159227)))
                                    _deps158686_))
                           (_deps158695_
                            (filter (lambda (_f158693_)
                                      (let ((__tmp159228
                                             (member _f158693_
                                                     _runtime158676_)))
                                        (declare (not safe))
                                        (not __tmp159228)))
                                    _deps158691_))
                           (_output-base158697_
                            (string-append
                             (path-strip-extension _output-scm158669_)))
                           (_output-c158699_
                            (string-append _output-base158697_ '".c"))
                           (_output-o158701_
                            (string-append _output-base158697_ '".o"))
                           (_output-c_158703_
                            (string-append _output-base158697_ '"_.c"))
                           (_output-o_158705_
                            (string-append _output-base158697_ '"_.o"))
                           (_gsc-link-opts158707_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158709_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158711_
                            (let ((__tmp159229
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir158674_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp159229)))
                           (_output-ld-opts158713_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros158715_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp159231
                                       (let ((__tmp159232
                                              (let ((__tmp159233
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp158680_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp159233))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp159232))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp159231))
                                (let ((__tmp159230
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp158680_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp159230))))
                           (_gsc-link-opts158717_
                            (append _gsc-link-opts158707_
                                    _gsc-gx-macros158715_))
                           (_rpath158719_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158674_)))
                           (_default-ld-options158721_
                            (let ((__tmp159234
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp159234))))
                      (let ((__tmp159235
                             (lambda ()
                               (let ((__tmp159236
                                      (path-directory _output-bin158670_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp159236)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp159235))
                      (let ((__tmp159237
                             (lambda ()
                               (let ((__tmp159238
                                      (let ((__tmp159239
                                             (let ((__tmp159240
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm158682_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp159240
                                                       _deps158695_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp159239
                                                _runtime158676_))))
                                 (declare (not safe))
                                 (_generate-stub158660_ __tmp159238)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158669_
                         __tmp159237))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp159246
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159241
                                   (let ((__tmp159242
                                          (let ((__tmp159243
                                                 (let ((__tmp159244
                                                        (let ((__tmp159245
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm158669_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp159245 _gsc-link-opts158717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_158703_
                                                         __tmp159244))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp159243))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp159242))))
                              (declare (not safe))
                              (gxc#invoke __tmp159246 __tmp159241))
                            (let ((__tmp159252
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp159247
                                   (let ((__tmp159248
                                          (let ((__tmp159249
                                                 (let ((__tmp159250
                                                        (let ((__tmp159251
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_158703_ '()))))
                  (declare (not safe))
                  (cons _output-c158699_ __tmp159251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp159250
                                                           _gsc-static-opts158711_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp159249
                                                    _gsc-cc-opts158709_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp159248))))
                              (declare (not safe))
                              (gxc#invoke __tmp159252 __tmp159247))
                            (let ((__tmp159262
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp159253
                                   (let ((__tmp159254
                                          (let ((__tmp159255
                                                 (let ((__tmp159256
                                                        (let ((__tmp159257
                                                               (let ((__tmp159258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp159259
                                     (let ((__tmp159260
                                            (let ((__tmp159261
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options158721_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir158674_
                                                    __tmp159261))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp159260))))
                                (declare (not safe))
                                (cons _rpath158719_ __tmp159259))))
                         (declare (not safe))
                         (foldr1 cons __tmp159258 _output-ld-opts158713_))))
                  (declare (not safe))
                  (cons _output-o_158705_ __tmp159257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o158701_
                                                         __tmp159256))))
                                            (declare (not safe))
                                            (cons _output-bin158670_
                                                  __tmp159255))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp159254))))
                              (declare (not safe))
                              (gxc#invoke __tmp159262 __tmp159253)))
                          '#!void)))))
          (let* ((_output-bin158664_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158656_ _opts158657_)))
                 (_output-scm158666_
                  (string-append _output-bin158664_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158662_ _output-scm158666_ _output-bin158664_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158666_))))))
    (define gxc#find-export-binding
      (lambda (_ctx158606_ _id158607_)
        (let ((_$e158653_
               (let ((__tmp159264
                      (lambda (_e158608158610_)
                        (let* ((_g158612158622_ _e158608158610_)
                               (_else158614158630_ (lambda () '#f))
                               (_K158616158634_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g158612158622_
                                 'gx#module-export::t))
                              (let* ((_e158617158637_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158612158622_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e158618158640_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158612158622_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e158619158643_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g158612158622_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e158619158643_ '0))
                                    (let ((_e158620158646_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g158612158622_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g158648158650_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g158648158650_
                                                    _id158607_)))
                                           _e158620158646_)
                                          (let ()
                                            (declare (not safe))
                                            (_K158616158634_))
                                          (let ()
                                            (declare (not safe))
                                            (_else158614158630_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else158614158630_))))
                              (let ()
                                (declare (not safe))
                                (_else158614158630_))))))
                     (__tmp159263
                      (##structure-ref
                       _ctx158606_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp159264 __tmp159263))))
          (if _$e158653_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e158653_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx158598_ _id158599_)
        (let ((_$e158601_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx158598_ _id158599_))))
          (if _$e158601_
              ((lambda (_bind158604_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind158604_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id158599_)))
                 (##structure-ref _bind158604_ '1 gx#binding::t '#f))
               _$e158601_)
              (let ((__tmp159265
                     (##structure-ref
                      _ctx158598_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp159265
                 _id158599_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx158485_)
        (letrec* ((_ht158487_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template158488_
                   (lambda (_in158550_ _phi158551_)
                     (let ((_iphi158553_
                            (fx+ _phi158551_
                                 (##direct-structure-ref
                                  _in158550_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports158554_
                            (##structure-ref
                             (##direct-structure-ref
                              _in158550_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp158556_ ((_rest158558_ _imports158554_)
                                        (_r158559_ '()))
                         (let* ((_rest158560158568_ _rest158558_)
                                (_else158562158576_ (lambda () _r158559_))
                                (_K158564158586_
                                 (lambda (_rest158579_ _in158580_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in158580_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi158553_))
                                           (let ((__tmp159272
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in158580_
                                                          _r158559_))))
                                             (declare (not safe))
                                             (_lp158556_
                                              _rest158579_
                                              __tmp159272))
                                           (let ()
                                             (declare (not safe))
                                             (_lp158556_
                                              _rest158579_
                                              _r158559_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in158580_
                                              'gx#module-import::t))
                                           (let ((_iphi158582_
                                                  (fx+ _phi158551_
                                                       (##direct-structure-ref
                                                        _in158580_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi158582_))
                                                 (let ((__tmp159270
                                                        (let ((__tmp159271
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in158580_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp159271 _r158559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp158556_
                                                    _rest158579_
                                                    __tmp159270))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp158556_
                                                    _rest158579_
                                                    _r158559_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in158580_
                                                  'gx#import-set::t))
                                               (let ((_xphi158584_
                                                      (fx+ _iphi158553_
                                                           (##direct-structure-ref
                                                            _in158580_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi158584_))
                                                     (let ((__tmp159268
                                                            (let ((__tmp159269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in158580_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp159269 _r158559_))))
               (declare (not safe))
               (_lp158556_ _rest158579_ __tmp159268))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi158584_)
                                                         (let ((__tmp159266
                                                                (let ((__tmp159267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template158488_
                                  _in158580_
                                  _iphi158553_))))
                          (declare (not safe))
                          (foldl1 cons _r158559_ __tmp159267))))
                   (declare (not safe))
                   (_lp158556_ _rest158579_ __tmp159266))
                 (let ()
                   (declare (not safe))
                   (_lp158556_ _rest158579_ _r158559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp158556_
                                                  _rest158579_
                                                  _r158559_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest158560158568_))
                               (let ((_hd158565158589_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest158560158568_)))
                                     (_tl158566158591_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest158560158568_))))
                                 (let* ((_in158594_ _hd158565158589_)
                                        (_rest158596_ _tl158566158591_))
                                   (declare (not safe))
                                   (_K158564158586_ _rest158596_ _in158594_)))
                               (let ()
                                 (declare (not safe))
                                 (_else158562158576_))))))))
                  (_find-deps158489_
                   (lambda (_rest158496_ _deps158497_)
                     (let* ((_rest158498158506_ _rest158496_)
                            (_else158500158514_ (lambda () _deps158497_))
                            (_K158502158538_
                             (lambda (_rest158517_ _hd158518_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd158518_
                                      'gx#module-context::t))
                                   (let ((_id158520_
                                          (##structure-ref
                                           _hd158518_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports158521_
                                          (##structure-ref
                                           _hd158518_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht158487_ _id158520_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps158489_
                                            _rest158517_
                                            _deps158497_))
                                         (let ((_$e158523_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd158518_))))
                                           (if _$e158523_
                                               ((lambda (_pre158526_)
                                                  (let ((_xdeps158528_
                                                         (let ((__tmp159285
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre158526_ _imports158521_))))
                   (declare (not safe))
                   (_find-deps158489_ __tmp159285 _deps158497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht158487_
                                                       _id158520_
                                                       _hd158518_))
                                                    (let ((__tmp159286
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd158518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps158528_))))
              (declare (not safe))
              (_find-deps158489_ _rest158517_ __tmp159286))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e158523_)
                                               (let ((_xdeps158530_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps158489_
                                                         _imports158521_
                                                         _deps158497_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht158487_
                                                    _id158520_
                                                    _hd158518_))
                                                 (let ((__tmp159284
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd158518_
                                                                _xdeps158530_))))
                                                   (declare (not safe))
                                                   (_find-deps158489_
                                                    _rest158517_
                                                    __tmp159284)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd158518_
                                          'gx#prelude-context::t))
                                       (let ((_id158532_
                                              (##structure-ref
                                               _hd158518_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht158487_
                                                _id158532_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps158489_
                                                _rest158517_
                                                _deps158497_))
                                             (let ((_xdeps158534_
                                                    (let ((__tmp159282
                                                           (##structure-ref
                                                            _hd158518_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps158489_
                                                       __tmp159282
                                                       _deps158497_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht158487_
                                                      _id158532_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps158489_
                                                      _rest158517_
                                                      _xdeps158534_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht158487_
                                                        _id158532_
                                                        _hd158518_))
                                                     (let ((__tmp159283
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd158518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps158534_))))
               (declare (not safe))
               (_find-deps158489_ _rest158517_ __tmp159283)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd158518_
                                              'gx#module-import::t))
                                           (if (let ((__tmp159281
                                                      (##direct-structure-ref
                                                       _hd158518_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp159281))
                                               (let ((__tmp159279
                                                      (let ((__tmp159280
                                                             (##direct-structure-ref
                                                              _hd158518_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp159280
                                                              _rest158517_))))
                                                 (declare (not safe))
                                                 (_find-deps158489_
                                                  __tmp159279
                                                  _deps158497_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps158489_
                                                  _rest158517_
                                                  _deps158497_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd158518_
                                                  'gx#module-export::t))
                                               (let ((__tmp159277
                                                      (let ((__tmp159278
                                                             (##direct-structure-ref
                                                              _hd158518_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp159278
                                                              _rest158517_))))
                                                 (declare (not safe))
                                                 (_find-deps158489_
                                                  __tmp159277
                                                  _deps158497_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd158518_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp159276
                                                              (##direct-structure-ref
                                                               _hd158518_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp159276))
                                                       (let ((__tmp159274
                                                              (let ((__tmp159275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd158518_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp159275 _rest158517_))))
                 (declare (not safe))
                 (_find-deps158489_ __tmp159274 _deps158497_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd158518_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps158536_
                           (let ()
                             (declare (not safe))
                             (_import-set-template158488_ _hd158518_ '0)))
                          (__tmp159273
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest158517_ _xdeps158536_))))
                     (declare (not safe))
                     (_find-deps158489_ __tmp159273 _deps158497_))
                   (let ()
                     (declare (not safe))
                     (_find-deps158489_ _rest158517_ _deps158497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd158518_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest158498158506_))
                           (let ((_hd158503158541_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest158498158506_)))
                                 (_tl158504158543_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest158498158506_))))
                             (let* ((_hd158546_ _hd158503158541_)
                                    (_rest158548_ _tl158504158543_))
                               (declare (not safe))
                               (_K158502158538_ _rest158548_ _hd158546_)))
                           (let ()
                             (declare (not safe))
                             (_else158500158514_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp159287
                                  (let ((_$e158491_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx158485_))))
                                    (if _$e158491_
                                        ((lambda (_pre158494_)
                                           (let ((__tmp159288
                                                  (##structure-ref
                                                   _ctx158485_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre158494_ __tmp159288)))
                                         _$e158491_)
                                        (##structure-ref
                                         _ctx158485_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps158489_ __tmp159287 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx158416_)
        (let* ((_context-id158418_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx158416_
                       'gx#module-context::t))
                    (##structure-ref _ctx158416_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx158416_)))
               (_scm158420_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id158418_))
                 '".scm"))
               (_dirs158422_ (gx#current-expander-module-library-path))
               (_dirs158428_
                (let ((_user-libpath158424_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath158424_
                      (let ((_user-libpath158426_
                             (path-expand '"lib" _user-libpath158424_)))
                        (if (member _user-libpath158426_ _dirs158422_)
                            _dirs158422_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath158426_ _dirs158422_))))
                      _dirs158422_)))
               (_dirs158437_
                (let ((_$e158430_ (gxc#current-compile-output-dir)))
                  (if _$e158430_
                      ((lambda (_g158432158434_)
                         (let ()
                           (declare (not safe))
                           (cons _g158432158434_ _dirs158428_)))
                       _$e158430_)
                      _dirs158428_)))
               (_dirs158443_
                (map (lambda (_g158438158440_)
                       (path-expand '"static" _g158438158440_))
                     _dirs158437_)))
          (let _lp158446_ ((_rest158448_ _dirs158443_))
            (let* ((_rest158449158457_ _rest158448_)
                   (_else158451158465_
                    (lambda ()
                      (let ((__tmp159289
                             (##structure-ref
                              _ctx158416_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp159289
                         _scm158420_))))
                   (_K158453158473_
                    (lambda (_rest158468_ _dir158469_)
                      (let ((_path158471_
                             (path-expand _scm158420_ _dir158469_)))
                        (if (file-exists? _path158471_)
                            _path158471_
                            (let ()
                              (declare (not safe))
                              (_lp158446_ _rest158468_)))))))
              (if (let () (declare (not safe)) (##pair? _rest158449158457_))
                  (let ((_hd158454158476_
                         (let ()
                           (declare (not safe))
                           (##car _rest158449158457_)))
                        (_tl158455158478_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158449158457_))))
                    (let* ((_dir158481_ _hd158454158476_)
                           (_rest158483_ _tl158455158478_))
                      (declare (not safe))
                      (_K158453158473_ _rest158483_ _dir158481_)))
                  (let () (declare (not safe)) (_else158451158465_))))))))
    (define gxc#file-empty?
      (lambda (_path158414_)
        (let ((__tmp159290 (file-info-size (file-info _path158414_ '#t))))
          (declare (not safe))
          (zero? __tmp159290))))
    (define gxc#compile-top-module
      (lambda (_ctx158403_)
        (let ((__tmp159294
               (lambda ()
                 (let ((__tmp159295
                        (##structure-ref
                         _ctx158403_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp159295))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp159296
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx158403_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp159296))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx158403_))
                 (if (let ((__tmp159299
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx158403_))))
                       (declare (not safe))
                       (null? __tmp159299))
                     (let* ((_thr1158408_
                             (let ((__tmp159297
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx158403_)))))
                               (declare (not safe))
                               (spawn __tmp159297)))
                            (_thr2158411_
                             (let ((__tmp159298
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx158403_)))))
                               (declare (not safe))
                               (spawn __tmp159298))))
                       (let () (declare (not safe)) (gxc#join! _thr1158408_))
                       (let () (declare (not safe)) (gxc#join! _thr2158411_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx158403_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx158403_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx158403_))
                     '#!void)))
              (__tmp159293
               (let ((__obj159101
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj159101)
                 __obj159101))
              (__tmp159292 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp159291 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp159294
           gx#current-expander-context
           _ctx158403_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp159293
           gxc#current-compile-runtime-sections
           __tmp159292
           gxc#current-compile-runtime-names
           __tmp159291))))
    (define gxc#collect-bindings
      (lambda (_ctx158401_)
        (let ((__tmp159300
               (##structure-ref _ctx158401_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp159300))))
    (define gxc#compile-runtime-code
      (lambda (_ctx158347_)
        (letrec ((_compile1158349_
                  (lambda (_ctx158390_)
                    (let* ((_code158392_
                            (##structure-ref
                             _ctx158390_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt158396_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code158392_))
                                (let ((_idstr158394_
                                       (let ((__tmp159301
                                              (##structure-ref
                                               _ctx158390_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp159301))))
                                  (string-append _idstr158394_ '"__0"))
                                '#f)))
                      (if _rt158396_
                          (begin
                            (let ((__tmp159302
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp159302 _ctx158390_ _rt158396_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code158351_
                               _ctx158390_
                               _code158392_)))
                          (let ((_path158399_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx158390_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path158399_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code158352_
                         _ctx158390_
                         _code158392_
                         _rt158396_)))))
                 (_context-timestamp158350_
                  (lambda (_ctx158388_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx158388_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code158351_
                  (lambda (_ctx158370_ _code158371_)
                    (let* ((_lifts158373_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code158376_
                            (let ((__tmp159305
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code158371_))))
                                  (__tmp159304
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp159303
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp159305
                               gx#current-expander-context
                               _ctx158370_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts158373_
                               gxc#current-compile-marks
                               __tmp159304
                               gxc#current-compile-identifiers
                               __tmp159303)))
                           (_runtime-code158378_
                            (if (let ((__tmp159309 (unbox _lifts158373_)))
                                  (declare (not safe))
                                  (null? __tmp159309))
                                _runtime-code158376_
                                (let ((__tmp159306
                                       (let ((__tmp159308
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code158376_
                                                      '())))
                                             (__tmp159307
                                              (reverse (unbox _lifts158373_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp159308
                                                 __tmp159307))))
                                  (declare (not safe))
                                  (cons 'begin __tmp159306))))
                           (_runtime-code158380_
                            (let ((__tmp159310
                                   (let ((__tmp159312
                                          (let ((__tmp159313
                                                 (let ((__tmp159316
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp158350_
                                                           _ctx158370_)))
                                                       (__tmp159314
                                                        (let ((__tmp159315
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp159315
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp159316
                                                         __tmp159314))))
                                            (declare (not safe))
                                            (cons 'define __tmp159313)))
                                         (__tmp159311
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code158378_ '()))))
                                     (declare (not safe))
                                     (cons __tmp159312 __tmp159311))))
                              (declare (not safe))
                              (cons 'begin __tmp159310)))
                           (_scm0158382_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx158370_
                               '0
                               '".scm"))))
                      (let ((_scms158385_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx158370_))))
                        (let ((__tmp159317
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0158382_
                                    _runtime-code158380_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp159317
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms158385_)
                            (delete-file _scms158385_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0158382_
                           '" => "
                           _scms158385_))
                        (copy-file _scm0158382_ _scms158385_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0158382_))))))
                 (_generate-loader-code158352_
                  (lambda (_ctx158359_ _code158360_ _rt158361_)
                    (let* ((_loader-code158364_
                            (let ((__tmp159318
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code158360_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp159318
                               gx#current-expander-context
                               _ctx158359_)))
                           (_loader-code158366_
                            (if _rt158361_
                                (let ((__tmp159319
                                       (let ((__tmp159320
                                              (let ((__tmp159321
                                                     (let ((__tmp159322
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt158361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp159322))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp159321 '()))))
                                         (declare (not safe))
                                         (cons _loader-code158364_
                                               __tmp159320))))
                                  (declare (not safe))
                                  (cons 'begin __tmp159319))
                                _loader-code158364_)))
                      (let ((__tmp159323
                             (lambda ()
                               (let ((__tmp159324
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx158359_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp159324
                                  _loader-code158366_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp159323
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules158354_
                 (let ((__tmp159325
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx158347_))))
                   (declare (not safe))
                   (cons _ctx158347_ __tmp159325))))
            (for-each
             (lambda (_ctx158356_)
               (let ((__tmp159326
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1158349_ _ctx158356_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp159326
                  gxc#current-compile-decls
                  '())))
             _all-modules158354_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx158244_)
        (letrec ((_compile-ssi158246_
                  (lambda (_code158317_)
                    (let* ((_path158319_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx158244_
                               '#f
                               '".ssi")))
                           (_prelude158330_
                            (let* ((_super158321_
                                    (##structure-ref
                                     _ctx158244_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e158323_
                                    (##structure-ref
                                     _super158321_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e158323_
                                  ((lambda (_g158325158327_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g158325158327_)))
                                   _$e158323_)
                                  ':<root>)))
                           (_ns158332_
                            (##structure-ref
                             _ctx158244_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr158334_
                            (symbol->string
                             (##structure-ref
                              _ctx158244_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg158341_
                            (let ((_$e158336_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr158334_ '#\/))))
                              (if _$e158336_
                                  ((lambda (_x158339_)
                                     (string->symbol
                                      (substring _idstr158334_ '0 _x158339_)))
                                   _$e158336_)
                                  '#f)))
                           (_rt158343_
                            (let ((__tmp159327
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp159327 _ctx158244_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path158319_))
                      (let ((__tmp159328
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude158330_))
                               (if _pkg158341_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg158341_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns158332_))
                               (newline)
                               (pretty-print _code158317_)
                               (if _rt158343_
                                   (pretty-print
                                    (let ((__tmp159329
                                           (let ((__tmp159333
                                                  (let ((__tmp159334
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp159334)))
                                                 (__tmp159330
                                                  (let ((__tmp159331
                                                         (let ((__tmp159332
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt158343_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp159332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp159331 '()))))
                                             (declare (not safe))
                                             (cons __tmp159333 __tmp159330))))
                                      (declare (not safe))
                                      (cons '%#call __tmp159329)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path158319_
                         __tmp159328)))))
                 (_compile-phi158247_
                  (lambda (_part158257_)
                    (let* ((_part158258158271_ _part158257_)
                           (_E158260158275_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part158258158271_))))
                           (_K158261158286_
                            (lambda (_code158278_
                                     _n158279_
                                     _phi158280_
                                     _phi-ctx158281_)
                              (let* ((_code158284_
                                      (let ((__tmp159335
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code158278_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp159335
                                         gx#current-expander-context
                                         _phi-ctx158281_
                                         gx#current-expander-phi
                                         _phi158280_)))
                                     (__tmp159336
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx158244_
                                         _n158279_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp159336
                                 _code158284_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part158258158271_))
                          (let ((_hd158262158289_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part158258158271_)))
                                (_tl158263158291_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part158258158271_))))
                            (let ((_phi-ctx158294_ _hd158262158289_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl158263158291_))
                                  (let ((_hd158264158296_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl158263158291_)))
                                        (_tl158265158298_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl158263158291_))))
                                    (let ((_phi158301_ _hd158264158296_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl158265158298_))
                                          (let ((_hd158266158303_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl158265158298_)))
                                                (_tl158267158305_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl158265158298_))))
                                            (let ((_n158308_ _hd158266158303_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl158267158305_))
                                                  (let ((_hd158268158310_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl158267158305_)))
                                                        (_tl158269158312_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl158267158305_))))
                                                    (let ((_code158315_
                                                           _hd158268158310_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl158269158312_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K158261158286_
                                                             _code158315_
                                                             _n158308_
                                                             _phi158301_
                                                             _phi-ctx158294_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E158260158275_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E158260158275_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E158260158275_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E158260158275_)))))
                          (let () (declare (not safe)) (_E158260158275_)))))))
          (let ((_g159337_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx158244_))))
            (begin
              (let ((_g159338_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g159337_)
                           (##vector-length _g159337_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g159338_ 2)))
                    (error "Context expects 2 values" _g159338_)))
              (let ((_ssi-code158249_
                     (let () (declare (not safe)) (##vector-ref _g159337_ 0)))
                    (_phi-code158250_
                     (let () (declare (not safe)) (##vector-ref _g159337_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi158246_ _ssi-code158249_))
                  (let ((_threads158255_
                         (map (lambda (_code158252_)
                                (let ((__tmp159339
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi158247_
                                            _code158252_)))))
                                  (declare (not safe))
                                  (spawn __tmp159339)))
                              _phi-code158250_)))
                    (for-each gxc#join! _threads158255_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx158227_)
        (let* ((_path158229_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx158227_ '#f '".ssxi.ss")))
               (_code158231_
                (let ((__tmp159340
                       (##structure-ref
                        _ctx158227_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp159340)))
               (_idstr158233_
                (symbol->string
                 (##structure-ref _ctx158227_ '1 gx#expander-context::t '#f)))
               (_pkg158240_
                (let ((_$e158235_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr158233_ '#\/))))
                  (if _$e158235_
                      ((lambda (_x158238_)
                         (string->symbol
                          (substring _idstr158233_ '0 _x158238_)))
                       _$e158235_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path158229_))
          (let ((__tmp159341
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg158240_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg158240_))
                       '#!void)
                   (newline)
                   (pretty-print _code158231_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path158229_ __tmp159341)))))
    (define gxc#generate-meta-code
      (lambda (_ctx158220_)
        (let* ((_state158222_
                (let ((__obj159102
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj159102 _ctx158220_)
                  __obj159102))
               (_ssi-code158224_
                (let ((__tmp159342
                       (##structure-ref
                        _ctx158220_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp159342
                   'state:
                   _state158222_))))
          (values _ssi-code158224_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state158222_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx158213_)
        (let ((_lifts158215_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp159345
                 (lambda ()
                   (let ((_code158218_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx158213_))))
                     (if (let ((__tmp159349 (unbox _lifts158215_)))
                           (declare (not safe))
                           (null? __tmp159349))
                         _code158218_
                         (let ((__tmp159346
                                (let ((__tmp159348
                                       (let ()
                                         (declare (not safe))
                                         (cons _code158218_ '())))
                                      (__tmp159347
                                       (reverse (unbox _lifts158215_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp159348 __tmp159347))))
                           (declare (not safe))
                           (cons 'begin __tmp159346))))))
                (__tmp159344
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp159343
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp159345
             gxc#current-compile-lift
             _lifts158215_
             gxc#current-compile-marks
             __tmp159344
             gxc#current-compile-identifiers
             __tmp159343)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx158209_)
        (let ((_modules158211_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp159350
                 (##structure-ref _ctx158209_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp159350 'modules: _modules158211_))
          (reverse (unbox _modules158211_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path158192_ _code158193_ _phi?158194_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path158192_))
        (let ((__tmp159351
               (lambda ()
                 (pretty-print
                  (let ((__tmp159352
                         (let ((__tmp159359
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp159353
                                (let ((__tmp159358
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp159354
                                       (let ((__tmp159357
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp159355
                                              (let ((__tmp159356
                                                     (if _phi?158194_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp159356))))
                                         (declare (not safe))
                                         (cons __tmp159357 __tmp159355))))
                                  (declare (not safe))
                                  (cons __tmp159358 __tmp159354))))
                           (declare (not safe))
                           (cons __tmp159359 __tmp159353))))
                    (declare (not safe))
                    (cons 'declare __tmp159352)))
                 (pretty-print _code158193_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path158192_ __tmp159351))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path158192_ _phi?158194_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path158192_))))
    (define gxc#compile-scm-file__0
      (lambda (_path158200_ _code158201_)
        (let ((_phi?158203_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path158200_ _code158201_ _phi?158203_))))
    (define gxc#compile-scm-file
      (lambda _g159361_
        (let ((_g159360_ (let () (declare (not safe)) (##length _g159361_))))
          (cond ((let () (declare (not safe)) (##fx= _g159360_ 2))
                 (apply (lambda (_path158200_ _code158201_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path158200_
                             _code158201_)))
                        _g159361_))
                ((let () (declare (not safe)) (##fx= _g159360_ 3))
                 (apply (lambda (_path158205_ _code158206_ _phi?158207_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path158205_
                             _code158206_
                             _phi?158207_)))
                        _g159361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g159361_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?158093_)
        (let _lp158095_ ((_rest158097_ (gxc#current-compile-gsc-options))
                         (_opts158098_ '()))
          (let* ((_rest158099158119_ _rest158097_)
                 (_else158103158127_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?158093_))
                             (gxc#current-compile-debug))
                        (let ((__tmp159362
                               (let ((__tmp159363 (reverse _opts158098_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp159363))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp159362))
                        (reverse _opts158098_)))))
            (let ((_K158113158170_
                   (lambda (_rest158168_)
                     (let ()
                       (declare (not safe))
                       (_lp158095_ _rest158168_ _opts158098_))))
                  (_K158108158152_
                   (lambda (_rest158150_)
                     (let ()
                       (declare (not safe))
                       (_lp158095_ _rest158150_ _opts158098_))))
                  (_K158105158134_
                   (lambda (_rest158131_ _opt158132_)
                     (let ((__tmp159364
                            (let ()
                              (declare (not safe))
                              (cons _opt158132_ _opts158098_))))
                       (declare (not safe))
                       (_lp158095_ _rest158131_ __tmp159364)))))
              (if (let () (declare (not safe)) (##pair? _rest158099158119_))
                  (let ((_tl158115158175_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158099158119_)))
                        (_hd158114158173_
                         (let ()
                           (declare (not safe))
                           (##car _rest158099158119_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158114158173_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158115158175_))
                            (let* ((_tl158117158178_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl158115158175_)))
                                   (_rest158181_ _tl158117158178_))
                              (declare (not safe))
                              (_K158113158170_ _rest158181_))
                            (let ((_opt158142_ _hd158114158173_)
                                  (_rest158144_ _tl158115158175_))
                              (let ()
                                (declare (not safe))
                                (_K158105158134_ _rest158144_ _opt158142_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158114158173_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158115158175_))
                                (let* ((_tl158112158160_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl158115158175_)))
                                       (_rest158163_ _tl158112158160_))
                                  (declare (not safe))
                                  (_K158108158152_ _rest158163_))
                                (let ((_opt158142_ _hd158114158173_)
                                      (_rest158144_ _tl158115158175_))
                                  (let ()
                                    (declare (not safe))
                                    (_K158105158134_
                                     _rest158144_
                                     _opt158142_))))
                            (let ((_opt158142_ _hd158114158173_)
                                  (_rest158144_ _tl158115158175_))
                              (let ()
                                (declare (not safe))
                                (_K158105158134_ _rest158144_ _opt158142_))))))
                  (let () (declare (not safe)) (_else158103158127_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?158187_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?158187_))))
    (define gxc#gsc-link-options
      (lambda _g159366_
        (let ((_g159365_ (let () (declare (not safe)) (##length _g159366_))))
          (cond ((let () (declare (not safe)) (##fx= _g159365_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g159366_))
                ((let () (declare (not safe)) (##fx= _g159365_ 1))
                 (apply (lambda (_phi?158189_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?158189_)))
                        _g159366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g159366_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?157994_)
        (let _lp157996_ ((_rest157998_ (gxc#current-compile-gsc-options))
                         (_opts157999_ '()))
          (let* ((_rest158000158020_ _rest157998_)
                 (_else158004158028_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157994_))
                             (gxc#current-compile-debug))
                        (let ((__tmp159367
                               (let ((__tmp159368 (reverse _opts157999_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp159368))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp159367))
                        (reverse _opts157999_)))))
            (let ((_K158014158067_
                   (lambda (_rest158064_ _opt158065_)
                     (let ((__tmp159369
                            (let ((__tmp159370
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts157999_))))
                              (declare (not safe))
                              (cons _opt158065_ __tmp159370))))
                       (declare (not safe))
                       (_lp157996_ _rest158064_ __tmp159369))))
                  (_K158009158048_
                   (lambda (_rest158046_)
                     (let ()
                       (declare (not safe))
                       (_lp157996_ _rest158046_ _opts157999_))))
                  (_K158006158034_
                   (lambda (_rest158032_)
                     (let ()
                       (declare (not safe))
                       (_lp157996_ _rest158032_ _opts157999_)))))
              (if (let () (declare (not safe)) (##pair? _rest158000158020_))
                  (let ((_tl158016158072_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158000158020_)))
                        (_hd158015158070_
                         (let ()
                           (declare (not safe))
                           (##car _rest158000158020_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158015158070_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158016158072_))
                            (let ((_tl158018158077_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl158016158072_)))
                                  (_hd158017158075_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl158016158072_))))
                              (let ((_opt158080_ _hd158017158075_)
                                    (_rest158082_ _tl158018158077_))
                                (let ()
                                  (declare (not safe))
                                  (_K158014158067_ _rest158082_ _opt158080_))))
                            (let ((_rest158040_ _tl158016158072_))
                              (declare (not safe))
                              (_K158006158034_ _rest158040_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158015158070_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158016158072_))
                                (let* ((_tl158013158056_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl158016158072_)))
                                       (_rest158059_ _tl158013158056_))
                                  (declare (not safe))
                                  (_K158009158048_ _rest158059_))
                                (let ((_rest158040_ _tl158016158072_))
                                  (declare (not safe))
                                  (_K158006158034_ _rest158040_)))
                            (let ((_rest158040_ _tl158016158072_))
                              (declare (not safe))
                              (_K158006158034_ _rest158040_)))))
                  (let () (declare (not safe)) (_else158004158028_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?158088_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?158088_))))
    (define gxc#gsc-cc-options
      (lambda _g159372_
        (let ((_g159371_ (let () (declare (not safe)) (##length _g159372_))))
          (cond ((let () (declare (not safe)) (##fx= _g159371_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g159372_))
                ((let () (declare (not safe)) (##fx= _g159371_ 1))
                 (apply (lambda (_phi?158090_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?158090_)))
                        _g159372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g159372_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir157989_)
        (let* ((_user-staticdir157991_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp159373
                (let ((__tmp159374
                       (string-append
                        '"-I "
                        _staticdir157989_
                        '" -I "
                        _user-staticdir157991_)))
                  (declare (not safe))
                  (cons __tmp159374 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp159373))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp157901_ ((_rest157903_ (gxc#current-compile-gsc-options))
                         (_opts157904_ '()))
          (let* ((_rest157905157925_ _rest157903_)
                 (_else157909157933_ (lambda () _opts157904_)))
            (let ((_K157919157976_
                   (lambda (_rest157974_)
                     (let ()
                       (declare (not safe))
                       (_lp157901_ _rest157974_ _opts157904_))))
                  (_K157914157954_
                   (lambda (_rest157951_ _opt157952_)
                     (let ((__tmp159375
                            (append _opts157904_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt157952_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp157901_ _rest157951_ __tmp159375))))
                  (_K157911157939_
                   (lambda (_rest157937_)
                     (let ()
                       (declare (not safe))
                       (_lp157901_ _rest157937_ _opts157904_)))))
              (if (let () (declare (not safe)) (##pair? _rest157905157925_))
                  (let ((_tl157921157981_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157905157925_)))
                        (_hd157920157979_
                         (let ()
                           (declare (not safe))
                           (##car _rest157905157925_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157920157979_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157921157981_))
                            (let* ((_tl157923157984_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157921157981_)))
                                   (_rest157987_ _tl157923157984_))
                              (declare (not safe))
                              (_K157919157976_ _rest157987_))
                            (let ((_rest157945_ _tl157921157981_))
                              (declare (not safe))
                              (_K157911157939_ _rest157945_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157920157979_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157921157981_))
                                (let ((_tl157918157964_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl157921157981_)))
                                      (_hd157917157962_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl157921157981_))))
                                  (let ((_opt157967_ _hd157917157962_)
                                        (_rest157969_ _tl157918157964_))
                                    (let ()
                                      (declare (not safe))
                                      (_K157914157954_
                                       _rest157969_
                                       _opt157967_))))
                                (let ((_rest157945_ _tl157921157981_))
                                  (declare (not safe))
                                  (_K157911157939_ _rest157945_)))
                            (let ((_rest157945_ _tl157921157981_))
                              (declare (not safe))
                              (_K157911157939_ _rest157945_)))))
                  (let () (declare (not safe)) (_else157909157933_))))))))
    (define gxc#not-string-empty?
      (lambda (_str157898_)
        (let ((__tmp159376
               (let () (declare (not safe)) (string-empty? _str157898_))))
          (declare (not safe))
          (not __tmp159376))))
    (define gxc#gsc-compile-file
      (lambda (_path157866_ _phi?157867_)
        (letrec ((_gsc-link-path157869_
                  (lambda (_base-path157890_)
                    (let _lp157892_ ((_n157894_ '1))
                      (let ((_path157896_
                             (string-append
                              _base-path157890_
                              '".o"
                              (number->string _n157894_))))
                        (if (file-exists? _path157896_)
                            (let ((__tmp159377
                                   (let ()
                                     (declare (not safe))
                                     (+ _n157894_ '1))))
                              (declare (not safe))
                              (_lp157892_ __tmp159377))
                            _path157896_))))))
          (let* ((_base-path157871_ (path-strip-extension _path157866_))
                 (_path-c157873_ (string-append _base-path157871_ '".c"))
                 (_path-o157875_ (string-append _base-path157871_ '".o"))
                 (_link-path157877_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path157869_ _base-path157871_)))
                 (_link-path-c157879_ (string-append _link-path157877_ '".c"))
                 (_link-path-o157881_ (string-append _link-path157877_ '".o"))
                 (_gsc-link-opts157883_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?157867_)))
                 (_gsc-cc-opts157885_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?157867_)))
                 (_gcc-ld-opts157887_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp159384 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp159378
                   (let ((__tmp159379
                          (let ((__tmp159380
                                 (let ((__tmp159381
                                        (let ((__tmp159382
                                               (let ((__tmp159383
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path157866_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp159383
                                                         _gsc-link-opts157883_))))
                                          (declare (not safe))
                                          (cons _link-path-c157879_
                                                __tmp159382))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp159381))))
                            (declare (not safe))
                            (cons '"-flat" __tmp159380))))
                     (declare (not safe))
                     (cons '"-link" __tmp159379))))
              (declare (not safe))
              (gxc#invoke __tmp159384 __tmp159378 'stdout-redirection: '#t))
            (let ((__tmp159391 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp159385
                   (let ((__tmp159386
                          (let ((__tmp159387
                                 (let ((__tmp159388
                                        (let ((__tmp159389
                                               (let ((__tmp159390
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c157879_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c157873_
                                                       __tmp159390))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp159389
                                                  _gsc-cc-opts157885_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp159388))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp159387))))
                     (declare (not safe))
                     (cons '"-obj" __tmp159386))))
              (declare (not safe))
              (gxc#invoke __tmp159391 __tmp159385 'stdout-redirection: '#t))
            (let ((__tmp159397 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp159392
                   (let ((__tmp159393
                          (let ((__tmp159394
                                 (let ((__tmp159395
                                        (let ((__tmp159396
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o157881_
                                                       _gcc-ld-opts157887_))))
                                          (declare (not safe))
                                          (cons _path-o157875_ __tmp159396))))
                                   (declare (not safe))
                                   (cons _link-path157877_ __tmp159395))))
                            (declare (not safe))
                            (cons '"-o" __tmp159394))))
                     (declare (not safe))
                     (cons '"-shared" __tmp159393))))
              (declare (not safe))
              (gxc#invoke __tmp159397 __tmp159392))
            (for-each
             delete-file
             (let ((__tmp159398
                    (let ((__tmp159399
                           (let ((__tmp159400
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o157881_ '()))))
                             (declare (not safe))
                             (cons _link-path-c157879_ __tmp159400))))
                      (declare (not safe))
                      (cons _path-o157875_ __tmp159399))))
               (declare (not safe))
               (cons _path-c157873_ __tmp159398)))))))
    (define gxc#compile-output-file
      (lambda (_ctx157837_ _n157838_ _ext157839_)
        (letrec ((_module-relative-path157841_
                  (lambda (_ctx157864_)
                    (path-strip-directory
                     (let ((__tmp159401
                            (##structure-ref
                             _ctx157864_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp159401)))))
                 (_module-source-directory157842_
                  (lambda (_ctx157860_)
                    (path-directory
                     (let ((_mpath157862_
                            (##structure-ref
                             _ctx157860_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath157862_))
                           _mpath157862_
                           (last _mpath157862_))))))
                 (_section-string157843_
                  (lambda (_n157858_)
                    (if (let () (declare (not safe)) (number? _n157858_))
                        (number->string _n157858_)
                        (if (let () (declare (not safe)) (symbol? _n157858_))
                            (symbol->string _n157858_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n157858_))
                                _n157858_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n157858_)))))))
                 (_file-name157844_
                  (lambda (_path157856_)
                    (if _n157838_
                        (string-append
                         _path157856_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string157843_ _n157838_))
                         _ext157839_)
                        (string-append _path157856_ _ext157839_))))
                 (_file-path157845_
                  (lambda ()
                    (let ((_$e157851_ (gxc#current-compile-output-dir)))
                      (if _$e157851_
                          ((lambda (_outdir157854_)
                             (path-expand
                              (let ((__tmp159403
                                     (let ((__tmp159404
                                            (##structure-ref
                                             _ctx157837_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp159404))))
                                (declare (not safe))
                                (_file-name157844_ __tmp159403))
                              _outdir157854_))
                           _$e157851_)
                          (path-expand
                           (let ((__tmp159402
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path157841_
                                     _ctx157837_))))
                             (declare (not safe))
                             (_file-name157844_ __tmp159402))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory157842_
                              _ctx157837_))))))))
          (let ((_path157847_
                 (let () (declare (not safe)) (_file-path157845_))))
            (let ((__tmp159405
                   (lambda ()
                     (let ((__tmp159406 (path-directory _path157847_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp159406)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp159405))
            _path157847_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx157819_)
        (letrec ((_file-name157821_
                  (lambda (_id157835_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id157835_))
                     '".scm")))
                 (_file-path157822_
                  (lambda ()
                    (let* ((_file157828_
                            (let ((__tmp159407
                                   (##structure-ref
                                    _ctx157819_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name157821_ __tmp159407)))
                           (_$e157830_ (gxc#current-compile-output-dir)))
                      (if _$e157830_
                          ((lambda (_outdir157833_)
                             (path-expand
                              _file157828_
                              (path-expand '"static" _outdir157833_)))
                           _$e157830_)
                          (path-expand _file157828_ '"static"))))))
          (let ((_path157824_
                 (let () (declare (not safe)) (_file-path157822_))))
            (let ((__tmp159408
                   (lambda ()
                     (let ((__tmp159409 (path-directory _path157824_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp159409)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp159408))
            _path157824_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx157813_ _opts157814_)
        (let ((_$e157816_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts157814_))))
          (if _$e157816_
              (values _$e157816_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx157813_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr157806_)
        (if (let () (declare (not safe)) (string? _idstr157806_))
            (let* ((_str157808_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr157806_)))
                   (_strs157810_
                    (let ()
                      (declare (not safe))
                      (string-split _str157808_ '#\/))))
              (let () (declare (not safe)) (string-join _strs157810_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr157806_))
                (let ((__tmp159410 (symbol->string _idstr157806_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp159410))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr157806_))))))
    (define gxc#invoke__%
      (lambda (_g159411_
               _stdout-redirection157767157771_
               _stderr-redirection157768157773_
               _program157775_
               _args157776_)
        (let* ((_stdout-redirection157778_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection157767157771_ absent-value))
                    '#f
                    _stdout-redirection157767157771_))
               (_stderr-redirection157780_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection157768157773_ absent-value))
                    '#f
                    _stderr-redirection157768157773_)))
          (let ((__tmp159412
                 (let ()
                   (declare (not safe))
                   (cons _program157775_ _args157776_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp159412))
          (let* ((_proc157782_
                  (open-process
                   (let ((__tmp159413
                          (let ((__tmp159414
                                 (let ((__tmp159415
                                        (let ((__tmp159416
                                               (let ((__tmp159417
                                                      (let ((__tmp159418
                                                             (let ((__tmp159419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection157780_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp159419))))
                (declare (not safe))
                (cons _stdout-redirection157778_ __tmp159418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp159417))))
                                          (declare (not safe))
                                          (cons _args157776_ __tmp159416))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp159415))))
                            (declare (not safe))
                            (cons _program157775_ __tmp159414))))
                     (declare (not safe))
                     (cons 'path: __tmp159413))))
                 (_output157787_
                  (if (or _stdout-redirection157778_
                          _stderr-redirection157780_)
                      (read-line _proc157782_ '#f)
                      '#f)))
            (let ((_status157790_ (process-status _proc157782_)))
              (close-port _proc157782_)
              (if (let () (declare (not safe)) (zero? _status157790_))
                  '#!void
                  (begin
                    (display _output157787_)
                    (let ((__tmp159420
                           (let ()
                             (declare (not safe))
                             (cons _program157775_ _args157776_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp159420
                       _status157790_)))))))))
    (define gxc#invoke__@
      (lambda (_keys157766157795_ . _args157797_)
        (apply gxc#invoke__%
               _keys157766157795_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157766157795_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157766157795_
                  'stderr-redirection:
                  absent-value))
               _args157797_)))
    (define gxc#invoke
      (lambda _args157769157803_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args157769157803_)))
    (define gxc#join!
      (lambda (_thread157760_)
        (let ((__tmp159422
               (lambda (_exn157762_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn157762_))
                     (let ((__tmp159423
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn157762_))))
                       (declare (not safe))
                       (raise __tmp159423))
                     (let () (declare (not safe)) (raise _exn157762_)))))
              (__tmp159421 (lambda () (thread-join! _thread157760_))))
          (declare (not safe))
          (with-catch __tmp159422 __tmp159421))))))
