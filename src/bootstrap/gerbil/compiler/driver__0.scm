(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710064758)
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
      (lambda (_path154909_ _fun154910_)
        (with-output-to-file
         (let ((__tmp155003
                (let ()
                  (declare (not safe))
                  (cons _path154909_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp155003))
         _fun154910_)))
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
      (lambda (_gerbil-libdir154904_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir154904_)))
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
      (lambda (_dir154902_) (delete-file-or-directory _dir154902_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath154876_ _opts154877_)
        (if (let () (declare (not safe)) (string? _srcpath154876_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath154876_)))
        (let ((_outdir154879_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts154877_)))
              (_invoke-gsc?154880_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts154877_)))
              (_gsc-options154881_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts154877_)))
              (_keep-scm?154882_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts154877_)))
              (_verbosity154883_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts154877_)))
              (_optimize154884_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts154877_)))
              (_debug154885_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts154877_)))
              (_gen-ssxi154886_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts154877_))))
          (if _outdir154879_
              (let ((__tmp155004
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir154879_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp155004))
              '#!void)
          (if _optimize154884_
              (let ((__tmp155005
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp155005))
              '#!void)
          (let ((__tmp155009
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath154876_))
                   (let ((__tmp155010
                          (let ((__tmp155011
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath154876_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp155011))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp155010))))
                (__tmp155008
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp155006
                 (let ((__tmp155007
                        (let ()
                          (declare (not safe))
                          (cons _srcpath154876_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp155007))))
            (declare (not safe))
            (call-with-parameters
             __tmp155009
             gxc#current-compile-output-dir
             _outdir154879_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?154880_
             gxc#current-compile-gsc-options
             _gsc-options154881_
             gxc#current-compile-keep-scm
             _keep-scm?154882_
             gxc#current-compile-verbose
             _verbosity154883_
             gxc#current-compile-optimize
             _optimize154884_
             gxc#current-compile-debug
             _debug154885_
             gxc#current-compile-generate-ssxi
             _gen-ssxi154886_
             gxc#current-compile-timestamp
             __tmp155008
             gxc#current-compile-context
             __tmp155006
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath154895_)
        (let ((_opts154897_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath154895_ _opts154897_))))
    (define gxc#compile-module
      (lambda _g155013_
        (let ((_g155012_ (let () (declare (not safe)) (##length _g155013_))))
          (cond ((let () (declare (not safe)) (##fx= _g155012_ 1))
                 (apply (lambda (_srcpath154895_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath154895_)))
                        _g155013_))
                ((let () (declare (not safe)) (##fx= _g155012_ 2))
                 (apply (lambda (_srcpath154899_ _opts154900_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath154899_
                             _opts154900_)))
                        _g155013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g155013_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath154852_ _opts154853_)
        (if (let () (declare (not safe)) (string? _srcpath154852_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath154852_)))
        (let ((_outdir154855_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts154853_)))
              (_invoke-gsc?154856_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts154853_)))
              (_gsc-options154857_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts154853_)))
              (_keep-scm?154858_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts154853_)))
              (_verbosity154859_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts154853_)))
              (_debug154860_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts154853_))))
          (if _outdir154855_
              (let ((__tmp155014
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir154855_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp155014))
              '#!void)
          (let ((__tmp155018
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath154852_))
                   (let ((__tmp155019
                          (let ((__tmp155020
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath154852_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp155020))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp155019
                      _opts154853_))))
                (__tmp155017
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp155015
                 (let ((__tmp155016
                        (let ()
                          (declare (not safe))
                          (cons _srcpath154852_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp155016))))
            (declare (not safe))
            (call-with-parameters
             __tmp155018
             gxc#current-compile-output-dir
             _outdir154855_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?154856_
             gxc#current-compile-gsc-options
             _gsc-options154857_
             gxc#current-compile-keep-scm
             _keep-scm?154858_
             gxc#current-compile-verbose
             _verbosity154859_
             gxc#current-compile-debug
             _debug154860_
             gxc#current-compile-timestamp
             __tmp155017
             gxc#current-compile-context
             __tmp155015
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath154868_)
        (let ((_opts154870_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath154868_ _opts154870_))))
    (define gxc#compile-exe
      (lambda _g155022_
        (let ((_g155021_ (let () (declare (not safe)) (##length _g155022_))))
          (cond ((let () (declare (not safe)) (##fx= _g155021_ 1))
                 (apply (lambda (_srcpath154868_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath154868_)))
                        _g155022_))
                ((let () (declare (not safe)) (##fx= _g155021_ 2))
                 (apply (lambda (_srcpath154872_ _opts154873_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath154872_ _opts154873_)))
                        _g155022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g155022_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx154848_ _opts154849_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts154849_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx154848_
               _opts154849_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx154848_
               _opts154849_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx154731_ _opts154732_)
        (letrec ((_generate-stub154734_
                  (lambda (_builtin-modules154844_)
                    (let ((_mod-main154846_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx154731_ 'main))))
                      (write (let ((__tmp155023
                                    (let ((__tmp155024
                                           (let ((__tmp155025
                                                  (let ((__tmp155026
                                                         (let ((__tmp155028
                                                                (let ((__tmp155029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules154844_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp155029)))
                       (__tmp155027
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp155028 __tmp155027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp155026))))
                                             (declare (not safe))
                                             (cons __tmp155025 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp155024))))
                               (declare (not safe))
                               (cons 'define __tmp155023)))
                      (write (let ((__tmp155030
                                    (let ((__tmp155069
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp155031
                                           (let ((__tmp155032
                                                  (let ((__tmp155033
                                                         (let ((__tmp155057
                                                                (let ((__tmp155058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155059
                                      (let ((__tmp155067
                                             (let ((__tmp155068
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp155068)))
                                            (__tmp155060
                                             (let ((__tmp155061
                                                    (let ((__tmp155062
                                                           (let ((__tmp155063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155064
                                 (let ((__tmp155065
                                        (let ((__tmp155066
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp155066 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp155065))))
                            (declare (not safe))
                            (cons __tmp155064 '()))))
                     (declare (not safe))
                     (cons _mod-main154846_ __tmp155063))))
              (declare (not safe))
              (cons 'apply __tmp155062))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155061 '()))))
                                        (declare (not safe))
                                        (cons __tmp155067 __tmp155060))))
                                 (declare (not safe))
                                 (cons '() __tmp155059))))
                          (declare (not safe))
                          (cons 'lambda __tmp155058)))
                       (__tmp155034
                        (let ((__tmp155035
                               (let ((__tmp155036
                                      (let ((__tmp155037
                                             (let ((__tmp155048
                                                    (let ((__tmp155049
                                                           (let ((__tmp155050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155051
                                 (let ((__tmp155052
                                        (let ((__tmp155053
                                               (let ((__tmp155054
                                                      (let ((__tmp155055
                                                             (let ((__tmp155056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp155056 '()))))
                (declare (not safe))
                (cons 'force-output __tmp155055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155054 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp155053))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp155052))))
                            (declare (not safe))
                            (cons __tmp155051 '()))))
                     (declare (not safe))
                     (cons 'void __tmp155050))))
              (declare (not safe))
              (cons 'with-catch __tmp155049)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155038
                                                    (let ((__tmp155039
                                                           (let ((__tmp155040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155041
                                 (let ((__tmp155042
                                        (let ((__tmp155043
                                               (let ((__tmp155044
                                                      (let ((__tmp155045
                                                             (let ((__tmp155046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155047
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp155047 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp155046))))
                (declare (not safe))
                (cons __tmp155045 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp155044))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp155043))))
                                   (declare (not safe))
                                   (cons __tmp155042 '()))))
                            (declare (not safe))
                            (cons 'void __tmp155041))))
                     (declare (not safe))
                     (cons 'with-catch __tmp155040))))
              (declare (not safe))
              (cons __tmp155039 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155048
                                                     __tmp155038))))
                                        (declare (not safe))
                                        (cons '() __tmp155037))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp155036))))
                          (declare (not safe))
                          (cons __tmp155035 '()))))
                   (declare (not safe))
                   (cons __tmp155057 __tmp155034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp155033))))
                                             (declare (not safe))
                                             (cons __tmp155032 '()))))
                                      (declare (not safe))
                                      (cons __tmp155069 __tmp155031))))
                               (declare (not safe))
                               (cons 'define __tmp155030)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts154735_
                  (lambda (_libgerbil154842_)
                    (call-with-input-file
                     (string-append _libgerbil154842_ '".ldd")
                     read)))
                 (_replace-extension154736_
                  (lambda (_path154839_ _ext154840_)
                    (string-append
                     (path-strip-extension _path154839_)
                     _ext154840_)))
                 (_not-exclude-module?154737_
                  (lambda (_ctx154835_)
                    (let ((_id-str154837_
                           (symbol->string
                            (##structure-ref
                             _ctx154835_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp155070
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str154837_))))
                            (declare (not safe))
                            (not __tmp155070))
                          (let ((__tmp155071
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str154837_))))
                            (declare (not safe))
                            (not __tmp155071))
                          '#f))))
                 (_not-file-empty?154738_
                  (lambda (_path154833_)
                    (let ((__tmp155072
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path154833_))))
                      (declare (not safe))
                      (not __tmp155072))))
                 (_compile-stub154739_
                  (lambda (_output-scm154746_ _output-bin154747_)
                    (let* ((_gerbil-home154749_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir154751_
                            (path-expand '"lib" _gerbil-home154749_))
                           (_gerbil-staticdir154753_
                            (path-expand '"static" _gerbil-libdir154751_))
                           (_gxlink154755_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir154751_))
                           (_tmp154757_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path154761_
                            (lambda (_f154759_)
                              (path-expand
                               (path-strip-directory _f154759_)
                               _tmp154757_)))
                           (_deps154763_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx154731_)))
                           (_deps154765_
                            (filter _not-exclude-module?154737_ _deps154763_))
                           (_src-deps-scm154767_
                            (map gxc#find-static-module-file _deps154765_))
                           (_src-deps-scm154769_
                            (filter _not-file-empty?154738_
                                    _src-deps-scm154767_))
                           (_src-deps-scm154771_
                            (map path-expand _src-deps-scm154769_))
                           (_deps-scm154773_
                            (map _tmp-path154761_ _src-deps-scm154771_))
                           (_deps-c154779_
                            (map (lambda (_g154774154776_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension154736_
                                      _g154774154776_
                                      '".c")))
                                 _deps-scm154773_))
                           (_deps-o154785_
                            (map (lambda (_g154780154782_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension154736_
                                      _g154780154782_
                                      '".o")))
                                 _deps-scm154773_))
                           (_src-bin-scm154787_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx154731_)))
                           (_src-bin-scm154789_
                            (path-expand _src-bin-scm154787_))
                           (_bin-scm154791_
                            (let ()
                              (declare (not safe))
                              (_tmp-path154761_ _src-bin-scm154789_)))
                           (_bin-c154793_
                            (let ()
                              (declare (not safe))
                              (_replace-extension154736_
                               _bin-scm154791_
                               '".c")))
                           (_bin-o154795_
                            (let ()
                              (declare (not safe))
                              (_replace-extension154736_
                               _bin-scm154791_
                               '".o")))
                           (_output-bin154797_
                            (path-expand _output-bin154747_))
                           (_output-scm154799_
                            (path-expand _output-scm154746_))
                           (_output-c154801_
                            (let ()
                              (declare (not safe))
                              (_replace-extension154736_
                               _output-scm154799_
                               '".c")))
                           (_output-o154803_
                            (let ()
                              (declare (not safe))
                              (_replace-extension154736_
                               _output-scm154799_
                               '".o")))
                           (_output_-c154805_
                            (let ()
                              (declare (not safe))
                              (_replace-extension154736_
                               _output-scm154799_
                               '"_.c")))
                           (_output_-o154807_
                            (let ()
                              (declare (not safe))
                              (_replace-extension154736_
                               _output-scm154799_
                               '"_.o")))
                           (_gsc-link-opts154809_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts154811_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts154813_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir154753_)))
                           (_output-ld-opts154815_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a154817_
                            (path-expand '"libgerbil.a" _gerbil-libdir154751_))
                           (_libgerbil.so154819_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir154751_))
                           (_libgerbil-ld-opts154821_
                            (if (file-exists? _libgerbil.so154819_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts154735_
                                   _libgerbil.so154819_))
                                (if (file-exists? _libgerbil.a154817_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts154735_
                                       _libgerbil.a154817_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a154817_
                                       _libgerbil.so154819_)))))
                           (_rpath154823_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir154751_)))
                           (_builtin-modules154827_
                            (map (lambda (_mod154825_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod154825_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx154731_ _deps154765_)))))
                      (let ((__tmp155073
                             (lambda ()
                               (let ((__tmp155074
                                      (path-directory _output-bin154797_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp155074)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp155073))
                      (let ((__tmp155075
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub154734_
                                  _builtin-modules154827_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm154799_
                         __tmp155075))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp155076
                                   (lambda () (create-directory _tmp154757_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp155076))
                            (for-each
                             copy-file
                             _src-deps-scm154771_
                             _deps-scm154773_)
                            (copy-file _src-bin-scm154789_ _bin-scm154791_)
                            (let ((__tmp155084
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp155077
                                   (let ((__tmp155078
                                          (let ((__tmp155079
                                                 (let ((__tmp155080
                                                        (let ((__tmp155081
                                                               (let ((__tmp155082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155083
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm154799_ '()))))
                                (declare (not safe))
                                (cons _bin-scm154791_ __tmp155083))))
                         (declare (not safe))
                         (foldr1 cons __tmp155082 _deps-scm154773_))))
                  (declare (not safe))
                  (foldr1 cons __tmp155081 _gsc-link-opts154809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink154755_
                                                         __tmp155080))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp155079))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp155078))))
                              (declare (not safe))
                              (gxc#invoke __tmp155084 __tmp155077))
                            (let ((__tmp155092
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp155085
                                   (let ((__tmp155086
                                          (let ((__tmp155087
                                                 (let ((__tmp155088
                                                        (let ((__tmp155089
                                                               (let ((__tmp155090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155091
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c154805_ '()))))
                                (declare (not safe))
                                (cons _output-c154801_ __tmp155091))))
                         (declare (not safe))
                         (cons _bin-c154793_ __tmp155090))))
                  (declare (not safe))
                  (foldr1 cons __tmp155089 _deps-c154779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp155088
                                                           _gsc-static-opts154813_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp155087
                                                    _gsc-cc-opts154811_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp155086))))
                              (declare (not safe))
                              (gxc#invoke __tmp155092 __tmp155085))
                            (let ((__tmp155105
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp155093
                                   (let ((__tmp155094
                                          (let ((__tmp155095
                                                 (let ((__tmp155096
                                                        (let ((__tmp155097
                                                               (let ((__tmp155098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155099
                                     (let ((__tmp155100
                                            (let ((__tmp155101
                                                   (let ((__tmp155102
                                                          (let ((__tmp155103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155104
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts154821_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp155104))))
                    (declare (not safe))
                    (cons _gerbil-libdir154751_ __tmp155103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp155102))))
                                              (declare (not safe))
                                              (cons _rpath154823_
                                                    __tmp155101))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp155100
                                               _output-ld-opts154815_))))
                                (declare (not safe))
                                (cons _output_-o154807_ __tmp155099))))
                         (declare (not safe))
                         (cons _output-o154803_ __tmp155098))))
                  (declare (not safe))
                  (cons _bin-o154795_ __tmp155097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp155096
                                                           _deps-o154785_))))
                                            (declare (not safe))
                                            (cons _output-bin154797_
                                                  __tmp155095))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp155094))))
                              (declare (not safe))
                              (gxc#invoke __tmp155105 __tmp155093))
                            (for-each
                             delete-file
                             (let ((__tmp155106
                                    (let ((__tmp155107
                                           (let ((__tmp155108
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o154807_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o154803_
                                                   __tmp155108))))
                                      (declare (not safe))
                                      (cons _output_-c154805_ __tmp155107))))
                               (declare (not safe))
                               (cons _output-c154801_ __tmp155106)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp154757_)))
                          '#!void)))))
          (let* ((_output-bin154741_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx154731_ _opts154732_)))
                 (_output-scm154743_
                  (string-append _output-bin154741_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub154739_ _output-scm154743_ _output-bin154741_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm154743_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx154556_ _opts154557_)
        (letrec ((_reset-declare154559_
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
                 (_generate-stub154560_
                  (lambda (_deps154722_)
                    (let ((_mod-main154724_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx154556_ 'main)))
                          (_reset-decl154725_
                           (let ()
                             (declare (not safe))
                             (_reset-declare154559_)))
                          (_user-decl154726_
                           (let ()
                             (declare (not safe))
                             (_user-declare154561_))))
                      (for-each
                       (lambda (_dep154728_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl154725_)
                         (newline)
                         (if _user-decl154726_
                             (begin (write _user-decl154726_) (newline))
                             '#!void)
                         (write (let ((__tmp155109
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep154728_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp155109)))
                         (newline))
                       _deps154722_)
                      (write (let ((__tmp155110
                                    (let ((__tmp155123
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp155111
                                           (let ((__tmp155119
                                                  (let ((__tmp155120
                                                         (let ((__tmp155121
                                                                (let ((__tmp155122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp155122))))
                   (declare (not safe))
                   (cons __tmp155121 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp155120)))
                                                 (__tmp155112
                                                  (let ((__tmp155113
                                                         (let ((__tmp155114
                                                                (let ((__tmp155115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155116
                                      (let ((__tmp155117
                                             (let ((__tmp155118
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp155118 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp155117))))
                                 (declare (not safe))
                                 (cons __tmp155116 '()))))
                          (declare (not safe))
                          (cons _mod-main154724_ __tmp155115))))
                   (declare (not safe))
                   (cons 'apply __tmp155114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155113 '()))))
                                             (declare (not safe))
                                             (cons __tmp155119 __tmp155112))))
                                      (declare (not safe))
                                      (cons __tmp155123 __tmp155111))))
                               (declare (not safe))
                               (cons 'define __tmp155110)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare154561_
                  (lambda ()
                    (let* ((_gsc-opts154627_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts154557_)))
                           (_gsc-prelude154629_
                            (if _gsc-opts154627_
                                (member '"-prelude" _gsc-opts154627_)
                                '#f))
                           (_gsc-prelude154631_
                            (if _gsc-prelude154629_
                                (read (open-input-string
                                       (cadr _gsc-prelude154629_)))
                                '#f)))
                      (let _lp154634_ ((_rest154636_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude154631_ '())))
                                       (_user-decls154637_ '()))
                        (let* ((_rest154638154646_ _rest154636_)
                               (_else154640154654_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls154637_))
                                      '#f
                                      (let ((__tmp155124
                                             (reverse _user-decls154637_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp155124)))))
                               (_K154642154710_
                                (lambda (_rest154657_ _expr154658_)
                                  (let* ((_expr154659154671_ _expr154658_)
                                         (_else154662154679_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp154634_
                                               _rest154657_
                                               _user-decls154637_)))))
                                    (let ((_K154667154700_
                                           (lambda (_decls154698_)
                                             (let ((__tmp155125
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls154637_
                                                              _decls154698_))))
                                               (declare (not safe))
                                               (_lp154634_
                                                _rest154657_
                                                __tmp155125))))
                                          (_K154664154685_
                                           (lambda (_exprs154683_)
                                             (let ((__tmp155126
                                                    (append _exprs154683_
                                                            _rest154657_)))
                                               (declare (not safe))
                                               (_lp154634_
                                                __tmp155126
                                                _user-decls154637_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr154659154671_))
                                          (let ((_tl154669154705_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr154659154671_)))
                                                (_hd154668154703_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr154659154671_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd154668154703_
                                                         'declare))
                                                (let ((_decls154708_
                                                       _tl154669154705_))
                                                  (declare (not safe))
                                                  (_K154667154700_
                                                   _decls154708_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd154668154703_
                                                             'begin))
                                                    (let ((_exprs154693_
                                                           _tl154669154705_))
                                                      (declare (not safe))
                                                      (_K154664154685_
                                                       _exprs154693_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else154662154679_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else154662154679_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest154638154646_))
                              (let ((_hd154643154713_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest154638154646_)))
                                    (_tl154644154715_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest154638154646_))))
                                (let* ((_expr154718_ _hd154643154713_)
                                       (_rest154720_ _tl154644154715_))
                                  (declare (not safe))
                                  (_K154642154710_ _rest154720_ _expr154718_)))
                              (let ()
                                (declare (not safe))
                                (_else154640154654_))))))))
                 (_compile-stub154562_
                  (lambda (_output-scm154569_ _output-bin154570_)
                    (let* ((_gerbil-home154572_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir154574_
                            (path-expand '"lib" _gerbil-home154572_))
                           (_runtime154576_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp154578_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home154572_))
                           (_include-gambit-sharp154580_
                            (string-append
                             '"(include \""
                             _gambit-sharp154578_
                             '"\")"))
                           (_bin-scm154582_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx154556_)))
                           (_deps154584_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx154556_)))
                           (_deps154586_
                            (map gxc#find-static-module-file _deps154584_))
                           (_deps154591_
                            (filter (lambda (_$obj154588_)
                                      (let ((__tmp155127
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj154588_))))
                                        (declare (not safe))
                                        (not __tmp155127)))
                                    _deps154586_))
                           (_deps154595_
                            (filter (lambda (_f154593_)
                                      (let ((__tmp155128
                                             (member _f154593_
                                                     _runtime154576_)))
                                        (declare (not safe))
                                        (not __tmp155128)))
                                    _deps154591_))
                           (_output-base154597_
                            (string-append
                             (path-strip-extension _output-scm154569_)))
                           (_output-c154599_
                            (string-append _output-base154597_ '".c"))
                           (_output-o154601_
                            (string-append _output-base154597_ '".o"))
                           (_output-c_154603_
                            (string-append _output-base154597_ '"_.c"))
                           (_output-o_154605_
                            (string-append _output-base154597_ '"_.o"))
                           (_gsc-link-opts154607_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts154609_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts154611_
                            (let ((__tmp155129
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir154574_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp155129)))
                           (_output-ld-opts154613_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros154615_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp155130
                                       (let ((__tmp155131
                                              (let ((__tmp155132
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp154580_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp155132))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp155131))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp155130))
                                (let ((__tmp155133
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp154580_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp155133))))
                           (_gsc-link-opts154617_
                            (append _gsc-link-opts154607_
                                    _gsc-gx-macros154615_))
                           (_rpath154619_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir154574_)))
                           (_default-ld-options154621_
                            (let ((__tmp155134
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp155134))))
                      (let ((__tmp155135
                             (lambda ()
                               (let ((__tmp155136
                                      (path-directory _output-bin154570_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp155136)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp155135))
                      (let ((__tmp155137
                             (lambda ()
                               (let ((__tmp155138
                                      (let ((__tmp155139
                                             (let ((__tmp155140
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm154582_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp155140
                                                       _deps154595_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp155139
                                                _runtime154576_))))
                                 (declare (not safe))
                                 (_generate-stub154560_ __tmp155138)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm154569_
                         __tmp155137))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp155146
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp155141
                                   (let ((__tmp155142
                                          (let ((__tmp155143
                                                 (let ((__tmp155144
                                                        (let ((__tmp155145
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm154569_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp155145 _gsc-link-opts154617_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_154603_
                                                         __tmp155144))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp155143))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp155142))))
                              (declare (not safe))
                              (gxc#invoke __tmp155146 __tmp155141))
                            (let ((__tmp155152
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp155147
                                   (let ((__tmp155148
                                          (let ((__tmp155149
                                                 (let ((__tmp155150
                                                        (let ((__tmp155151
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_154603_ '()))))
                  (declare (not safe))
                  (cons _output-c154599_ __tmp155151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp155150
                                                           _gsc-static-opts154611_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp155149
                                                    _gsc-cc-opts154609_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp155148))))
                              (declare (not safe))
                              (gxc#invoke __tmp155152 __tmp155147))
                            (let ((__tmp155162
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp155153
                                   (let ((__tmp155154
                                          (let ((__tmp155155
                                                 (let ((__tmp155156
                                                        (let ((__tmp155157
                                                               (let ((__tmp155158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155159
                                     (let ((__tmp155160
                                            (let ((__tmp155161
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options154621_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir154574_
                                                    __tmp155161))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp155160))))
                                (declare (not safe))
                                (cons _rpath154619_ __tmp155159))))
                         (declare (not safe))
                         (foldr1 cons __tmp155158 _output-ld-opts154613_))))
                  (declare (not safe))
                  (cons _output-o_154605_ __tmp155157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o154601_
                                                         __tmp155156))))
                                            (declare (not safe))
                                            (cons _output-bin154570_
                                                  __tmp155155))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp155154))))
                              (declare (not safe))
                              (gxc#invoke __tmp155162 __tmp155153)))
                          '#!void)))))
          (let* ((_output-bin154564_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx154556_ _opts154557_)))
                 (_output-scm154566_
                  (string-append _output-bin154564_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub154562_ _output-scm154566_ _output-bin154564_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm154566_))))))
    (define gxc#find-export-binding
      (lambda (_ctx154506_ _id154507_)
        (let ((_$e154553_
               (let ((__tmp155164
                      (lambda (_e154508154510_)
                        (let* ((_g154512154522_ _e154508154510_)
                               (_else154514154530_ (lambda () '#f))
                               (_K154516154534_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g154512154522_
                                 'gx#module-export::t))
                              (let* ((_e154517154537_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g154512154522_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e154518154540_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g154512154522_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e154519154543_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g154512154522_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e154519154543_ '0))
                                    (let ((_e154520154546_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g154512154522_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g154548154550_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g154548154550_
                                                    _id154507_)))
                                           _e154520154546_)
                                          (let ()
                                            (declare (not safe))
                                            (_K154516154534_))
                                          (let ()
                                            (declare (not safe))
                                            (_else154514154530_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else154514154530_))))
                              (let ()
                                (declare (not safe))
                                (_else154514154530_))))))
                     (__tmp155163
                      (##structure-ref
                       _ctx154506_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp155164 __tmp155163))))
          (if _$e154553_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e154553_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx154498_ _id154499_)
        (let ((_$e154501_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx154498_ _id154499_))))
          (if _$e154501_
              ((lambda (_bind154504_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind154504_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id154499_)))
                 (##structure-ref _bind154504_ '1 gx#binding::t '#f))
               _$e154501_)
              (let ((__tmp155165
                     (##structure-ref
                      _ctx154498_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp155165
                 _id154499_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx154385_)
        (letrec* ((_ht154387_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template154388_
                   (lambda (_in154450_ _phi154451_)
                     (let ((_iphi154453_
                            (fx+ _phi154451_
                                 (##direct-structure-ref
                                  _in154450_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports154454_
                            (##structure-ref
                             (##direct-structure-ref
                              _in154450_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp154456_ ((_rest154458_ _imports154454_)
                                        (_r154459_ '()))
                         (let* ((_rest154460154468_ _rest154458_)
                                (_else154462154476_ (lambda () _r154459_))
                                (_K154464154486_
                                 (lambda (_rest154479_ _in154480_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in154480_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi154453_))
                                           (let ((__tmp155166
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in154480_
                                                          _r154459_))))
                                             (declare (not safe))
                                             (_lp154456_
                                              _rest154479_
                                              __tmp155166))
                                           (let ()
                                             (declare (not safe))
                                             (_lp154456_
                                              _rest154479_
                                              _r154459_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in154480_
                                              'gx#module-import::t))
                                           (let ((_iphi154482_
                                                  (fx+ _phi154451_
                                                       (##direct-structure-ref
                                                        _in154480_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi154482_))
                                                 (let ((__tmp155167
                                                        (let ((__tmp155168
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in154480_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp155168 _r154459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp154456_
                                                    _rest154479_
                                                    __tmp155167))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp154456_
                                                    _rest154479_
                                                    _r154459_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in154480_
                                                  'gx#import-set::t))
                                               (let ((_xphi154484_
                                                      (fx+ _iphi154453_
                                                           (##direct-structure-ref
                                                            _in154480_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi154484_))
                                                     (let ((__tmp155169
                                                            (let ((__tmp155170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in154480_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp155170 _r154459_))))
               (declare (not safe))
               (_lp154456_ _rest154479_ __tmp155169))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi154484_)
                                                         (let ((__tmp155171
                                                                (let ((__tmp155172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template154388_
                                  _in154480_
                                  _iphi154453_))))
                          (declare (not safe))
                          (foldl1 cons _r154459_ __tmp155172))))
                   (declare (not safe))
                   (_lp154456_ _rest154479_ __tmp155171))
                 (let ()
                   (declare (not safe))
                   (_lp154456_ _rest154479_ _r154459_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp154456_
                                                  _rest154479_
                                                  _r154459_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest154460154468_))
                               (let ((_hd154465154489_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest154460154468_)))
                                     (_tl154466154491_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest154460154468_))))
                                 (let* ((_in154494_ _hd154465154489_)
                                        (_rest154496_ _tl154466154491_))
                                   (declare (not safe))
                                   (_K154464154486_ _rest154496_ _in154494_)))
                               (let ()
                                 (declare (not safe))
                                 (_else154462154476_))))))))
                  (_find-deps154389_
                   (lambda (_rest154396_ _deps154397_)
                     (let* ((_rest154398154406_ _rest154396_)
                            (_else154400154414_ (lambda () _deps154397_))
                            (_K154402154438_
                             (lambda (_rest154417_ _hd154418_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd154418_
                                      'gx#module-context::t))
                                   (let ((_id154420_
                                          (##structure-ref
                                           _hd154418_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports154421_
                                          (##structure-ref
                                           _hd154418_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht154387_ _id154420_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps154389_
                                            _rest154417_
                                            _deps154397_))
                                         (let ((_$e154423_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd154418_))))
                                           (if _$e154423_
                                               ((lambda (_pre154426_)
                                                  (let ((_xdeps154428_
                                                         (let ((__tmp155173
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre154426_ _imports154421_))))
                   (declare (not safe))
                   (_find-deps154389_ __tmp155173 _deps154397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht154387_
                                                       _id154420_
                                                       _hd154418_))
                                                    (let ((__tmp155174
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd154418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps154428_))))
              (declare (not safe))
              (_find-deps154389_ _rest154417_ __tmp155174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e154423_)
                                               (let ((_xdeps154430_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps154389_
                                                         _imports154421_
                                                         _deps154397_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht154387_
                                                    _id154420_
                                                    _hd154418_))
                                                 (let ((__tmp155175
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd154418_
                                                                _xdeps154430_))))
                                                   (declare (not safe))
                                                   (_find-deps154389_
                                                    _rest154417_
                                                    __tmp155175)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd154418_
                                          'gx#prelude-context::t))
                                       (let ((_id154432_
                                              (##structure-ref
                                               _hd154418_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht154387_
                                                _id154432_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps154389_
                                                _rest154417_
                                                _deps154397_))
                                             (let ((_xdeps154434_
                                                    (let ((__tmp155176
                                                           (##structure-ref
                                                            _hd154418_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps154389_
                                                       __tmp155176
                                                       _deps154397_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht154387_
                                                      _id154432_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps154389_
                                                      _rest154417_
                                                      _xdeps154434_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht154387_
                                                        _id154432_
                                                        _hd154418_))
                                                     (let ((__tmp155177
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd154418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps154434_))))
               (declare (not safe))
               (_find-deps154389_ _rest154417_ __tmp155177)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd154418_
                                              'gx#module-import::t))
                                           (if (let ((__tmp155178
                                                      (##direct-structure-ref
                                                       _hd154418_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp155178))
                                               (let ((__tmp155179
                                                      (let ((__tmp155180
                                                             (##direct-structure-ref
                                                              _hd154418_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp155180
                                                              _rest154417_))))
                                                 (declare (not safe))
                                                 (_find-deps154389_
                                                  __tmp155179
                                                  _deps154397_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps154389_
                                                  _rest154417_
                                                  _deps154397_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd154418_
                                                  'gx#module-export::t))
                                               (let ((__tmp155181
                                                      (let ((__tmp155182
                                                             (##direct-structure-ref
                                                              _hd154418_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp155182
                                                              _rest154417_))))
                                                 (declare (not safe))
                                                 (_find-deps154389_
                                                  __tmp155181
                                                  _deps154397_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd154418_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp155183
                                                              (##direct-structure-ref
                                                               _hd154418_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp155183))
                                                       (let ((__tmp155184
                                                              (let ((__tmp155185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd154418_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp155185 _rest154417_))))
                 (declare (not safe))
                 (_find-deps154389_ __tmp155184 _deps154397_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd154418_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps154436_
                           (let ()
                             (declare (not safe))
                             (_import-set-template154388_ _hd154418_ '0)))
                          (__tmp155186
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest154417_ _xdeps154436_))))
                     (declare (not safe))
                     (_find-deps154389_ __tmp155186 _deps154397_))
                   (let ()
                     (declare (not safe))
                     (_find-deps154389_ _rest154417_ _deps154397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd154418_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest154398154406_))
                           (let ((_hd154403154441_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest154398154406_)))
                                 (_tl154404154443_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest154398154406_))))
                             (let* ((_hd154446_ _hd154403154441_)
                                    (_rest154448_ _tl154404154443_))
                               (declare (not safe))
                               (_K154402154438_ _rest154448_ _hd154446_)))
                           (let ()
                             (declare (not safe))
                             (_else154400154414_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp155187
                                  (let ((_$e154391_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx154385_))))
                                    (if _$e154391_
                                        ((lambda (_pre154394_)
                                           (let ((__tmp155188
                                                  (##structure-ref
                                                   _ctx154385_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre154394_ __tmp155188)))
                                         _$e154391_)
                                        (##structure-ref
                                         _ctx154385_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps154389_ __tmp155187 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx154316_)
        (let* ((_context-id154318_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx154316_
                       'gx#module-context::t))
                    (##structure-ref _ctx154316_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx154316_)))
               (_scm154320_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id154318_))
                 '".scm"))
               (_dirs154322_ (gx#current-expander-module-library-path))
               (_dirs154328_
                (let ((_user-libpath154324_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath154324_
                      (let ((_user-libpath154326_
                             (path-expand '"lib" _user-libpath154324_)))
                        (if (member _user-libpath154326_ _dirs154322_)
                            _dirs154322_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath154326_ _dirs154322_))))
                      _dirs154322_)))
               (_dirs154337_
                (let ((_$e154330_ (gxc#current-compile-output-dir)))
                  (if _$e154330_
                      ((lambda (_g154332154334_)
                         (let ()
                           (declare (not safe))
                           (cons _g154332154334_ _dirs154328_)))
                       _$e154330_)
                      _dirs154328_)))
               (_dirs154343_
                (map (lambda (_g154338154340_)
                       (path-expand '"static" _g154338154340_))
                     _dirs154337_)))
          (let _lp154346_ ((_rest154348_ _dirs154343_))
            (let* ((_rest154349154357_ _rest154348_)
                   (_else154351154365_
                    (lambda ()
                      (let ((__tmp155189
                             (##structure-ref
                              _ctx154316_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp155189
                         _scm154320_))))
                   (_K154353154373_
                    (lambda (_rest154368_ _dir154369_)
                      (let ((_path154371_
                             (path-expand _scm154320_ _dir154369_)))
                        (if (file-exists? _path154371_)
                            _path154371_
                            (let ()
                              (declare (not safe))
                              (_lp154346_ _rest154368_)))))))
              (if (let () (declare (not safe)) (##pair? _rest154349154357_))
                  (let ((_hd154354154376_
                         (let ()
                           (declare (not safe))
                           (##car _rest154349154357_)))
                        (_tl154355154378_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest154349154357_))))
                    (let* ((_dir154381_ _hd154354154376_)
                           (_rest154383_ _tl154355154378_))
                      (declare (not safe))
                      (_K154353154373_ _rest154383_ _dir154381_)))
                  (let () (declare (not safe)) (_else154351154365_))))))))
    (define gxc#file-empty?
      (lambda (_path154314_)
        (let ((__tmp155190 (file-info-size (file-info _path154314_ '#t))))
          (declare (not safe))
          (zero? __tmp155190))))
    (define gxc#compile-top-module
      (lambda (_ctx154303_)
        (let ((__tmp155194
               (lambda ()
                 (let ((__tmp155195
                        (##structure-ref
                         _ctx154303_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp155195))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp155196
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx154303_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp155196))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx154303_))
                 (if (let ((__tmp155197
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx154303_))))
                       (declare (not safe))
                       (null? __tmp155197))
                     (let* ((_thr1154308_
                             (let ((__tmp155198
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx154303_)))))
                               (declare (not safe))
                               (spawn __tmp155198)))
                            (_thr2154311_
                             (let ((__tmp155199
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx154303_)))))
                               (declare (not safe))
                               (spawn __tmp155199))))
                       (let () (declare (not safe)) (gxc#join! _thr1154308_))
                       (let () (declare (not safe)) (gxc#join! _thr2154311_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx154303_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx154303_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx154303_))
                     '#!void)))
              (__tmp155193
               (let ((__obj155001
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj155001)
                 __obj155001))
              (__tmp155192 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp155191 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp155194
           gx#current-expander-context
           _ctx154303_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp155193
           gxc#current-compile-runtime-sections
           __tmp155192
           gxc#current-compile-runtime-names
           __tmp155191))))
    (define gxc#collect-bindings
      (lambda (_ctx154301_)
        (let ((__tmp155200
               (##structure-ref _ctx154301_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp155200))))
    (define gxc#compile-runtime-code
      (lambda (_ctx154247_)
        (letrec ((_compile1154249_
                  (lambda (_ctx154290_)
                    (let* ((_code154292_
                            (##structure-ref
                             _ctx154290_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt154296_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code154292_))
                                (let ((_idstr154294_
                                       (let ((__tmp155201
                                              (##structure-ref
                                               _ctx154290_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp155201))))
                                  (string-append _idstr154294_ '"__0"))
                                '#f)))
                      (if _rt154296_
                          (begin
                            (let ((__tmp155202
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp155202 _ctx154290_ _rt154296_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code154251_
                               _ctx154290_
                               _code154292_)))
                          (let ((_path154299_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx154290_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path154299_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code154252_
                         _ctx154290_
                         _code154292_
                         _rt154296_)))))
                 (_context-timestamp154250_
                  (lambda (_ctx154288_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx154288_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code154251_
                  (lambda (_ctx154270_ _code154271_)
                    (let* ((_lifts154273_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code154276_
                            (let ((__tmp155205
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code154271_))))
                                  (__tmp155204
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp155203
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp155205
                               gx#current-expander-context
                               _ctx154270_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts154273_
                               gxc#current-compile-marks
                               __tmp155204
                               gxc#current-compile-identifiers
                               __tmp155203)))
                           (_runtime-code154278_
                            (if (let ((__tmp155206 (unbox _lifts154273_)))
                                  (declare (not safe))
                                  (null? __tmp155206))
                                _runtime-code154276_
                                (let ((__tmp155207
                                       (let ((__tmp155209
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code154276_
                                                      '())))
                                             (__tmp155208
                                              (reverse (unbox _lifts154273_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp155209
                                                 __tmp155208))))
                                  (declare (not safe))
                                  (cons 'begin __tmp155207))))
                           (_runtime-code154280_
                            (let ((__tmp155210
                                   (let ((__tmp155212
                                          (let ((__tmp155213
                                                 (let ((__tmp155216
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp154250_
                                                           _ctx154270_)))
                                                       (__tmp155214
                                                        (let ((__tmp155215
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp155215
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp155216
                                                         __tmp155214))))
                                            (declare (not safe))
                                            (cons 'define __tmp155213)))
                                         (__tmp155211
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code154278_ '()))))
                                     (declare (not safe))
                                     (cons __tmp155212 __tmp155211))))
                              (declare (not safe))
                              (cons 'begin __tmp155210)))
                           (_scm0154282_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx154270_
                               '0
                               '".scm"))))
                      (let ((_scms154285_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx154270_))))
                        (let ((__tmp155217
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0154282_
                                    _runtime-code154280_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp155217
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms154285_)
                            (delete-file _scms154285_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0154282_
                           '" => "
                           _scms154285_))
                        (copy-file _scm0154282_ _scms154285_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0154282_))))))
                 (_generate-loader-code154252_
                  (lambda (_ctx154259_ _code154260_ _rt154261_)
                    (let* ((_loader-code154264_
                            (let ((__tmp155218
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code154260_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp155218
                               gx#current-expander-context
                               _ctx154259_)))
                           (_loader-code154266_
                            (if _rt154261_
                                (let ((__tmp155219
                                       (let ((__tmp155220
                                              (let ((__tmp155221
                                                     (let ((__tmp155222
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt154261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp155222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155221 '()))))
                                         (declare (not safe))
                                         (cons _loader-code154264_
                                               __tmp155220))))
                                  (declare (not safe))
                                  (cons 'begin __tmp155219))
                                _loader-code154264_)))
                      (let ((__tmp155223
                             (lambda ()
                               (let ((__tmp155224
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx154259_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp155224
                                  _loader-code154266_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp155223
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules154254_
                 (let ((__tmp155225
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx154247_))))
                   (declare (not safe))
                   (cons _ctx154247_ __tmp155225))))
            (for-each
             (lambda (_ctx154256_)
               (let ((__tmp155226
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1154249_ _ctx154256_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp155226
                  gxc#current-compile-decls
                  '())))
             _all-modules154254_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx154144_)
        (letrec ((_compile-ssi154146_
                  (lambda (_code154217_)
                    (let* ((_path154219_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx154144_
                               '#f
                               '".ssi")))
                           (_prelude154230_
                            (let* ((_super154221_
                                    (##structure-ref
                                     _ctx154144_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e154223_
                                    (##structure-ref
                                     _super154221_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e154223_
                                  ((lambda (_g154225154227_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g154225154227_)))
                                   _$e154223_)
                                  ':<root>)))
                           (_ns154232_
                            (##structure-ref
                             _ctx154144_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr154234_
                            (symbol->string
                             (##structure-ref
                              _ctx154144_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg154241_
                            (let ((_$e154236_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr154234_ '#\/))))
                              (if _$e154236_
                                  ((lambda (_x154239_)
                                     (string->symbol
                                      (substring _idstr154234_ '0 _x154239_)))
                                   _$e154236_)
                                  '#f)))
                           (_rt154243_
                            (let ((__tmp155227
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp155227 _ctx154144_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path154219_))
                      (let ((__tmp155228
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude154230_))
                               (if _pkg154241_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg154241_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns154232_))
                               (newline)
                               (pretty-print _code154217_)
                               (if _rt154243_
                                   (pretty-print
                                    (let ((__tmp155229
                                           (let ((__tmp155233
                                                  (let ((__tmp155234
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp155234)))
                                                 (__tmp155230
                                                  (let ((__tmp155231
                                                         (let ((__tmp155232
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt154243_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp155232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155231 '()))))
                                             (declare (not safe))
                                             (cons __tmp155233 __tmp155230))))
                                      (declare (not safe))
                                      (cons '%#call __tmp155229)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path154219_
                         __tmp155228)))))
                 (_compile-phi154147_
                  (lambda (_part154157_)
                    (let* ((_part154158154171_ _part154157_)
                           (_E154160154175_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part154158154171_))))
                           (_K154161154186_
                            (lambda (_code154178_
                                     _n154179_
                                     _phi154180_
                                     _phi-ctx154181_)
                              (let* ((_code154184_
                                      (let ((__tmp155235
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code154178_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp155235
                                         gx#current-expander-context
                                         _phi-ctx154181_
                                         gx#current-expander-phi
                                         _phi154180_)))
                                     (__tmp155236
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx154144_
                                         _n154179_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp155236
                                 _code154184_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part154158154171_))
                          (let ((_hd154162154189_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part154158154171_)))
                                (_tl154163154191_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part154158154171_))))
                            (let ((_phi-ctx154194_ _hd154162154189_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl154163154191_))
                                  (let ((_hd154164154196_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl154163154191_)))
                                        (_tl154165154198_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl154163154191_))))
                                    (let ((_phi154201_ _hd154164154196_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl154165154198_))
                                          (let ((_hd154166154203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl154165154198_)))
                                                (_tl154167154205_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl154165154198_))))
                                            (let ((_n154208_ _hd154166154203_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl154167154205_))
                                                  (let ((_hd154168154210_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl154167154205_)))
                                                        (_tl154169154212_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl154167154205_))))
                                                    (let ((_code154215_
                                                           _hd154168154210_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl154169154212_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K154161154186_
                                                             _code154215_
                                                             _n154208_
                                                             _phi154201_
                                                             _phi-ctx154194_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E154160154175_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E154160154175_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E154160154175_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E154160154175_)))))
                          (let () (declare (not safe)) (_E154160154175_)))))))
          (let ((_g155237_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx154144_))))
            (begin
              (let ((_g155238_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g155237_)
                           (##vector-length _g155237_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g155238_ 2)))
                    (error "Context expects 2 values" _g155238_)))
              (let ((_ssi-code154149_
                     (let () (declare (not safe)) (##vector-ref _g155237_ 0)))
                    (_phi-code154150_
                     (let () (declare (not safe)) (##vector-ref _g155237_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi154146_ _ssi-code154149_))
                  (let ((_threads154155_
                         (map (lambda (_code154152_)
                                (let ((__tmp155239
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi154147_
                                            _code154152_)))))
                                  (declare (not safe))
                                  (spawn __tmp155239)))
                              _phi-code154150_)))
                    (for-each gxc#join! _threads154155_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx154127_)
        (let* ((_path154129_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx154127_ '#f '".ssxi.ss")))
               (_code154131_
                (let ((__tmp155240
                       (##structure-ref
                        _ctx154127_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp155240)))
               (_idstr154133_
                (symbol->string
                 (##structure-ref _ctx154127_ '1 gx#expander-context::t '#f)))
               (_pkg154140_
                (let ((_$e154135_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr154133_ '#\/))))
                  (if _$e154135_
                      ((lambda (_x154138_)
                         (string->symbol
                          (substring _idstr154133_ '0 _x154138_)))
                       _$e154135_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path154129_))
          (let ((__tmp155241
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg154140_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg154140_))
                       '#!void)
                   (newline)
                   (pretty-print _code154131_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path154129_ __tmp155241)))))
    (define gxc#generate-meta-code
      (lambda (_ctx154120_)
        (let* ((_state154122_
                (let ((__obj155002
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj155002 _ctx154120_)
                  __obj155002))
               (_ssi-code154124_
                (let ((__tmp155242
                       (##structure-ref
                        _ctx154120_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp155242 _state154122_))))
          (values _ssi-code154124_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state154122_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx154113_)
        (let ((_lifts154115_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp155245
                 (lambda ()
                   (let ((_code154118_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx154113_))))
                     (if (let ((__tmp155246 (unbox _lifts154115_)))
                           (declare (not safe))
                           (null? __tmp155246))
                         _code154118_
                         (let ((__tmp155247
                                (let ((__tmp155249
                                       (let ()
                                         (declare (not safe))
                                         (cons _code154118_ '())))
                                      (__tmp155248
                                       (reverse (unbox _lifts154115_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp155249 __tmp155248))))
                           (declare (not safe))
                           (cons 'begin __tmp155247))))))
                (__tmp155244
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp155243
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp155245
             gxc#current-compile-lift
             _lifts154115_
             gxc#current-compile-marks
             __tmp155244
             gxc#current-compile-identifiers
             __tmp155243)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx154109_)
        (let ((_modules154111_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp155250
                 (##structure-ref _ctx154109_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp155250 _modules154111_))
          (reverse (unbox _modules154111_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path154092_ _code154093_ _phi?154094_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path154092_))
        (let ((__tmp155251
               (lambda ()
                 (pretty-print
                  (let ((__tmp155252
                         (let ((__tmp155259
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp155253
                                (let ((__tmp155258
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp155254
                                       (let ((__tmp155257
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp155255
                                              (let ((__tmp155256
                                                     (if _phi?154094_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp155256))))
                                         (declare (not safe))
                                         (cons __tmp155257 __tmp155255))))
                                  (declare (not safe))
                                  (cons __tmp155258 __tmp155254))))
                           (declare (not safe))
                           (cons __tmp155259 __tmp155253))))
                    (declare (not safe))
                    (cons 'declare __tmp155252)))
                 (pretty-print _code154093_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path154092_ __tmp155251))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path154092_ _phi?154094_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path154092_))))
    (define gxc#compile-scm-file__0
      (lambda (_path154100_ _code154101_)
        (let ((_phi?154103_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path154100_ _code154101_ _phi?154103_))))
    (define gxc#compile-scm-file
      (lambda _g155261_
        (let ((_g155260_ (let () (declare (not safe)) (##length _g155261_))))
          (cond ((let () (declare (not safe)) (##fx= _g155260_ 2))
                 (apply (lambda (_path154100_ _code154101_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path154100_
                             _code154101_)))
                        _g155261_))
                ((let () (declare (not safe)) (##fx= _g155260_ 3))
                 (apply (lambda (_path154105_ _code154106_ _phi?154107_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path154105_
                             _code154106_
                             _phi?154107_)))
                        _g155261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g155261_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?153993_)
        (let _lp153995_ ((_rest153997_ (gxc#current-compile-gsc-options))
                         (_opts153998_ '()))
          (let* ((_rest153999154019_ _rest153997_)
                 (_else154003154027_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?153993_))
                             (gxc#current-compile-debug))
                        (let ((__tmp155262
                               (let ((__tmp155263 (reverse _opts153998_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp155263))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp155262))
                        (reverse _opts153998_)))))
            (let ((_K154013154070_
                   (lambda (_rest154068_)
                     (let ()
                       (declare (not safe))
                       (_lp153995_ _rest154068_ _opts153998_))))
                  (_K154008154052_
                   (lambda (_rest154050_)
                     (let ()
                       (declare (not safe))
                       (_lp153995_ _rest154050_ _opts153998_))))
                  (_K154005154034_
                   (lambda (_rest154031_ _opt154032_)
                     (let ((__tmp155264
                            (let ()
                              (declare (not safe))
                              (cons _opt154032_ _opts153998_))))
                       (declare (not safe))
                       (_lp153995_ _rest154031_ __tmp155264)))))
              (if (let () (declare (not safe)) (##pair? _rest153999154019_))
                  (let ((_tl154015154075_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest153999154019_)))
                        (_hd154014154073_
                         (let ()
                           (declare (not safe))
                           (##car _rest153999154019_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd154014154073_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl154015154075_))
                            (let* ((_tl154017154078_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl154015154075_)))
                                   (_rest154081_ _tl154017154078_))
                              (declare (not safe))
                              (_K154013154070_ _rest154081_))
                            (let ((_opt154042_ _hd154014154073_)
                                  (_rest154044_ _tl154015154075_))
                              (let ()
                                (declare (not safe))
                                (_K154005154034_ _rest154044_ _opt154042_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd154014154073_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl154015154075_))
                                (let* ((_tl154012154060_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl154015154075_)))
                                       (_rest154063_ _tl154012154060_))
                                  (declare (not safe))
                                  (_K154008154052_ _rest154063_))
                                (let ((_opt154042_ _hd154014154073_)
                                      (_rest154044_ _tl154015154075_))
                                  (let ()
                                    (declare (not safe))
                                    (_K154005154034_
                                     _rest154044_
                                     _opt154042_))))
                            (let ((_opt154042_ _hd154014154073_)
                                  (_rest154044_ _tl154015154075_))
                              (let ()
                                (declare (not safe))
                                (_K154005154034_ _rest154044_ _opt154042_))))))
                  (let () (declare (not safe)) (_else154003154027_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?154087_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?154087_))))
    (define gxc#gsc-link-options
      (lambda _g155266_
        (let ((_g155265_ (let () (declare (not safe)) (##length _g155266_))))
          (cond ((let () (declare (not safe)) (##fx= _g155265_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g155266_))
                ((let () (declare (not safe)) (##fx= _g155265_ 1))
                 (apply (lambda (_phi?154089_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?154089_)))
                        _g155266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g155266_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?153894_)
        (let _lp153896_ ((_rest153898_ (gxc#current-compile-gsc-options))
                         (_opts153899_ '()))
          (let* ((_rest153900153920_ _rest153898_)
                 (_else153904153928_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?153894_))
                             (gxc#current-compile-debug))
                        (let ((__tmp155267
                               (let ((__tmp155268 (reverse _opts153899_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp155268))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp155267))
                        (reverse _opts153899_)))))
            (let ((_K153914153967_
                   (lambda (_rest153964_ _opt153965_)
                     (let ((__tmp155269
                            (let ((__tmp155270
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts153899_))))
                              (declare (not safe))
                              (cons _opt153965_ __tmp155270))))
                       (declare (not safe))
                       (_lp153896_ _rest153964_ __tmp155269))))
                  (_K153909153948_
                   (lambda (_rest153946_)
                     (let ()
                       (declare (not safe))
                       (_lp153896_ _rest153946_ _opts153899_))))
                  (_K153906153934_
                   (lambda (_rest153932_)
                     (let ()
                       (declare (not safe))
                       (_lp153896_ _rest153932_ _opts153899_)))))
              (if (let () (declare (not safe)) (##pair? _rest153900153920_))
                  (let ((_tl153916153972_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest153900153920_)))
                        (_hd153915153970_
                         (let ()
                           (declare (not safe))
                           (##car _rest153900153920_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd153915153970_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl153916153972_))
                            (let ((_tl153918153977_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl153916153972_)))
                                  (_hd153917153975_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl153916153972_))))
                              (let ((_opt153980_ _hd153917153975_)
                                    (_rest153982_ _tl153918153977_))
                                (let ()
                                  (declare (not safe))
                                  (_K153914153967_ _rest153982_ _opt153980_))))
                            (let ((_rest153940_ _tl153916153972_))
                              (declare (not safe))
                              (_K153906153934_ _rest153940_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd153915153970_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl153916153972_))
                                (let* ((_tl153913153956_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl153916153972_)))
                                       (_rest153959_ _tl153913153956_))
                                  (declare (not safe))
                                  (_K153909153948_ _rest153959_))
                                (let ((_rest153940_ _tl153916153972_))
                                  (declare (not safe))
                                  (_K153906153934_ _rest153940_)))
                            (let ((_rest153940_ _tl153916153972_))
                              (declare (not safe))
                              (_K153906153934_ _rest153940_)))))
                  (let () (declare (not safe)) (_else153904153928_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?153988_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?153988_))))
    (define gxc#gsc-cc-options
      (lambda _g155272_
        (let ((_g155271_ (let () (declare (not safe)) (##length _g155272_))))
          (cond ((let () (declare (not safe)) (##fx= _g155271_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g155272_))
                ((let () (declare (not safe)) (##fx= _g155271_ 1))
                 (apply (lambda (_phi?153990_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?153990_)))
                        _g155272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g155272_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir153889_)
        (let* ((_user-staticdir153891_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp155273
                (let ((__tmp155274
                       (string-append
                        '"-I "
                        _staticdir153889_
                        '" -I "
                        _user-staticdir153891_)))
                  (declare (not safe))
                  (cons __tmp155274 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp155273))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp153801_ ((_rest153803_ (gxc#current-compile-gsc-options))
                         (_opts153804_ '()))
          (let* ((_rest153805153825_ _rest153803_)
                 (_else153809153833_ (lambda () _opts153804_)))
            (let ((_K153819153876_
                   (lambda (_rest153874_)
                     (let ()
                       (declare (not safe))
                       (_lp153801_ _rest153874_ _opts153804_))))
                  (_K153814153854_
                   (lambda (_rest153851_ _opt153852_)
                     (let ((__tmp155275
                            (append _opts153804_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt153852_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp153801_ _rest153851_ __tmp155275))))
                  (_K153811153839_
                   (lambda (_rest153837_)
                     (let ()
                       (declare (not safe))
                       (_lp153801_ _rest153837_ _opts153804_)))))
              (if (let () (declare (not safe)) (##pair? _rest153805153825_))
                  (let ((_tl153821153881_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest153805153825_)))
                        (_hd153820153879_
                         (let ()
                           (declare (not safe))
                           (##car _rest153805153825_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd153820153879_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl153821153881_))
                            (let* ((_tl153823153884_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl153821153881_)))
                                   (_rest153887_ _tl153823153884_))
                              (declare (not safe))
                              (_K153819153876_ _rest153887_))
                            (let ((_rest153845_ _tl153821153881_))
                              (declare (not safe))
                              (_K153811153839_ _rest153845_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd153820153879_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl153821153881_))
                                (let ((_tl153818153864_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl153821153881_)))
                                      (_hd153817153862_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl153821153881_))))
                                  (let ((_opt153867_ _hd153817153862_)
                                        (_rest153869_ _tl153818153864_))
                                    (let ()
                                      (declare (not safe))
                                      (_K153814153854_
                                       _rest153869_
                                       _opt153867_))))
                                (let ((_rest153845_ _tl153821153881_))
                                  (declare (not safe))
                                  (_K153811153839_ _rest153845_)))
                            (let ((_rest153845_ _tl153821153881_))
                              (declare (not safe))
                              (_K153811153839_ _rest153845_)))))
                  (let () (declare (not safe)) (_else153809153833_))))))))
    (define gxc#not-string-empty?
      (lambda (_str153798_)
        (let ((__tmp155276
               (let () (declare (not safe)) (string-empty? _str153798_))))
          (declare (not safe))
          (not __tmp155276))))
    (define gxc#gsc-compile-file
      (lambda (_path153766_ _phi?153767_)
        (letrec ((_gsc-link-path153769_
                  (lambda (_base-path153790_)
                    (let _lp153792_ ((_n153794_ '1))
                      (let ((_path153796_
                             (string-append
                              _base-path153790_
                              '".o"
                              (number->string _n153794_))))
                        (if (file-exists? _path153796_)
                            (let ((__tmp155277
                                   (let ()
                                     (declare (not safe))
                                     (+ _n153794_ '1))))
                              (declare (not safe))
                              (_lp153792_ __tmp155277))
                            _path153796_))))))
          (let* ((_base-path153771_ (path-strip-extension _path153766_))
                 (_path-c153773_ (string-append _base-path153771_ '".c"))
                 (_path-o153775_ (string-append _base-path153771_ '".o"))
                 (_link-path153777_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path153769_ _base-path153771_)))
                 (_link-path-c153779_ (string-append _link-path153777_ '".c"))
                 (_link-path-o153781_ (string-append _link-path153777_ '".o"))
                 (_gsc-link-opts153783_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?153767_)))
                 (_gsc-cc-opts153785_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?153767_)))
                 (_gcc-ld-opts153787_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp155284 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp155278
                   (let ((__tmp155279
                          (let ((__tmp155280
                                 (let ((__tmp155281
                                        (let ((__tmp155282
                                               (let ((__tmp155283
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path153766_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp155283
                                                         _gsc-link-opts153783_))))
                                          (declare (not safe))
                                          (cons _link-path-c153779_
                                                __tmp155282))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp155281))))
                            (declare (not safe))
                            (cons '"-flat" __tmp155280))))
                     (declare (not safe))
                     (cons '"-link" __tmp155279))))
              (declare (not safe))
              (gxc#invoke __tmp155284 __tmp155278 'stdout-redirection: '#t))
            (let ((__tmp155291 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp155285
                   (let ((__tmp155286
                          (let ((__tmp155287
                                 (let ((__tmp155288
                                        (let ((__tmp155289
                                               (let ((__tmp155290
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c153779_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c153773_
                                                       __tmp155290))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp155289
                                                  _gsc-cc-opts153785_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp155288))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp155287))))
                     (declare (not safe))
                     (cons '"-obj" __tmp155286))))
              (declare (not safe))
              (gxc#invoke __tmp155291 __tmp155285 'stdout-redirection: '#t))
            (let ((__tmp155297 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp155292
                   (let ((__tmp155293
                          (let ((__tmp155294
                                 (let ((__tmp155295
                                        (let ((__tmp155296
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o153781_
                                                       _gcc-ld-opts153787_))))
                                          (declare (not safe))
                                          (cons _path-o153775_ __tmp155296))))
                                   (declare (not safe))
                                   (cons _link-path153777_ __tmp155295))))
                            (declare (not safe))
                            (cons '"-o" __tmp155294))))
                     (declare (not safe))
                     (cons '"-shared" __tmp155293))))
              (declare (not safe))
              (gxc#invoke __tmp155297 __tmp155292))
            (for-each
             delete-file
             (let ((__tmp155298
                    (let ((__tmp155299
                           (let ((__tmp155300
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o153781_ '()))))
                             (declare (not safe))
                             (cons _link-path-c153779_ __tmp155300))))
                      (declare (not safe))
                      (cons _path-o153775_ __tmp155299))))
               (declare (not safe))
               (cons _path-c153773_ __tmp155298)))))))
    (define gxc#compile-output-file
      (lambda (_ctx153737_ _n153738_ _ext153739_)
        (letrec ((_module-relative-path153741_
                  (lambda (_ctx153764_)
                    (path-strip-directory
                     (let ((__tmp155301
                            (##structure-ref
                             _ctx153764_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp155301)))))
                 (_module-source-directory153742_
                  (lambda (_ctx153760_)
                    (path-directory
                     (let ((_mpath153762_
                            (##structure-ref
                             _ctx153760_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath153762_))
                           _mpath153762_
                           (last _mpath153762_))))))
                 (_section-string153743_
                  (lambda (_n153758_)
                    (if (let () (declare (not safe)) (number? _n153758_))
                        (number->string _n153758_)
                        (if (let () (declare (not safe)) (symbol? _n153758_))
                            (symbol->string _n153758_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n153758_))
                                _n153758_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n153758_)))))))
                 (_file-name153744_
                  (lambda (_path153756_)
                    (if _n153738_
                        (string-append
                         _path153756_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string153743_ _n153738_))
                         _ext153739_)
                        (string-append _path153756_ _ext153739_))))
                 (_file-path153745_
                  (lambda ()
                    (let ((_$e153751_ (gxc#current-compile-output-dir)))
                      (if _$e153751_
                          ((lambda (_outdir153754_)
                             (path-expand
                              (let ((__tmp155302
                                     (let ((__tmp155303
                                            (##structure-ref
                                             _ctx153737_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp155303))))
                                (declare (not safe))
                                (_file-name153744_ __tmp155302))
                              _outdir153754_))
                           _$e153751_)
                          (path-expand
                           (let ((__tmp155304
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path153741_
                                     _ctx153737_))))
                             (declare (not safe))
                             (_file-name153744_ __tmp155304))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory153742_
                              _ctx153737_))))))))
          (let ((_path153747_
                 (let () (declare (not safe)) (_file-path153745_))))
            (let ((__tmp155305
                   (lambda ()
                     (let ((__tmp155306 (path-directory _path153747_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp155306)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp155305))
            _path153747_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx153719_)
        (letrec ((_file-name153721_
                  (lambda (_id153735_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id153735_))
                     '".scm")))
                 (_file-path153722_
                  (lambda ()
                    (let* ((_file153728_
                            (let ((__tmp155307
                                   (##structure-ref
                                    _ctx153719_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name153721_ __tmp155307)))
                           (_$e153730_ (gxc#current-compile-output-dir)))
                      (if _$e153730_
                          ((lambda (_outdir153733_)
                             (path-expand
                              _file153728_
                              (path-expand '"static" _outdir153733_)))
                           _$e153730_)
                          (path-expand _file153728_ '"static"))))))
          (let ((_path153724_
                 (let () (declare (not safe)) (_file-path153722_))))
            (let ((__tmp155308
                   (lambda ()
                     (let ((__tmp155309 (path-directory _path153724_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp155309)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp155308))
            _path153724_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx153713_ _opts153714_)
        (let ((_$e153716_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts153714_))))
          (if _$e153716_
              (values _$e153716_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx153713_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr153706_)
        (if (let () (declare (not safe)) (string? _idstr153706_))
            (let* ((_str153708_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr153706_)))
                   (_strs153710_
                    (let ()
                      (declare (not safe))
                      (string-split _str153708_ '#\/))))
              (let () (declare (not safe)) (string-join _strs153710_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr153706_))
                (let ((__tmp155310 (symbol->string _idstr153706_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp155310))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr153706_))))))
    (define gxc#invoke__%
      (lambda (_g155311_
               _stdout-redirection153667153671_
               _stderr-redirection153668153673_
               _program153675_
               _args153676_)
        (let* ((_stdout-redirection153678_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection153667153671_ absent-value))
                    '#f
                    _stdout-redirection153667153671_))
               (_stderr-redirection153680_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection153668153673_ absent-value))
                    '#f
                    _stderr-redirection153668153673_)))
          (let ((__tmp155312
                 (let ()
                   (declare (not safe))
                   (cons _program153675_ _args153676_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp155312))
          (let* ((_proc153682_
                  (open-process
                   (let ((__tmp155313
                          (let ((__tmp155314
                                 (let ((__tmp155315
                                        (let ((__tmp155316
                                               (let ((__tmp155317
                                                      (let ((__tmp155318
                                                             (let ((__tmp155319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection153680_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp155319))))
                (declare (not safe))
                (cons _stdout-redirection153678_ __tmp155318))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp155317))))
                                          (declare (not safe))
                                          (cons _args153676_ __tmp155316))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp155315))))
                            (declare (not safe))
                            (cons _program153675_ __tmp155314))))
                     (declare (not safe))
                     (cons 'path: __tmp155313))))
                 (_output153687_
                  (if (or _stdout-redirection153678_
                          _stderr-redirection153680_)
                      (read-line _proc153682_ '#f)
                      '#f)))
            (let ((_status153690_ (process-status _proc153682_)))
              (close-port _proc153682_)
              (if (let () (declare (not safe)) (zero? _status153690_))
                  '#!void
                  (begin
                    (display _output153687_)
                    (let ((__tmp155320
                           (let ()
                             (declare (not safe))
                             (cons _program153675_ _args153676_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp155320
                       _status153690_)))))))))
    (define gxc#invoke__@
      (lambda (_keys153666153695_ . _args153697_)
        (apply gxc#invoke__%
               _keys153666153695_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys153666153695_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys153666153695_
                  'stderr-redirection:
                  absent-value))
               _args153697_)))
    (define gxc#invoke
      (lambda _args153669153703_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args153669153703_)))
    (define gxc#join!
      (lambda (_thread153660_)
        (let ((__tmp155322
               (lambda (_exn153662_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn153662_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn153662_)))
                     (raise _exn153662_))))
              (__tmp155321 (lambda () (thread-join! _thread153660_))))
          (declare (not safe))
          (with-catch __tmp155322 __tmp155321))))))
