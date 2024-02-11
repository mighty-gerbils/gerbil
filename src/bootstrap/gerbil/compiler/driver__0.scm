(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707657577)
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
      (lambda (_path288415_ _fun288416_)
        (with-output-to-file
         (let ((__tmp292977
                (let ()
                  (declare (not safe))
                  (cons _path288415_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp292977))
         _fun288416_)))
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
      (lambda (_gerbil-libdir288410_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir288410_)))
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
      (lambda (_dir288408_) (delete-file-or-directory _dir288408_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath288382_ _opts288383_)
        (if (let () (declare (not safe)) (string? _srcpath288382_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288382_)))
        (let ((_outdir288385_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288383_)))
              (_invoke-gsc?288386_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288383_)))
              (_gsc-options288387_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288383_)))
              (_keep-scm?288388_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288383_)))
              (_verbosity288389_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288383_)))
              (_optimize288390_
               (let () (declare (not safe)) (pgetq 'optimize: _opts288383_)))
              (_debug288391_
               (let () (declare (not safe)) (pgetq 'debug: _opts288383_)))
              (_gen-ssxi288392_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts288383_))))
          (if _outdir288385_
              (let ((__tmp292978
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288385_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp292978))
              '#!void)
          (if _optimize288390_
              (let ((__tmp292979
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp292979))
              '#!void)
          (let ((__tmp292983
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath288382_))
                   (let ((__tmp292984
                          (let ((__tmp292985
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288382_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp292985))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp292984))))
                (__tmp292982
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp292980
                 (let ((__tmp292981
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288382_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp292981))))
            (declare (not safe))
            (call-with-parameters
             __tmp292983
             gxc#current-compile-output-dir
             _outdir288385_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288386_
             gxc#current-compile-gsc-options
             _gsc-options288387_
             gxc#current-compile-keep-scm
             _keep-scm?288388_
             gxc#current-compile-verbose
             _verbosity288389_
             gxc#current-compile-optimize
             _optimize288390_
             gxc#current-compile-debug
             _debug288391_
             gxc#current-compile-generate-ssxi
             _gen-ssxi288392_
             gxc#current-compile-timestamp
             __tmp292982
             gxc#current-compile-context
             __tmp292980
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath288401_)
        (let ((_opts288403_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath288401_ _opts288403_))))
    (define gxc#compile-module
      (lambda _g292987_
        (let ((_g292986_ (let () (declare (not safe)) (##length _g292987_))))
          (cond ((let () (declare (not safe)) (##fx= _g292986_ 1))
                 (apply (lambda (_srcpath288401_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath288401_)))
                        _g292987_))
                ((let () (declare (not safe)) (##fx= _g292986_ 2))
                 (apply (lambda (_srcpath288405_ _opts288406_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath288405_
                             _opts288406_)))
                        _g292987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g292987_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath288358_ _opts288359_)
        (if (let () (declare (not safe)) (string? _srcpath288358_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288358_)))
        (let ((_outdir288361_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288359_)))
              (_invoke-gsc?288362_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288359_)))
              (_gsc-options288363_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288359_)))
              (_keep-scm?288364_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288359_)))
              (_verbosity288365_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288359_)))
              (_debug288366_
               (let () (declare (not safe)) (pgetq 'debug: _opts288359_))))
          (if _outdir288361_
              (let ((__tmp292988
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288361_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp292988))
              '#!void)
          (let ((__tmp292992
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath288358_))
                   (let ((__tmp292993
                          (let ((__tmp292994
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288358_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp292994))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp292993
                      _opts288359_))))
                (__tmp292991
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp292989
                 (let ((__tmp292990
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288358_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp292990))))
            (declare (not safe))
            (call-with-parameters
             __tmp292992
             gxc#current-compile-output-dir
             _outdir288361_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288362_
             gxc#current-compile-gsc-options
             _gsc-options288363_
             gxc#current-compile-keep-scm
             _keep-scm?288364_
             gxc#current-compile-verbose
             _verbosity288365_
             gxc#current-compile-debug
             _debug288366_
             gxc#current-compile-timestamp
             __tmp292991
             gxc#current-compile-context
             __tmp292989
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath288374_)
        (let ((_opts288376_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath288374_ _opts288376_))))
    (define gxc#compile-exe
      (lambda _g292996_
        (let ((_g292995_ (let () (declare (not safe)) (##length _g292996_))))
          (cond ((let () (declare (not safe)) (##fx= _g292995_ 1))
                 (apply (lambda (_srcpath288374_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath288374_)))
                        _g292996_))
                ((let () (declare (not safe)) (##fx= _g292995_ 2))
                 (apply (lambda (_srcpath288378_ _opts288379_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath288378_ _opts288379_)))
                        _g292996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g292996_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx288354_ _opts288355_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts288355_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx288354_
               _opts288355_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx288354_
               _opts288355_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx288237_ _opts288238_)
        (letrec ((_generate-stub288240_
                  (lambda (_builtin-modules288350_)
                    (let ((_mod-main288352_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288237_ 'main))))
                      (write (let ((__tmp292997
                                    (let ((__tmp292998
                                           (let ((__tmp292999
                                                  (let ((__tmp293000
                                                         (let ((__tmp293002
                                                                (let ((__tmp293003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules288350_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp293003)))
                       (__tmp293001
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp293002 __tmp293001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp293000))))
                                             (declare (not safe))
                                             (cons __tmp292999 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp292998))))
                               (declare (not safe))
                               (cons 'define __tmp292997)))
                      (write (let ((__tmp293004
                                    (let ((__tmp293043
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp293005
                                           (let ((__tmp293006
                                                  (let ((__tmp293007
                                                         (let ((__tmp293031
                                                                (let ((__tmp293032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp293033
                                      (let ((__tmp293041
                                             (let ((__tmp293042
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp293042)))
                                            (__tmp293034
                                             (let ((__tmp293035
                                                    (let ((__tmp293036
                                                           (let ((__tmp293037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293038
                                 (let ((__tmp293039
                                        (let ((__tmp293040
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp293040 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp293039))))
                            (declare (not safe))
                            (cons __tmp293038 '()))))
                     (declare (not safe))
                     (cons _mod-main288352_ __tmp293037))))
              (declare (not safe))
              (cons 'apply __tmp293036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp293035 '()))))
                                        (declare (not safe))
                                        (cons __tmp293041 __tmp293034))))
                                 (declare (not safe))
                                 (cons '() __tmp293033))))
                          (declare (not safe))
                          (cons 'lambda __tmp293032)))
                       (__tmp293008
                        (let ((__tmp293009
                               (let ((__tmp293010
                                      (let ((__tmp293011
                                             (let ((__tmp293022
                                                    (let ((__tmp293023
                                                           (let ((__tmp293024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293025
                                 (let ((__tmp293026
                                        (let ((__tmp293027
                                               (let ((__tmp293028
                                                      (let ((__tmp293029
                                                             (let ((__tmp293030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp293030 '()))))
                (declare (not safe))
                (cons 'force-output __tmp293029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp293028 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp293027))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp293026))))
                            (declare (not safe))
                            (cons __tmp293025 '()))))
                     (declare (not safe))
                     (cons 'void __tmp293024))))
              (declare (not safe))
              (cons 'with-catch __tmp293023)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp293012
                                                    (let ((__tmp293013
                                                           (let ((__tmp293014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293015
                                 (let ((__tmp293016
                                        (let ((__tmp293017
                                               (let ((__tmp293018
                                                      (let ((__tmp293019
                                                             (let ((__tmp293020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp293021
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp293021 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp293020))))
                (declare (not safe))
                (cons __tmp293019 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp293018))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp293017))))
                                   (declare (not safe))
                                   (cons __tmp293016 '()))))
                            (declare (not safe))
                            (cons 'void __tmp293015))))
                     (declare (not safe))
                     (cons 'with-catch __tmp293014))))
              (declare (not safe))
              (cons __tmp293013 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp293022
                                                     __tmp293012))))
                                        (declare (not safe))
                                        (cons '() __tmp293011))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp293010))))
                          (declare (not safe))
                          (cons __tmp293009 '()))))
                   (declare (not safe))
                   (cons __tmp293031 __tmp293008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp293007))))
                                             (declare (not safe))
                                             (cons __tmp293006 '()))))
                                      (declare (not safe))
                                      (cons __tmp293043 __tmp293005))))
                               (declare (not safe))
                               (cons 'define __tmp293004)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts288241_
                  (lambda (_libgerbil288348_)
                    (call-with-input-file
                     (string-append _libgerbil288348_ '".ldd")
                     read)))
                 (_replace-extension288242_
                  (lambda (_path288345_ _ext288346_)
                    (string-append
                     (path-strip-extension _path288345_)
                     _ext288346_)))
                 (_not-exclude-module?288243_
                  (lambda (_ctx288341_)
                    (let ((_id-str288343_
                           (symbol->string
                            (##structure-ref
                             _ctx288341_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp293045
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str288343_))))
                            (declare (not safe))
                            (not __tmp293045))
                          (let ((__tmp293044
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str288343_))))
                            (declare (not safe))
                            (not __tmp293044))
                          '#f))))
                 (_not-file-empty?288244_
                  (lambda (_path288339_)
                    (let ((__tmp293046
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path288339_))))
                      (declare (not safe))
                      (not __tmp293046))))
                 (_compile-stub288245_
                  (lambda (_output-scm288252_ _output-bin288253_)
                    (let* ((_gerbil-home288255_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288257_
                            (path-expand '"lib" _gerbil-home288255_))
                           (_gerbil-staticdir288259_
                            (path-expand '"static" _gerbil-libdir288257_))
                           (_gxlink288261_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir288257_))
                           (_tmp288263_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path288267_
                            (lambda (_f288265_)
                              (path-expand
                               (path-strip-directory _f288265_)
                               _tmp288263_)))
                           (_deps288269_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288237_)))
                           (_deps288271_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?288243_
                                      _deps288269_)))
                           (_src-deps-scm288273_
                            (map gxc#find-static-module-file _deps288271_))
                           (_src-deps-scm288275_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?288244_
                                      _src-deps-scm288273_)))
                           (_src-deps-scm288277_
                            (map path-expand _src-deps-scm288275_))
                           (_deps-scm288279_
                            (map _tmp-path288267_ _src-deps-scm288277_))
                           (_deps-c288285_
                            (map (lambda (_g288280288282_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288242_
                                      _g288280288282_
                                      '".c")))
                                 _deps-scm288279_))
                           (_deps-o288291_
                            (map (lambda (_g288286288288_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288242_
                                      _g288286288288_
                                      '".o")))
                                 _deps-scm288279_))
                           (_src-bin-scm288293_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288237_)))
                           (_src-bin-scm288295_
                            (path-expand _src-bin-scm288293_))
                           (_bin-scm288297_
                            (let ()
                              (declare (not safe))
                              (_tmp-path288267_ _src-bin-scm288295_)))
                           (_bin-c288299_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288242_
                               _bin-scm288297_
                               '".c")))
                           (_bin-o288301_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288242_
                               _bin-scm288297_
                               '".o")))
                           (_output-bin288303_
                            (path-expand _output-bin288253_))
                           (_output-scm288305_
                            (path-expand _output-scm288252_))
                           (_output-c288307_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288242_
                               _output-scm288305_
                               '".c")))
                           (_output-o288309_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288242_
                               _output-scm288305_
                               '".o")))
                           (_output_-c288311_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288242_
                               _output-scm288305_
                               '"_.c")))
                           (_output_-o288313_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288242_
                               _output-scm288305_
                               '"_.o")))
                           (_gsc-link-opts288315_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288317_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288319_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir288259_)))
                           (_output-ld-opts288321_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a288323_
                            (path-expand '"libgerbil.a" _gerbil-libdir288257_))
                           (_libgerbil.so288325_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir288257_))
                           (_libgerbil-ld-opts288327_
                            (if (file-exists? _libgerbil.so288325_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts288241_
                                   _libgerbil.so288325_))
                                (if (file-exists? _libgerbil.a288323_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts288241_
                                       _libgerbil.a288323_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a288323_
                                       _libgerbil.so288325_)))))
                           (_rpath288329_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288257_)))
                           (_builtin-modules288333_
                            (map (lambda (_mod288331_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod288331_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx288237_ _deps288271_)))))
                      (let ((__tmp293047
                             (lambda ()
                               (let ((__tmp293048
                                      (path-directory _output-bin288303_)))
                                 (declare (not safe))
                                 (create-directory* __tmp293048)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp293047))
                      (let ((__tmp293049
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub288240_
                                  _builtin-modules288333_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288305_
                         __tmp293049))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp293050
                                   (lambda () (create-directory _tmp288263_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp293050))
                            (for-each
                             copy-file
                             _src-deps-scm288277_
                             _deps-scm288279_)
                            (copy-file _src-bin-scm288295_ _bin-scm288297_)
                            (let ((__tmp293058
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293051
                                   (let ((__tmp293052
                                          (let ((__tmp293053
                                                 (let ((__tmp293054
                                                        (let ((__tmp293055
                                                               (let ((__tmp293056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293057
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm288305_ '()))))
                                (declare (not safe))
                                (cons _bin-scm288297_ __tmp293057))))
                         (declare (not safe))
                         (foldr1 cons __tmp293056 _deps-scm288279_))))
                  (declare (not safe))
                  (foldr1 cons __tmp293055 _gsc-link-opts288315_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink288261_
                                                         __tmp293054))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp293053))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp293052))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293058
                               __tmp293051))
                            (let ((__tmp293066
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293059
                                   (let ((__tmp293060
                                          (let ((__tmp293061
                                                 (let ((__tmp293062
                                                        (let ((__tmp293063
                                                               (let ((__tmp293064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293065
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c288311_ '()))))
                                (declare (not safe))
                                (cons _output-c288307_ __tmp293065))))
                         (declare (not safe))
                         (cons _bin-c288299_ __tmp293064))))
                  (declare (not safe))
                  (foldr1 cons __tmp293063 _deps-c288285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293062
                                                           _gsc-static-opts288319_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp293061
                                                    _gsc-cc-opts288317_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp293060))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293066
                               __tmp293059))
                            (let ((__tmp293079
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp293067
                                   (let ((__tmp293068
                                          (let ((__tmp293069
                                                 (let ((__tmp293070
                                                        (let ((__tmp293071
                                                               (let ((__tmp293072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293073
                                     (let ((__tmp293074
                                            (let ((__tmp293075
                                                   (let ((__tmp293076
                                                          (let ((__tmp293077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp293078
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts288327_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp293078))))
                    (declare (not safe))
                    (cons _gerbil-libdir288257_ __tmp293077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp293076))))
                                              (declare (not safe))
                                              (cons _rpath288329_
                                                    __tmp293075))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp293074
                                               _output-ld-opts288321_))))
                                (declare (not safe))
                                (cons _output_-o288313_ __tmp293073))))
                         (declare (not safe))
                         (cons _output-o288309_ __tmp293072))))
                  (declare (not safe))
                  (cons _bin-o288301_ __tmp293071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293070
                                                           _deps-o288291_))))
                                            (declare (not safe))
                                            (cons _output-bin288303_
                                                  __tmp293069))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp293068))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293079
                               __tmp293067))
                            (for-each
                             delete-file
                             (let ((__tmp293080
                                    (let ((__tmp293081
                                           (let ((__tmp293082
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o288313_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o288309_
                                                   __tmp293082))))
                                      (declare (not safe))
                                      (cons _output_-c288311_ __tmp293081))))
                               (declare (not safe))
                               (cons _output-c288307_ __tmp293080)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp288263_)))
                          '#!void)))))
          (let* ((_output-bin288247_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288237_ _opts288238_)))
                 (_output-scm288249_
                  (string-append _output-bin288247_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288245_ _output-scm288249_ _output-bin288247_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288249_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx288062_ _opts288063_)
        (letrec ((_reset-declare288065_
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
                 (_generate-stub288066_
                  (lambda (_deps288228_)
                    (let ((_mod-main288230_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288062_ 'main)))
                          (_reset-decl288231_
                           (let ()
                             (declare (not safe))
                             (_reset-declare288065_)))
                          (_user-decl288232_
                           (let ()
                             (declare (not safe))
                             (_user-declare288067_))))
                      (for-each
                       (lambda (_dep288234_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl288231_)
                         (newline)
                         (if _user-decl288232_
                             (begin (write _user-decl288232_) (newline))
                             '#!void)
                         (write (let ((__tmp293083
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep288234_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp293083)))
                         (newline))
                       _deps288228_)
                      (write (let ((__tmp293084
                                    (let ((__tmp293097
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp293085
                                           (let ((__tmp293093
                                                  (let ((__tmp293094
                                                         (let ((__tmp293095
                                                                (let ((__tmp293096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp293096))))
                   (declare (not safe))
                   (cons __tmp293095 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp293094)))
                                                 (__tmp293086
                                                  (let ((__tmp293087
                                                         (let ((__tmp293088
                                                                (let ((__tmp293089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp293090
                                      (let ((__tmp293091
                                             (let ((__tmp293092
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp293092 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp293091))))
                                 (declare (not safe))
                                 (cons __tmp293090 '()))))
                          (declare (not safe))
                          (cons _mod-main288230_ __tmp293089))))
                   (declare (not safe))
                   (cons 'apply __tmp293088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp293087 '()))))
                                             (declare (not safe))
                                             (cons __tmp293093 __tmp293086))))
                                      (declare (not safe))
                                      (cons __tmp293097 __tmp293085))))
                               (declare (not safe))
                               (cons 'define __tmp293084)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare288067_
                  (lambda ()
                    (let* ((_gsc-opts288133_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts288063_)))
                           (_gsc-prelude288135_
                            (if _gsc-opts288133_
                                (member '"-prelude" _gsc-opts288133_)
                                '#f))
                           (_gsc-prelude288137_
                            (if _gsc-prelude288135_
                                (read (open-input-string
                                       (cadr _gsc-prelude288135_)))
                                '#f)))
                      (let _lp288140_ ((_rest288142_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude288137_ '())))
                                       (_user-decls288143_ '()))
                        (let* ((_rest288144288152_ _rest288142_)
                               (_else288146288160_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls288143_))
                                      '#f
                                      (let ((__tmp293098
                                             (reverse _user-decls288143_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp293098)))))
                               (_K288148288216_
                                (lambda (_rest288163_ _expr288164_)
                                  (let* ((_expr288165288177_ _expr288164_)
                                         (_else288168288185_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp288140_
                                               _rest288163_
                                               _user-decls288143_)))))
                                    (let ((_K288173288206_
                                           (lambda (_decls288204_)
                                             (let ((__tmp293099
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls288143_
                                                              _decls288204_))))
                                               (declare (not safe))
                                               (_lp288140_
                                                _rest288163_
                                                __tmp293099))))
                                          (_K288170288191_
                                           (lambda (_exprs288189_)
                                             (let ((__tmp293100
                                                    (append _exprs288189_
                                                            _rest288163_)))
                                               (declare (not safe))
                                               (_lp288140_
                                                __tmp293100
                                                _user-decls288143_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr288165288177_))
                                          (let ((_tl288175288211_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr288165288177_)))
                                                (_hd288174288209_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr288165288177_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd288174288209_
                                                         'declare))
                                                (let ((_decls288214_
                                                       _tl288175288211_))
                                                  (declare (not safe))
                                                  (_K288173288206_
                                                   _decls288214_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd288174288209_
                                                             'begin))
                                                    (let ((_exprs288199_
                                                           _tl288175288211_))
                                                      (declare (not safe))
                                                      (_K288170288191_
                                                       _exprs288199_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else288168288185_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else288168288185_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest288144288152_))
                              (let ((_hd288149288219_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest288144288152_)))
                                    (_tl288150288221_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest288144288152_))))
                                (let* ((_expr288224_ _hd288149288219_)
                                       (_rest288226_ _tl288150288221_))
                                  (declare (not safe))
                                  (_K288148288216_ _rest288226_ _expr288224_)))
                              (let ()
                                (declare (not safe))
                                (_else288146288160_))))))))
                 (_compile-stub288068_
                  (lambda (_output-scm288075_ _output-bin288076_)
                    (let* ((_gerbil-home288078_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288080_
                            (path-expand '"lib" _gerbil-home288078_))
                           (_runtime288082_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp288084_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home288078_))
                           (_include-gambit-sharp288086_
                            (string-append
                             '"(include \""
                             _gambit-sharp288084_
                             '"\")"))
                           (_bin-scm288088_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288062_)))
                           (_deps288090_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288062_)))
                           (_deps288092_
                            (map gxc#find-static-module-file _deps288090_))
                           (_deps288097_
                            (let ((__tmp293101
                                   (lambda (_$obj288094_)
                                     (let ((__tmp293102
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj288094_))))
                                       (declare (not safe))
                                       (not __tmp293102)))))
                              (declare (not safe))
                              (filter __tmp293101 _deps288092_)))
                           (_deps288101_
                            (let ((__tmp293103
                                   (lambda (_f288099_)
                                     (let ((__tmp293104
                                            (member _f288099_
                                                    _runtime288082_)))
                                       (declare (not safe))
                                       (not __tmp293104)))))
                              (declare (not safe))
                              (filter __tmp293103 _deps288097_)))
                           (_output-base288103_
                            (string-append
                             (path-strip-extension _output-scm288075_)))
                           (_output-c288105_
                            (string-append _output-base288103_ '".c"))
                           (_output-o288107_
                            (string-append _output-base288103_ '".o"))
                           (_output-c_288109_
                            (string-append _output-base288103_ '"_.c"))
                           (_output-o_288111_
                            (string-append _output-base288103_ '"_.o"))
                           (_gsc-link-opts288113_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288115_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288117_
                            (let ((__tmp293105
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir288080_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp293105)))
                           (_output-ld-opts288119_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros288121_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp293107
                                       (let ((__tmp293108
                                              (let ((__tmp293109
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp288086_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp293109))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp293108))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp293107))
                                (let ((__tmp293106
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp288086_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp293106))))
                           (_gsc-link-opts288123_
                            (append _gsc-link-opts288113_
                                    _gsc-gx-macros288121_))
                           (_rpath288125_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288080_)))
                           (_default-ld-options288127_
                            (let ((__tmp293110
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp293110))))
                      (let ((__tmp293111
                             (lambda ()
                               (let ((__tmp293112
                                      (path-directory _output-bin288076_)))
                                 (declare (not safe))
                                 (create-directory* __tmp293112)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp293111))
                      (let ((__tmp293113
                             (lambda ()
                               (let ((__tmp293114
                                      (let ((__tmp293115
                                             (let ((__tmp293116
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm288088_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp293116
                                                       _deps288101_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp293115
                                                _runtime288082_))))
                                 (declare (not safe))
                                 (_generate-stub288066_ __tmp293114)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288075_
                         __tmp293113))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp293122
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293117
                                   (let ((__tmp293118
                                          (let ((__tmp293119
                                                 (let ((__tmp293120
                                                        (let ((__tmp293121
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm288075_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp293121 _gsc-link-opts288123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_288109_
                                                         __tmp293120))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp293119))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp293118))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293122
                               __tmp293117))
                            (let ((__tmp293128
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293123
                                   (let ((__tmp293124
                                          (let ((__tmp293125
                                                 (let ((__tmp293126
                                                        (let ((__tmp293127
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_288109_ '()))))
                  (declare (not safe))
                  (cons _output-c288105_ __tmp293127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293126
                                                           _gsc-static-opts288117_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp293125
                                                    _gsc-cc-opts288115_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp293124))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293128
                               __tmp293123))
                            (let ((__tmp293138
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp293129
                                   (let ((__tmp293130
                                          (let ((__tmp293131
                                                 (let ((__tmp293132
                                                        (let ((__tmp293133
                                                               (let ((__tmp293134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293135
                                     (let ((__tmp293136
                                            (let ((__tmp293137
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options288127_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir288080_
                                                    __tmp293137))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp293136))))
                                (declare (not safe))
                                (cons _rpath288125_ __tmp293135))))
                         (declare (not safe))
                         (foldr1 cons __tmp293134 _output-ld-opts288119_))))
                  (declare (not safe))
                  (cons _output-o_288111_ __tmp293133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o288107_
                                                         __tmp293132))))
                                            (declare (not safe))
                                            (cons _output-bin288076_
                                                  __tmp293131))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp293130))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293138
                               __tmp293129)))
                          '#!void)))))
          (let* ((_output-bin288070_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288062_ _opts288063_)))
                 (_output-scm288072_
                  (string-append _output-bin288070_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288068_ _output-scm288072_ _output-bin288070_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288072_))))))
    (define gxc#find-export-binding
      (lambda (_ctx288012_ _id288013_)
        (let ((_$e288059_
               (let ((__tmp293140
                      (lambda (_e288014288016_)
                        (let* ((_g288018288028_ _e288014288016_)
                               (_else288020288036_ (lambda () '#f))
                               (_K288022288040_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g288018288028_
                                 'gx#module-export::t))
                              (let* ((_e288023288043_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288018288028_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e288024288046_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288018288028_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e288025288049_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288018288028_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e288025288049_ '0))
                                    (let ((_e288026288052_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g288018288028_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g288054288056_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g288054288056_
                                                    _id288013_)))
                                           _e288026288052_)
                                          (let ()
                                            (declare (not safe))
                                            (_K288022288040_))
                                          (let ()
                                            (declare (not safe))
                                            (_else288020288036_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else288020288036_))))
                              (let ()
                                (declare (not safe))
                                (_else288020288036_))))))
                     (__tmp293139
                      (##structure-ref
                       _ctx288012_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp293140 __tmp293139))))
          (if _$e288059_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e288059_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx288004_ _id288005_)
        (let ((_$e288007_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx288004_ _id288005_))))
          (if _$e288007_
              ((lambda (_bind288010_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind288010_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id288005_)))
                 (##structure-ref _bind288010_ '1 gx#binding::t '#f))
               _$e288007_)
              (let ((__tmp293141
                     (##structure-ref
                      _ctx288004_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp293141
                 _id288005_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx287891_)
        (letrec* ((_ht287893_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template287894_
                   (lambda (_in287956_ _phi287957_)
                     (let ((_iphi287959_
                            (fx+ _phi287957_
                                 (##direct-structure-ref
                                  _in287956_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports287960_
                            (##structure-ref
                             (##direct-structure-ref
                              _in287956_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp287962_ ((_rest287964_ _imports287960_)
                                        (_r287965_ '()))
                         (let* ((_rest287966287974_ _rest287964_)
                                (_else287968287982_ (lambda () _r287965_))
                                (_K287970287992_
                                 (lambda (_rest287985_ _in287986_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in287986_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi287959_))
                                           (let ((__tmp293148
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in287986_
                                                          _r287965_))))
                                             (declare (not safe))
                                             (_lp287962_
                                              _rest287985_
                                              __tmp293148))
                                           (let ()
                                             (declare (not safe))
                                             (_lp287962_
                                              _rest287985_
                                              _r287965_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in287986_
                                              'gx#module-import::t))
                                           (let ((_iphi287988_
                                                  (fx+ _phi287957_
                                                       (##direct-structure-ref
                                                        _in287986_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi287988_))
                                                 (let ((__tmp293146
                                                        (let ((__tmp293147
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in287986_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp293147 _r287965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp287962_
                                                    _rest287985_
                                                    __tmp293146))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp287962_
                                                    _rest287985_
                                                    _r287965_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in287986_
                                                  'gx#import-set::t))
                                               (let ((_xphi287990_
                                                      (fx+ _iphi287959_
                                                           (##direct-structure-ref
                                                            _in287986_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi287990_))
                                                     (let ((__tmp293144
                                                            (let ((__tmp293145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in287986_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp293145 _r287965_))))
               (declare (not safe))
               (_lp287962_ _rest287985_ __tmp293144))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi287990_)
                                                         (let ((__tmp293142
                                                                (let ((__tmp293143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template287894_
                                  _in287986_
                                  _iphi287959_))))
                          (declare (not safe))
                          (foldl1 cons _r287965_ __tmp293143))))
                   (declare (not safe))
                   (_lp287962_ _rest287985_ __tmp293142))
                 (let ()
                   (declare (not safe))
                   (_lp287962_ _rest287985_ _r287965_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp287962_
                                                  _rest287985_
                                                  _r287965_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest287966287974_))
                               (let ((_hd287971287995_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest287966287974_)))
                                     (_tl287972287997_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest287966287974_))))
                                 (let* ((_in288000_ _hd287971287995_)
                                        (_rest288002_ _tl287972287997_))
                                   (declare (not safe))
                                   (_K287970287992_ _rest288002_ _in288000_)))
                               (let ()
                                 (declare (not safe))
                                 (_else287968287982_))))))))
                  (_find-deps287895_
                   (lambda (_rest287902_ _deps287903_)
                     (let* ((_rest287904287912_ _rest287902_)
                            (_else287906287920_ (lambda () _deps287903_))
                            (_K287908287944_
                             (lambda (_rest287923_ _hd287924_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd287924_
                                      'gx#module-context::t))
                                   (let ((_id287926_
                                          (##structure-ref
                                           _hd287924_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports287927_
                                          (##structure-ref
                                           _hd287924_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht287893_
                                            _id287926_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps287895_
                                            _rest287923_
                                            _deps287903_))
                                         (let ((_$e287929_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd287924_))))
                                           (if _$e287929_
                                               ((lambda (_pre287932_)
                                                  (let ((_xdeps287934_
                                                         (let ((__tmp293161
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre287932_ _imports287927_))))
                   (declare (not safe))
                   (_find-deps287895_ __tmp293161 _deps287903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht287893_
                                                       _id287926_
                                                       _hd287924_))
                                                    (let ((__tmp293162
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd287924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps287934_))))
              (declare (not safe))
              (_find-deps287895_ _rest287923_ __tmp293162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e287929_)
                                               (let ((_xdeps287936_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps287895_
                                                         _imports287927_
                                                         _deps287903_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht287893_
                                                    _id287926_
                                                    _hd287924_))
                                                 (let ((__tmp293160
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd287924_
                                                                _xdeps287936_))))
                                                   (declare (not safe))
                                                   (_find-deps287895_
                                                    _rest287923_
                                                    __tmp293160)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd287924_
                                          'gx#prelude-context::t))
                                       (let ((_id287938_
                                              (##structure-ref
                                               _hd287924_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht287893_
                                                _id287938_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps287895_
                                                _rest287923_
                                                _deps287903_))
                                             (let ((_xdeps287940_
                                                    (let ((__tmp293158
                                                           (##structure-ref
                                                            _hd287924_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps287895_
                                                       __tmp293158
                                                       _deps287903_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht287893_
                                                      _id287938_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps287895_
                                                      _rest287923_
                                                      _xdeps287940_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht287893_
                                                        _id287938_
                                                        _hd287924_))
                                                     (let ((__tmp293159
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd287924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps287940_))))
               (declare (not safe))
               (_find-deps287895_ _rest287923_ __tmp293159)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd287924_
                                              'gx#module-import::t))
                                           (if (let ((__tmp293157
                                                      (##direct-structure-ref
                                                       _hd287924_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp293157))
                                               (let ((__tmp293155
                                                      (let ((__tmp293156
                                                             (##direct-structure-ref
                                                              _hd287924_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp293156
                                                              _rest287923_))))
                                                 (declare (not safe))
                                                 (_find-deps287895_
                                                  __tmp293155
                                                  _deps287903_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps287895_
                                                  _rest287923_
                                                  _deps287903_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd287924_
                                                  'gx#module-export::t))
                                               (let ((__tmp293153
                                                      (let ((__tmp293154
                                                             (##direct-structure-ref
                                                              _hd287924_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp293154
                                                              _rest287923_))))
                                                 (declare (not safe))
                                                 (_find-deps287895_
                                                  __tmp293153
                                                  _deps287903_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd287924_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp293152
                                                              (##direct-structure-ref
                                                               _hd287924_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp293152))
                                                       (let ((__tmp293150
                                                              (let ((__tmp293151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd287924_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp293151 _rest287923_))))
                 (declare (not safe))
                 (_find-deps287895_ __tmp293150 _deps287903_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd287924_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps287942_
                           (let ()
                             (declare (not safe))
                             (_import-set-template287894_ _hd287924_ '0)))
                          (__tmp293149
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest287923_ _xdeps287942_))))
                     (declare (not safe))
                     (_find-deps287895_ __tmp293149 _deps287903_))
                   (let ()
                     (declare (not safe))
                     (_find-deps287895_ _rest287923_ _deps287903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd287924_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest287904287912_))
                           (let ((_hd287909287947_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest287904287912_)))
                                 (_tl287910287949_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest287904287912_))))
                             (let* ((_hd287952_ _hd287909287947_)
                                    (_rest287954_ _tl287910287949_))
                               (declare (not safe))
                               (_K287908287944_ _rest287954_ _hd287952_)))
                           (let ()
                             (declare (not safe))
                             (_else287906287920_)))))))
          (reverse (let ((__tmp293163
                          (let ((__tmp293164
                                 (let ((_$e287897_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx287891_))))
                                   (if _$e287897_
                                       ((lambda (_pre287900_)
                                          (let ((__tmp293165
                                                 (##structure-ref
                                                  _ctx287891_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre287900_ __tmp293165)))
                                        _$e287897_)
                                       (##structure-ref
                                        _ctx287891_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps287895_ __tmp293164 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp293163))))))
    (define gxc#find-static-module-file
      (lambda (_ctx287822_)
        (let* ((_context-id287824_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx287822_
                       'gx#module-context::t))
                    (##structure-ref _ctx287822_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx287822_)))
               (_scm287826_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id287824_))
                 '".scm"))
               (_dirs287828_ (gx#current-expander-module-library-path))
               (_dirs287834_
                (let ((_user-libpath287830_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath287830_
                      (let ((_user-libpath287832_
                             (path-expand '"lib" _user-libpath287830_)))
                        (if (member _user-libpath287832_ _dirs287828_)
                            _dirs287828_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath287832_ _dirs287828_))))
                      _dirs287828_)))
               (_dirs287843_
                (let ((_$e287836_ (gxc#current-compile-output-dir)))
                  (if _$e287836_
                      ((lambda (_g287838287840_)
                         (let ()
                           (declare (not safe))
                           (cons _g287838287840_ _dirs287834_)))
                       _$e287836_)
                      _dirs287834_)))
               (_dirs287849_
                (map (lambda (_g287844287846_)
                       (path-expand '"static" _g287844287846_))
                     _dirs287843_)))
          (let _lp287852_ ((_rest287854_ _dirs287849_))
            (let* ((_rest287855287863_ _rest287854_)
                   (_else287857287871_
                    (lambda ()
                      (let ((__tmp293166
                             (##structure-ref
                              _ctx287822_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp293166
                         _scm287826_))))
                   (_K287859287879_
                    (lambda (_rest287874_ _dir287875_)
                      (let ((_path287877_
                             (path-expand _scm287826_ _dir287875_)))
                        (if (file-exists? _path287877_)
                            _path287877_
                            (let ()
                              (declare (not safe))
                              (_lp287852_ _rest287874_)))))))
              (if (let () (declare (not safe)) (##pair? _rest287855287863_))
                  (let ((_hd287860287882_
                         (let ()
                           (declare (not safe))
                           (##car _rest287855287863_)))
                        (_tl287861287884_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287855287863_))))
                    (let* ((_dir287887_ _hd287860287882_)
                           (_rest287889_ _tl287861287884_))
                      (declare (not safe))
                      (_K287859287879_ _rest287889_ _dir287887_)))
                  (let () (declare (not safe)) (_else287857287871_))))))))
    (define gxc#file-empty?
      (lambda (_path287820_)
        (let ((__tmp293167 (file-info-size (file-info _path287820_ '#t))))
          (declare (not safe))
          (zero? __tmp293167))))
    (define gxc#compile-top-module
      (lambda (_ctx287809_)
        (let ((__tmp293171
               (lambda ()
                 (let ((__tmp293172
                        (##structure-ref
                         _ctx287809_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp293172))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp293173
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx287809_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp293173))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx287809_))
                 (if (let ((__tmp293176
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx287809_))))
                       (declare (not safe))
                       (null? __tmp293176))
                     (let* ((_thr1287814_
                             (let ((__tmp293174
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx287809_)))))
                               (declare (not safe))
                               (spawn __tmp293174)))
                            (_thr2287817_
                             (let ((__tmp293175
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx287809_)))))
                               (declare (not safe))
                               (spawn __tmp293175))))
                       (let () (declare (not safe)) (gxc#join! _thr1287814_))
                       (let () (declare (not safe)) (gxc#join! _thr2287817_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx287809_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx287809_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx287809_))
                     '#!void)))
              (__tmp293170
               (let ((__obj292975
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj292975)
                 __obj292975))
              (__tmp293169
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp293168 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp293171
           gx#current-expander-context
           _ctx287809_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp293170
           gxc#current-compile-runtime-sections
           __tmp293169
           gxc#current-compile-runtime-names
           __tmp293168))))
    (define gxc#collect-bindings
      (lambda (_ctx287807_)
        (let ((__tmp293177
               (##structure-ref _ctx287807_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp293177))))
    (define gxc#compile-runtime-code
      (lambda (_ctx287753_)
        (letrec ((_compile1287755_
                  (lambda (_ctx287796_)
                    (let* ((_code287798_
                            (##structure-ref
                             _ctx287796_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt287802_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code287798_))
                                (let ((_idstr287800_
                                       (let ((__tmp293178
                                              (##structure-ref
                                               _ctx287796_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp293178))))
                                  (string-append _idstr287800_ '"__0"))
                                '#f)))
                      (if _rt287802_
                          (begin
                            (let ((__tmp293179
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp293179 _ctx287796_ _rt287802_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code287757_
                               _ctx287796_
                               _code287798_)))
                          (let ((_path287805_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx287796_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path287805_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code287758_
                         _ctx287796_
                         _code287798_
                         _rt287802_)))))
                 (_context-timestamp287756_
                  (lambda (_ctx287794_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx287794_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code287757_
                  (lambda (_ctx287776_ _code287777_)
                    (let* ((_lifts287779_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code287782_
                            (let ((__tmp293182
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code287777_))))
                                  (__tmp293181
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp293180
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp293182
                               gx#current-expander-context
                               _ctx287776_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts287779_
                               gxc#current-compile-marks
                               __tmp293181
                               gxc#current-compile-identifiers
                               __tmp293180)))
                           (_runtime-code287784_
                            (if (let ((__tmp293186 (unbox _lifts287779_)))
                                  (declare (not safe))
                                  (null? __tmp293186))
                                _runtime-code287782_
                                (let ((__tmp293183
                                       (let ((__tmp293185
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code287782_
                                                      '())))
                                             (__tmp293184
                                              (reverse (unbox _lifts287779_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp293185
                                                 __tmp293184))))
                                  (declare (not safe))
                                  (cons 'begin __tmp293183))))
                           (_runtime-code287786_
                            (let ((__tmp293187
                                   (let ((__tmp293189
                                          (let ((__tmp293190
                                                 (let ((__tmp293193
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp287756_
                                                           _ctx287776_)))
                                                       (__tmp293191
                                                        (let ((__tmp293192
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp293192
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp293193
                                                         __tmp293191))))
                                            (declare (not safe))
                                            (cons 'define __tmp293190)))
                                         (__tmp293188
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code287784_ '()))))
                                     (declare (not safe))
                                     (cons __tmp293189 __tmp293188))))
                              (declare (not safe))
                              (cons 'begin __tmp293187)))
                           (_scm0287788_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx287776_
                               '0
                               '".scm"))))
                      (let ((_scms287791_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx287776_))))
                        (let ((__tmp293194
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0287788_
                                    _runtime-code287786_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp293194
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms287791_)
                            (delete-file _scms287791_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0287788_
                           '" => "
                           _scms287791_))
                        (copy-file _scm0287788_ _scms287791_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0287788_))))))
                 (_generate-loader-code287758_
                  (lambda (_ctx287765_ _code287766_ _rt287767_)
                    (let* ((_loader-code287770_
                            (let ((__tmp293195
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code287766_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp293195
                               gx#current-expander-context
                               _ctx287765_)))
                           (_loader-code287772_
                            (if _rt287767_
                                (let ((__tmp293196
                                       (let ((__tmp293197
                                              (let ((__tmp293198
                                                     (let ((__tmp293199
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt287767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp293199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293198 '()))))
                                         (declare (not safe))
                                         (cons _loader-code287770_
                                               __tmp293197))))
                                  (declare (not safe))
                                  (cons 'begin __tmp293196))
                                _loader-code287770_)))
                      (let ((__tmp293200
                             (lambda ()
                               (let ((__tmp293201
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx287765_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp293201
                                  _loader-code287772_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp293200
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules287760_
                 (let ((__tmp293202
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx287753_))))
                   (declare (not safe))
                   (cons _ctx287753_ __tmp293202))))
            (for-each
             (lambda (_ctx287762_)
               (let ((__tmp293203
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1287755_ _ctx287762_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp293203
                  gxc#current-compile-decls
                  '())))
             _all-modules287760_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx287650_)
        (letrec ((_compile-ssi287652_
                  (lambda (_code287723_)
                    (let* ((_path287725_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx287650_
                               '#f
                               '".ssi")))
                           (_prelude287736_
                            (let* ((_super287727_
                                    (##structure-ref
                                     _ctx287650_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e287729_
                                    (##structure-ref
                                     _super287727_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e287729_
                                  ((lambda (_g287731287733_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g287731287733_)))
                                   _$e287729_)
                                  ':<root>)))
                           (_ns287738_
                            (##structure-ref
                             _ctx287650_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr287740_
                            (symbol->string
                             (##structure-ref
                              _ctx287650_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg287747_
                            (let ((_$e287742_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr287740_ '#\/))))
                              (if _$e287742_
                                  ((lambda (_x287745_)
                                     (string->symbol
                                      (substring _idstr287740_ '0 _x287745_)))
                                   _$e287742_)
                                  '#f)))
                           (_rt287749_
                            (let ((__tmp293204
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp293204 _ctx287650_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path287725_))
                      (let ((__tmp293205
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude287736_))
                               (if _pkg287747_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg287747_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns287738_))
                               (newline)
                               (pretty-print _code287723_)
                               (if _rt287749_
                                   (pretty-print
                                    (let ((__tmp293206
                                           (let ((__tmp293210
                                                  (let ((__tmp293211
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp293211)))
                                                 (__tmp293207
                                                  (let ((__tmp293208
                                                         (let ((__tmp293209
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt287749_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp293209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp293208 '()))))
                                             (declare (not safe))
                                             (cons __tmp293210 __tmp293207))))
                                      (declare (not safe))
                                      (cons '%#call __tmp293206)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path287725_
                         __tmp293205)))))
                 (_compile-phi287653_
                  (lambda (_part287663_)
                    (let* ((_part287664287677_ _part287663_)
                           (_E287666287681_
                            (lambda ()
                              (error '"No clause matching"
                                     _part287664287677_)))
                           (_K287667287692_
                            (lambda (_code287684_
                                     _n287685_
                                     _phi287686_
                                     _phi-ctx287687_)
                              (let* ((_code287690_
                                      (let ((__tmp293212
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code287684_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp293212
                                         gx#current-expander-context
                                         _phi-ctx287687_
                                         gx#current-expander-phi
                                         _phi287686_)))
                                     (__tmp293213
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx287650_
                                         _n287685_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp293213
                                 _code287690_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part287664287677_))
                          (let ((_hd287668287695_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part287664287677_)))
                                (_tl287669287697_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part287664287677_))))
                            (let ((_phi-ctx287700_ _hd287668287695_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl287669287697_))
                                  (let ((_hd287670287702_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl287669287697_)))
                                        (_tl287671287704_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl287669287697_))))
                                    (let ((_phi287707_ _hd287670287702_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl287671287704_))
                                          (let ((_hd287672287709_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl287671287704_)))
                                                (_tl287673287711_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl287671287704_))))
                                            (let ((_n287714_ _hd287672287709_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl287673287711_))
                                                  (let ((_hd287674287716_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl287673287711_)))
                                                        (_tl287675287718_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl287673287711_))))
                                                    (let ((_code287721_
                                                           _hd287674287716_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl287675287718_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K287667287692_
                                                             _code287721_
                                                             _n287714_
                                                             _phi287707_
                                                             _phi-ctx287700_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E287666287681_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E287666287681_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E287666287681_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E287666287681_)))))
                          (let () (declare (not safe)) (_E287666287681_)))))))
          (let ((_g293214_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx287650_))))
            (begin
              (let ((_g293215_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g293214_)
                           (##vector-length _g293214_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g293215_ 2)))
                    (error "Context expects 2 values" _g293215_)))
              (let ((_ssi-code287655_
                     (let () (declare (not safe)) (##vector-ref _g293214_ 0)))
                    (_phi-code287656_
                     (let () (declare (not safe)) (##vector-ref _g293214_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi287652_ _ssi-code287655_))
                  (let ((_threads287661_
                         (map (lambda (_code287658_)
                                (let ((__tmp293216
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi287653_
                                            _code287658_)))))
                                  (declare (not safe))
                                  (spawn __tmp293216)))
                              _phi-code287656_)))
                    (for-each gxc#join! _threads287661_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx287633_)
        (let* ((_path287635_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx287633_ '#f '".ssxi.ss")))
               (_code287637_
                (let ((__tmp293217
                       (##structure-ref
                        _ctx287633_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp293217)))
               (_idstr287639_
                (symbol->string
                 (##structure-ref _ctx287633_ '1 gx#expander-context::t '#f)))
               (_pkg287646_
                (let ((_$e287641_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr287639_ '#\/))))
                  (if _$e287641_
                      ((lambda (_x287644_)
                         (string->symbol
                          (substring _idstr287639_ '0 _x287644_)))
                       _$e287641_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path287635_))
          (let ((__tmp293218
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg287646_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg287646_))
                       '#!void)
                   (newline)
                   (pretty-print _code287637_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path287635_ __tmp293218)))))
    (define gxc#generate-meta-code
      (lambda (_ctx287626_)
        (let* ((_state287628_
                (let ((__obj292976
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj292976 _ctx287626_)
                  __obj292976))
               (_ssi-code287630_
                (let ((__tmp293219
                       (##structure-ref
                        _ctx287626_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp293219 _state287628_))))
          (values _ssi-code287630_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state287628_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx287619_)
        (let ((_lifts287621_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp293222
                 (lambda ()
                   (let ((_code287624_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx287619_))))
                     (if (let ((__tmp293226 (unbox _lifts287621_)))
                           (declare (not safe))
                           (null? __tmp293226))
                         _code287624_
                         (let ((__tmp293223
                                (let ((__tmp293225
                                       (let ()
                                         (declare (not safe))
                                         (cons _code287624_ '())))
                                      (__tmp293224
                                       (reverse (unbox _lifts287621_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp293225 __tmp293224))))
                           (declare (not safe))
                           (cons 'begin __tmp293223))))))
                (__tmp293221
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp293220
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp293222
             gxc#current-compile-lift
             _lifts287621_
             gxc#current-compile-marks
             __tmp293221
             gxc#current-compile-identifiers
             __tmp293220)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx287615_)
        (let ((_modules287617_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp293227
                 (##structure-ref _ctx287615_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp293227 _modules287617_))
          (reverse (unbox _modules287617_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path287598_ _code287599_ _phi?287600_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path287598_))
        (let ((__tmp293228
               (lambda ()
                 (pretty-print
                  (let ((__tmp293229
                         (let ((__tmp293236
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp293230
                                (let ((__tmp293235
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp293231
                                       (let ((__tmp293234
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp293232
                                              (let ((__tmp293233
                                                     (if _phi?287600_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp293233))))
                                         (declare (not safe))
                                         (cons __tmp293234 __tmp293232))))
                                  (declare (not safe))
                                  (cons __tmp293235 __tmp293231))))
                           (declare (not safe))
                           (cons __tmp293236 __tmp293230))))
                    (declare (not safe))
                    (cons 'declare __tmp293229)))
                 (pretty-print _code287599_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path287598_ __tmp293228))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path287598_ _phi?287600_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path287598_))))
    (define gxc#compile-scm-file__0
      (lambda (_path287606_ _code287607_)
        (let ((_phi?287609_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path287606_ _code287607_ _phi?287609_))))
    (define gxc#compile-scm-file
      (lambda _g293238_
        (let ((_g293237_ (let () (declare (not safe)) (##length _g293238_))))
          (cond ((let () (declare (not safe)) (##fx= _g293237_ 2))
                 (apply (lambda (_path287606_ _code287607_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path287606_
                             _code287607_)))
                        _g293238_))
                ((let () (declare (not safe)) (##fx= _g293237_ 3))
                 (apply (lambda (_path287611_ _code287612_ _phi?287613_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path287611_
                             _code287612_
                             _phi?287613_)))
                        _g293238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g293238_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?287499_)
        (let _lp287501_ ((_rest287503_ (gxc#current-compile-gsc-options))
                         (_opts287504_ '()))
          (let* ((_rest287505287525_ _rest287503_)
                 (_else287509287533_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287499_))
                             (gxc#current-compile-debug))
                        (let ((__tmp293239
                               (let ((__tmp293240 (reverse _opts287504_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp293240))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp293239))
                        (reverse _opts287504_)))))
            (let ((_K287519287576_
                   (lambda (_rest287574_)
                     (let ()
                       (declare (not safe))
                       (_lp287501_ _rest287574_ _opts287504_))))
                  (_K287514287558_
                   (lambda (_rest287556_)
                     (let ()
                       (declare (not safe))
                       (_lp287501_ _rest287556_ _opts287504_))))
                  (_K287511287540_
                   (lambda (_rest287537_ _opt287538_)
                     (let ((__tmp293241
                            (let ()
                              (declare (not safe))
                              (cons _opt287538_ _opts287504_))))
                       (declare (not safe))
                       (_lp287501_ _rest287537_ __tmp293241)))))
              (if (let () (declare (not safe)) (##pair? _rest287505287525_))
                  (let ((_tl287521287581_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287505287525_)))
                        (_hd287520287579_
                         (let ()
                           (declare (not safe))
                           (##car _rest287505287525_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287520287579_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287521287581_))
                            (let* ((_tl287523287584_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287521287581_)))
                                   (_rest287587_ _tl287523287584_))
                              (declare (not safe))
                              (_K287519287576_ _rest287587_))
                            (let ((_opt287548_ _hd287520287579_)
                                  (_rest287550_ _tl287521287581_))
                              (let ()
                                (declare (not safe))
                                (_K287511287540_ _rest287550_ _opt287548_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287520287579_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287521287581_))
                                (let* ((_tl287518287566_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287521287581_)))
                                       (_rest287569_ _tl287518287566_))
                                  (declare (not safe))
                                  (_K287514287558_ _rest287569_))
                                (let ((_opt287548_ _hd287520287579_)
                                      (_rest287550_ _tl287521287581_))
                                  (let ()
                                    (declare (not safe))
                                    (_K287511287540_
                                     _rest287550_
                                     _opt287548_))))
                            (let ((_opt287548_ _hd287520287579_)
                                  (_rest287550_ _tl287521287581_))
                              (let ()
                                (declare (not safe))
                                (_K287511287540_ _rest287550_ _opt287548_))))))
                  (let () (declare (not safe)) (_else287509287533_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?287593_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?287593_))))
    (define gxc#gsc-link-options
      (lambda _g293243_
        (let ((_g293242_ (let () (declare (not safe)) (##length _g293243_))))
          (cond ((let () (declare (not safe)) (##fx= _g293242_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g293243_))
                ((let () (declare (not safe)) (##fx= _g293242_ 1))
                 (apply (lambda (_phi?287595_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?287595_)))
                        _g293243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g293243_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?287400_)
        (let _lp287402_ ((_rest287404_ (gxc#current-compile-gsc-options))
                         (_opts287405_ '()))
          (let* ((_rest287406287426_ _rest287404_)
                 (_else287410287434_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287400_))
                             (gxc#current-compile-debug))
                        (let ((__tmp293244
                               (let ((__tmp293245 (reverse _opts287405_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp293245))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp293244))
                        (reverse _opts287405_)))))
            (let ((_K287420287473_
                   (lambda (_rest287470_ _opt287471_)
                     (let ((__tmp293246
                            (let ((__tmp293247
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts287405_))))
                              (declare (not safe))
                              (cons _opt287471_ __tmp293247))))
                       (declare (not safe))
                       (_lp287402_ _rest287470_ __tmp293246))))
                  (_K287415287454_
                   (lambda (_rest287452_)
                     (let ()
                       (declare (not safe))
                       (_lp287402_ _rest287452_ _opts287405_))))
                  (_K287412287440_
                   (lambda (_rest287438_)
                     (let ()
                       (declare (not safe))
                       (_lp287402_ _rest287438_ _opts287405_)))))
              (if (let () (declare (not safe)) (##pair? _rest287406287426_))
                  (let ((_tl287422287478_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287406287426_)))
                        (_hd287421287476_
                         (let ()
                           (declare (not safe))
                           (##car _rest287406287426_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287421287476_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287422287478_))
                            (let ((_tl287424287483_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl287422287478_)))
                                  (_hd287423287481_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl287422287478_))))
                              (let ((_opt287486_ _hd287423287481_)
                                    (_rest287488_ _tl287424287483_))
                                (let ()
                                  (declare (not safe))
                                  (_K287420287473_ _rest287488_ _opt287486_))))
                            (let ((_rest287446_ _tl287422287478_))
                              (declare (not safe))
                              (_K287412287440_ _rest287446_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287421287476_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287422287478_))
                                (let* ((_tl287419287462_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287422287478_)))
                                       (_rest287465_ _tl287419287462_))
                                  (declare (not safe))
                                  (_K287415287454_ _rest287465_))
                                (let ((_rest287446_ _tl287422287478_))
                                  (declare (not safe))
                                  (_K287412287440_ _rest287446_)))
                            (let ((_rest287446_ _tl287422287478_))
                              (declare (not safe))
                              (_K287412287440_ _rest287446_)))))
                  (let () (declare (not safe)) (_else287410287434_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?287494_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?287494_))))
    (define gxc#gsc-cc-options
      (lambda _g293249_
        (let ((_g293248_ (let () (declare (not safe)) (##length _g293249_))))
          (cond ((let () (declare (not safe)) (##fx= _g293248_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g293249_))
                ((let () (declare (not safe)) (##fx= _g293248_ 1))
                 (apply (lambda (_phi?287496_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?287496_)))
                        _g293249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g293249_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir287395_)
        (let* ((_user-staticdir287397_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp293250
                (let ((__tmp293251
                       (string-append
                        '"-I "
                        _staticdir287395_
                        '" -I "
                        _user-staticdir287397_)))
                  (declare (not safe))
                  (cons __tmp293251 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp293250))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp287307_ ((_rest287309_ (gxc#current-compile-gsc-options))
                         (_opts287310_ '()))
          (let* ((_rest287311287331_ _rest287309_)
                 (_else287315287339_ (lambda () _opts287310_)))
            (let ((_K287325287382_
                   (lambda (_rest287380_)
                     (let ()
                       (declare (not safe))
                       (_lp287307_ _rest287380_ _opts287310_))))
                  (_K287320287360_
                   (lambda (_rest287357_ _opt287358_)
                     (let ((__tmp293252
                            (append _opts287310_
                                    (let ((__tmp293253
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt287358_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp293253)))))
                       (declare (not safe))
                       (_lp287307_ _rest287357_ __tmp293252))))
                  (_K287317287345_
                   (lambda (_rest287343_)
                     (let ()
                       (declare (not safe))
                       (_lp287307_ _rest287343_ _opts287310_)))))
              (if (let () (declare (not safe)) (##pair? _rest287311287331_))
                  (let ((_tl287327287387_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287311287331_)))
                        (_hd287326287385_
                         (let ()
                           (declare (not safe))
                           (##car _rest287311287331_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287326287385_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287327287387_))
                            (let* ((_tl287329287390_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287327287387_)))
                                   (_rest287393_ _tl287329287390_))
                              (declare (not safe))
                              (_K287325287382_ _rest287393_))
                            (let ((_rest287351_ _tl287327287387_))
                              (declare (not safe))
                              (_K287317287345_ _rest287351_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287326287385_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287327287387_))
                                (let ((_tl287324287370_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl287327287387_)))
                                      (_hd287323287368_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl287327287387_))))
                                  (let ((_opt287373_ _hd287323287368_)
                                        (_rest287375_ _tl287324287370_))
                                    (let ()
                                      (declare (not safe))
                                      (_K287320287360_
                                       _rest287375_
                                       _opt287373_))))
                                (let ((_rest287351_ _tl287327287387_))
                                  (declare (not safe))
                                  (_K287317287345_ _rest287351_)))
                            (let ((_rest287351_ _tl287327287387_))
                              (declare (not safe))
                              (_K287317287345_ _rest287351_)))))
                  (let () (declare (not safe)) (_else287315287339_))))))))
    (define gxc#not-string-empty?
      (lambda (_str287304_)
        (let ((__tmp293254
               (let () (declare (not safe)) (string-empty? _str287304_))))
          (declare (not safe))
          (not __tmp293254))))
    (define gxc#gsc-compile-file
      (lambda (_path287272_ _phi?287273_)
        (letrec ((_gsc-link-path287275_
                  (lambda (_base-path287296_)
                    (let _lp287298_ ((_n287300_ '1))
                      (let ((_path287302_
                             (string-append
                              _base-path287296_
                              '".o"
                              (number->string _n287300_))))
                        (if (file-exists? _path287302_)
                            (let ((__tmp293255
                                   (let ()
                                     (declare (not safe))
                                     (+ _n287300_ '1))))
                              (declare (not safe))
                              (_lp287298_ __tmp293255))
                            _path287302_))))))
          (let* ((_base-path287277_ (path-strip-extension _path287272_))
                 (_path-c287279_ (string-append _base-path287277_ '".c"))
                 (_path-o287281_ (string-append _base-path287277_ '".o"))
                 (_link-path287283_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path287275_ _base-path287277_)))
                 (_link-path-c287285_ (string-append _link-path287283_ '".c"))
                 (_link-path-o287287_ (string-append _link-path287283_ '".o"))
                 (_gsc-link-opts287289_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?287273_)))
                 (_gsc-cc-opts287291_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?287273_)))
                 (_gcc-ld-opts287293_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp293262 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp293256
                   (let ((__tmp293257
                          (let ((__tmp293258
                                 (let ((__tmp293259
                                        (let ((__tmp293260
                                               (let ((__tmp293261
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path287272_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp293261
                                                         _gsc-link-opts287289_))))
                                          (declare (not safe))
                                          (cons _link-path-c287285_
                                                __tmp293260))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp293259))))
                            (declare (not safe))
                            (cons '"-flat" __tmp293258))))
                     (declare (not safe))
                     (cons '"-link" __tmp293257))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp293262 __tmp293256))
            (let ((__tmp293269 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp293263
                   (let ((__tmp293264
                          (let ((__tmp293265
                                 (let ((__tmp293266
                                        (let ((__tmp293267
                                               (let ((__tmp293268
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c287285_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c287279_
                                                       __tmp293268))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp293267
                                                  _gsc-cc-opts287291_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp293266))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp293265))))
                     (declare (not safe))
                     (cons '"-obj" __tmp293264))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp293269 __tmp293263))
            (let ((__tmp293275 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp293270
                   (let ((__tmp293271
                          (let ((__tmp293272
                                 (let ((__tmp293273
                                        (let ((__tmp293274
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o287287_
                                                       _gcc-ld-opts287293_))))
                                          (declare (not safe))
                                          (cons _path-o287281_ __tmp293274))))
                                   (declare (not safe))
                                   (cons _link-path287283_ __tmp293273))))
                            (declare (not safe))
                            (cons '"-o" __tmp293272))))
                     (declare (not safe))
                     (cons '"-shared" __tmp293271))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp293275
               __tmp293270))
            (for-each
             delete-file
             (let ((__tmp293276
                    (let ((__tmp293277
                           (let ((__tmp293278
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o287287_ '()))))
                             (declare (not safe))
                             (cons _link-path-c287285_ __tmp293278))))
                      (declare (not safe))
                      (cons _path-o287281_ __tmp293277))))
               (declare (not safe))
               (cons _path-c287279_ __tmp293276)))))))
    (define gxc#compile-output-file
      (lambda (_ctx287243_ _n287244_ _ext287245_)
        (letrec ((_module-relative-path287247_
                  (lambda (_ctx287270_)
                    (path-strip-directory
                     (let ((__tmp293279
                            (##structure-ref
                             _ctx287270_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp293279)))))
                 (_module-source-directory287248_
                  (lambda (_ctx287266_)
                    (path-directory
                     (let ((_mpath287268_
                            (##structure-ref
                             _ctx287266_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath287268_))
                           _mpath287268_
                           (let ()
                             (declare (not safe))
                             (last _mpath287268_)))))))
                 (_section-string287249_
                  (lambda (_n287264_)
                    (if (let () (declare (not safe)) (number? _n287264_))
                        (number->string _n287264_)
                        (if (let () (declare (not safe)) (symbol? _n287264_))
                            (symbol->string _n287264_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n287264_))
                                _n287264_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n287264_)))))))
                 (_file-name287250_
                  (lambda (_path287262_)
                    (if _n287244_
                        (string-append
                         _path287262_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string287249_ _n287244_))
                         _ext287245_)
                        (string-append _path287262_ _ext287245_))))
                 (_file-path287251_
                  (lambda ()
                    (let ((_$e287257_ (gxc#current-compile-output-dir)))
                      (if _$e287257_
                          ((lambda (_outdir287260_)
                             (path-expand
                              (let ((__tmp293281
                                     (let ((__tmp293282
                                            (##structure-ref
                                             _ctx287243_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp293282))))
                                (declare (not safe))
                                (_file-name287250_ __tmp293281))
                              _outdir287260_))
                           _$e287257_)
                          (path-expand
                           (let ((__tmp293280
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path287247_
                                     _ctx287243_))))
                             (declare (not safe))
                             (_file-name287250_ __tmp293280))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory287248_
                              _ctx287243_))))))))
          (let ((_path287253_
                 (let () (declare (not safe)) (_file-path287251_))))
            (let ((__tmp293283
                   (lambda ()
                     (let ((__tmp293284 (path-directory _path287253_)))
                       (declare (not safe))
                       (create-directory* __tmp293284)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp293283))
            _path287253_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx287225_)
        (letrec ((_file-name287227_
                  (lambda (_id287241_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id287241_))
                     '".scm")))
                 (_file-path287228_
                  (lambda ()
                    (let* ((_file287234_
                            (let ((__tmp293285
                                   (##structure-ref
                                    _ctx287225_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name287227_ __tmp293285)))
                           (_$e287236_ (gxc#current-compile-output-dir)))
                      (if _$e287236_
                          ((lambda (_outdir287239_)
                             (path-expand
                              _file287234_
                              (path-expand '"static" _outdir287239_)))
                           _$e287236_)
                          (path-expand _file287234_ '"static"))))))
          (let ((_path287230_
                 (let () (declare (not safe)) (_file-path287228_))))
            (let ((__tmp293286
                   (lambda ()
                     (let ((__tmp293287 (path-directory _path287230_)))
                       (declare (not safe))
                       (create-directory* __tmp293287)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp293286))
            _path287230_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx287219_ _opts287220_)
        (let ((_$e287222_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts287220_))))
          (if _$e287222_
              (values _$e287222_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx287219_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr287212_)
        (if (let () (declare (not safe)) (string? _idstr287212_))
            (let* ((_str287214_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr287212_)))
                   (_strs287216_
                    (let ()
                      (declare (not safe))
                      (string-split _str287214_ '#\/))))
              (let () (declare (not safe)) (string-join _strs287216_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr287212_))
                (let ((__tmp293288 (symbol->string _idstr287212_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp293288))
                (error '"Bad module id" _idstr287212_)))))
    (define gxc#invoke__%
      (lambda (_g293289_
               _stdout-redirection287176287180_
               _stderr-redirection287177287182_
               _program287184_
               _args287185_)
        (let* ((_stdout-redirection287187_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection287176287180_ absent-value))
                    '#f
                    _stdout-redirection287176287180_))
               (_stderr-redirection287189_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection287177287182_ absent-value))
                    '#f
                    _stderr-redirection287177287182_)))
          (let ((__tmp293290
                 (let ()
                   (declare (not safe))
                   (cons _program287184_ _args287185_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp293290))
          (let ((_proc287191_
                 (open-process
                  (let ((__tmp293291
                         (let ((__tmp293292
                                (let ((__tmp293293
                                       (let ((__tmp293294
                                              (let ((__tmp293295
                                                     (let ((__tmp293296
                                                            (let ((__tmp293297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection287189_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp293297))))
               (declare (not safe))
               (cons _stdout-redirection287187_ __tmp293296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp293295))))
                                         (declare (not safe))
                                         (cons _args287185_ __tmp293294))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp293293))))
                           (declare (not safe))
                           (cons _program287184_ __tmp293292))))
                    (declare (not safe))
                    (cons 'path: __tmp293291)))))
            (if (or _stdout-redirection287187_ _stderr-redirection287189_)
                (read-line _proc287191_ '#f)
                '#!void)
            (let ((_status287196_ (process-status _proc287191_)))
              (close-port _proc287191_)
              (if (let () (declare (not safe)) (zero? _status287196_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program287184_))))))))
    (define gxc#invoke__@
      (lambda (_keys287175287201_ . _args287203_)
        (apply gxc#invoke__%
               _keys287175287201_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys287175287201_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys287175287201_
                  'stderr-redirection:
                  absent-value))
               _args287203_)))
    (define gxc#invoke
      (lambda _args287178287209_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args287178287209_)))
    (define gxc#join!
      (lambda (_thread287169_)
        (let ((__tmp293299
               (lambda (_exn287171_)
                 (if (uncaught-exception? _exn287171_)
                     (raise (uncaught-exception-reason _exn287171_))
                     (raise _exn287171_))))
              (__tmp293298 (lambda () (thread-join! _thread287169_))))
          (declare (not safe))
          (with-catch __tmp293299 __tmp293298))))))
