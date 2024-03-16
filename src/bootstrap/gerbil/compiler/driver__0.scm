(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710632273)
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
      (lambda (_path159974_ _fun159975_)
        (with-output-to-file
         (let ((__tmp160068
                (let ()
                  (declare (not safe))
                  (cons _path159974_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp160068))
         _fun159975_)))
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
      (lambda (_gerbil-libdir159969_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir159969_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
        "gerbil/runtime/mop-system-classes"
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
      (lambda (_dir159967_) (delete-file-or-directory _dir159967_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath159941_ _opts159942_)
        (if (let () (declare (not safe)) (string? _srcpath159941_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath159941_)))
        (let ((_outdir159944_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts159942_)))
              (_invoke-gsc?159945_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts159942_)))
              (_gsc-options159946_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts159942_)))
              (_keep-scm?159947_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts159942_)))
              (_verbosity159948_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts159942_)))
              (_optimize159949_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts159942_)))
              (_debug159950_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts159942_)))
              (_gen-ssxi159951_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts159942_))))
          (if _outdir159944_
              (let ((__tmp160069
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir159944_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160069))
              '#!void)
          (if _optimize159949_
              (let ((__tmp160070
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160070))
              '#!void)
          (let ((__tmp160074
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath159941_))
                   (let ((__tmp160075
                          (let ((__tmp160076
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath159941_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160076))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp160075))))
                (__tmp160073
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160071
                 (let ((__tmp160072
                        (let ()
                          (declare (not safe))
                          (cons _srcpath159941_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp160072))))
            (declare (not safe))
            (call-with-parameters
             __tmp160074
             gxc#current-compile-output-dir
             _outdir159944_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?159945_
             gxc#current-compile-gsc-options
             _gsc-options159946_
             gxc#current-compile-keep-scm
             _keep-scm?159947_
             gxc#current-compile-verbose
             _verbosity159948_
             gxc#current-compile-optimize
             _optimize159949_
             gxc#current-compile-debug
             _debug159950_
             gxc#current-compile-generate-ssxi
             _gen-ssxi159951_
             gxc#current-compile-timestamp
             __tmp160073
             gxc#current-compile-context
             __tmp160071
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath159960_)
        (let ((_opts159962_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath159960_ _opts159962_))))
    (define gxc#compile-module
      (lambda _g160078_
        (let ((_g160077_ (let () (declare (not safe)) (##length _g160078_))))
          (cond ((let () (declare (not safe)) (##fx= _g160077_ 1))
                 (apply (lambda (_srcpath159960_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath159960_)))
                        _g160078_))
                ((let () (declare (not safe)) (##fx= _g160077_ 2))
                 (apply (lambda (_srcpath159964_ _opts159965_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath159964_
                             _opts159965_)))
                        _g160078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g160078_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath159917_ _opts159918_)
        (if (let () (declare (not safe)) (string? _srcpath159917_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath159917_)))
        (let ((_outdir159920_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts159918_)))
              (_invoke-gsc?159921_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts159918_)))
              (_gsc-options159922_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts159918_)))
              (_keep-scm?159923_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts159918_)))
              (_verbosity159924_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts159918_)))
              (_debug159925_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts159918_))))
          (if _outdir159920_
              (let ((__tmp160079
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir159920_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160079))
              '#!void)
          (let ((__tmp160083
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath159917_))
                   (let ((__tmp160084
                          (let ((__tmp160085
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath159917_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160085))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp160084
                      _opts159918_))))
                (__tmp160082
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160080
                 (let ((__tmp160081
                        (let ()
                          (declare (not safe))
                          (cons _srcpath159917_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp160081))))
            (declare (not safe))
            (call-with-parameters
             __tmp160083
             gxc#current-compile-output-dir
             _outdir159920_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?159921_
             gxc#current-compile-gsc-options
             _gsc-options159922_
             gxc#current-compile-keep-scm
             _keep-scm?159923_
             gxc#current-compile-verbose
             _verbosity159924_
             gxc#current-compile-debug
             _debug159925_
             gxc#current-compile-timestamp
             __tmp160082
             gxc#current-compile-context
             __tmp160080
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath159933_)
        (let ((_opts159935_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath159933_ _opts159935_))))
    (define gxc#compile-exe
      (lambda _g160087_
        (let ((_g160086_ (let () (declare (not safe)) (##length _g160087_))))
          (cond ((let () (declare (not safe)) (##fx= _g160086_ 1))
                 (apply (lambda (_srcpath159933_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath159933_)))
                        _g160087_))
                ((let () (declare (not safe)) (##fx= _g160086_ 2))
                 (apply (lambda (_srcpath159937_ _opts159938_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath159937_ _opts159938_)))
                        _g160087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g160087_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx159913_ _opts159914_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts159914_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx159913_
               _opts159914_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx159913_
               _opts159914_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx159796_ _opts159797_)
        (letrec ((_generate-stub159799_
                  (lambda (_builtin-modules159909_)
                    (let ((_mod-main159911_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx159796_ 'main))))
                      (write (let ((__tmp160088
                                    (let ((__tmp160089
                                           (let ((__tmp160090
                                                  (let ((__tmp160091
                                                         (let ((__tmp160093
                                                                (let ((__tmp160094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules159909_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160094)))
                       (__tmp160092
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp160093 __tmp160092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp160091))))
                                             (declare (not safe))
                                             (cons __tmp160090 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp160089))))
                               (declare (not safe))
                               (cons 'define __tmp160088)))
                      (write (let ((__tmp160095
                                    (let ((__tmp160134
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160096
                                           (let ((__tmp160097
                                                  (let ((__tmp160098
                                                         (let ((__tmp160122
                                                                (let ((__tmp160123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160124
                                      (let ((__tmp160132
                                             (let ((__tmp160133
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp160133)))
                                            (__tmp160125
                                             (let ((__tmp160126
                                                    (let ((__tmp160127
                                                           (let ((__tmp160128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160129
                                 (let ((__tmp160130
                                        (let ((__tmp160131
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp160131 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp160130))))
                            (declare (not safe))
                            (cons __tmp160129 '()))))
                     (declare (not safe))
                     (cons _mod-main159911_ __tmp160128))))
              (declare (not safe))
              (cons 'apply __tmp160127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160126 '()))))
                                        (declare (not safe))
                                        (cons __tmp160132 __tmp160125))))
                                 (declare (not safe))
                                 (cons '() __tmp160124))))
                          (declare (not safe))
                          (cons 'lambda __tmp160123)))
                       (__tmp160099
                        (let ((__tmp160100
                               (let ((__tmp160101
                                      (let ((__tmp160102
                                             (let ((__tmp160113
                                                    (let ((__tmp160114
                                                           (let ((__tmp160115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160116
                                 (let ((__tmp160117
                                        (let ((__tmp160118
                                               (let ((__tmp160119
                                                      (let ((__tmp160120
                                                             (let ((__tmp160121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp160121 '()))))
                (declare (not safe))
                (cons 'force-output __tmp160120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp160119 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp160118))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp160117))))
                            (declare (not safe))
                            (cons __tmp160116 '()))))
                     (declare (not safe))
                     (cons 'void __tmp160115))))
              (declare (not safe))
              (cons 'with-catch __tmp160114)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp160103
                                                    (let ((__tmp160104
                                                           (let ((__tmp160105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160106
                                 (let ((__tmp160107
                                        (let ((__tmp160108
                                               (let ((__tmp160109
                                                      (let ((__tmp160110
                                                             (let ((__tmp160111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp160112
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp160112 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp160111))))
                (declare (not safe))
                (cons __tmp160110 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp160109))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp160108))))
                                   (declare (not safe))
                                   (cons __tmp160107 '()))))
                            (declare (not safe))
                            (cons 'void __tmp160106))))
                     (declare (not safe))
                     (cons 'with-catch __tmp160105))))
              (declare (not safe))
              (cons __tmp160104 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160113
                                                     __tmp160103))))
                                        (declare (not safe))
                                        (cons '() __tmp160102))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp160101))))
                          (declare (not safe))
                          (cons __tmp160100 '()))))
                   (declare (not safe))
                   (cons __tmp160122 __tmp160099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp160098))))
                                             (declare (not safe))
                                             (cons __tmp160097 '()))))
                                      (declare (not safe))
                                      (cons __tmp160134 __tmp160096))))
                               (declare (not safe))
                               (cons 'define __tmp160095)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts159800_
                  (lambda (_libgerbil159907_)
                    (call-with-input-file
                     (string-append _libgerbil159907_ '".ldd")
                     read)))
                 (_replace-extension159801_
                  (lambda (_path159904_ _ext159905_)
                    (string-append
                     (path-strip-extension _path159904_)
                     _ext159905_)))
                 (_not-exclude-module?159802_
                  (lambda (_ctx159900_)
                    (let ((_id-str159902_
                           (symbol->string
                            (##structure-ref
                             _ctx159900_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp160136
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str159902_))))
                            (declare (not safe))
                            (not __tmp160136))
                          (let ((__tmp160135
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str159902_))))
                            (declare (not safe))
                            (not __tmp160135))
                          '#f))))
                 (_not-file-empty?159803_
                  (lambda (_path159898_)
                    (let ((__tmp160137
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path159898_))))
                      (declare (not safe))
                      (not __tmp160137))))
                 (_compile-stub159804_
                  (lambda (_output-scm159811_ _output-bin159812_)
                    (let* ((_gerbil-home159814_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir159816_
                            (path-expand '"lib" _gerbil-home159814_))
                           (_gerbil-staticdir159818_
                            (path-expand '"static" _gerbil-libdir159816_))
                           (_gxlink159820_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir159816_))
                           (_tmp159822_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path159826_
                            (lambda (_f159824_)
                              (path-expand
                               (path-strip-directory _f159824_)
                               _tmp159822_)))
                           (_deps159828_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx159796_)))
                           (_deps159830_
                            (filter _not-exclude-module?159802_ _deps159828_))
                           (_src-deps-scm159832_
                            (map gxc#find-static-module-file _deps159830_))
                           (_src-deps-scm159834_
                            (filter _not-file-empty?159803_
                                    _src-deps-scm159832_))
                           (_src-deps-scm159836_
                            (map path-expand _src-deps-scm159834_))
                           (_deps-scm159838_
                            (map _tmp-path159826_ _src-deps-scm159836_))
                           (_deps-c159844_
                            (map (lambda (_g159839159841_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension159801_
                                      _g159839159841_
                                      '".c")))
                                 _deps-scm159838_))
                           (_deps-o159850_
                            (map (lambda (_g159845159847_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension159801_
                                      _g159845159847_
                                      '".o")))
                                 _deps-scm159838_))
                           (_src-bin-scm159852_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx159796_)))
                           (_src-bin-scm159854_
                            (path-expand _src-bin-scm159852_))
                           (_bin-scm159856_
                            (let ()
                              (declare (not safe))
                              (_tmp-path159826_ _src-bin-scm159854_)))
                           (_bin-c159858_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159801_
                               _bin-scm159856_
                               '".c")))
                           (_bin-o159860_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159801_
                               _bin-scm159856_
                               '".o")))
                           (_output-bin159862_
                            (path-expand _output-bin159812_))
                           (_output-scm159864_
                            (path-expand _output-scm159811_))
                           (_output-c159866_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159801_
                               _output-scm159864_
                               '".c")))
                           (_output-o159868_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159801_
                               _output-scm159864_
                               '".o")))
                           (_output_-c159870_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159801_
                               _output-scm159864_
                               '"_.c")))
                           (_output_-o159872_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159801_
                               _output-scm159864_
                               '"_.o")))
                           (_gsc-link-opts159874_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts159876_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts159878_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir159818_)))
                           (_output-ld-opts159880_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a159882_
                            (path-expand '"libgerbil.a" _gerbil-libdir159816_))
                           (_libgerbil.so159884_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir159816_))
                           (_libgerbil-ld-opts159886_
                            (if (file-exists? _libgerbil.so159884_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts159800_
                                   _libgerbil.so159884_))
                                (if (file-exists? _libgerbil.a159882_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts159800_
                                       _libgerbil.a159882_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a159882_
                                       _libgerbil.so159884_)))))
                           (_rpath159888_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir159816_)))
                           (_builtin-modules159892_
                            (map (lambda (_mod159890_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod159890_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx159796_ _deps159830_)))))
                      (let ((__tmp160138
                             (lambda ()
                               (let ((__tmp160139
                                      (path-directory _output-bin159862_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160139)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160138))
                      (let ((__tmp160140
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub159799_
                                  _builtin-modules159892_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm159864_
                         __tmp160140))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160141
                                   (lambda () (create-directory _tmp159822_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp160141))
                            (for-each
                             copy-file
                             _src-deps-scm159836_
                             _deps-scm159838_)
                            (copy-file _src-bin-scm159854_ _bin-scm159856_)
                            (let ((__tmp160149
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160142
                                   (let ((__tmp160143
                                          (let ((__tmp160144
                                                 (let ((__tmp160145
                                                        (let ((__tmp160146
                                                               (let ((__tmp160147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160148
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm159864_ '()))))
                                (declare (not safe))
                                (cons _bin-scm159856_ __tmp160148))))
                         (declare (not safe))
                         (foldr1 cons __tmp160147 _deps-scm159838_))))
                  (declare (not safe))
                  (foldr1 cons __tmp160146 _gsc-link-opts159874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink159820_
                                                         __tmp160145))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp160144))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160143))))
                              (declare (not safe))
                              (gxc#invoke __tmp160149 __tmp160142))
                            (let ((__tmp160157
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160150
                                   (let ((__tmp160151
                                          (let ((__tmp160152
                                                 (let ((__tmp160153
                                                        (let ((__tmp160154
                                                               (let ((__tmp160155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160156
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c159870_ '()))))
                                (declare (not safe))
                                (cons _output-c159866_ __tmp160156))))
                         (declare (not safe))
                         (cons _bin-c159858_ __tmp160155))))
                  (declare (not safe))
                  (foldr1 cons __tmp160154 _deps-c159844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160153
                                                           _gsc-static-opts159878_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160152
                                                    _gsc-cc-opts159876_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160151))))
                              (declare (not safe))
                              (gxc#invoke __tmp160157 __tmp160150))
                            (let ((__tmp160170
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160158
                                   (let ((__tmp160159
                                          (let ((__tmp160160
                                                 (let ((__tmp160161
                                                        (let ((__tmp160162
                                                               (let ((__tmp160163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160164
                                     (let ((__tmp160165
                                            (let ((__tmp160166
                                                   (let ((__tmp160167
                                                          (let ((__tmp160168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp160169
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts159886_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp160169))))
                    (declare (not safe))
                    (cons _gerbil-libdir159816_ __tmp160168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp160167))))
                                              (declare (not safe))
                                              (cons _rpath159888_
                                                    __tmp160166))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp160165
                                               _output-ld-opts159880_))))
                                (declare (not safe))
                                (cons _output_-o159872_ __tmp160164))))
                         (declare (not safe))
                         (cons _output-o159868_ __tmp160163))))
                  (declare (not safe))
                  (cons _bin-o159860_ __tmp160162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160161
                                                           _deps-o159850_))))
                                            (declare (not safe))
                                            (cons _output-bin159862_
                                                  __tmp160160))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160159))))
                              (declare (not safe))
                              (gxc#invoke __tmp160170 __tmp160158))
                            (for-each
                             delete-file
                             (let ((__tmp160171
                                    (let ((__tmp160172
                                           (let ((__tmp160173
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o159872_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o159868_
                                                   __tmp160173))))
                                      (declare (not safe))
                                      (cons _output_-c159870_ __tmp160172))))
                               (declare (not safe))
                               (cons _output-c159866_ __tmp160171)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp159822_)))
                          '#!void)))))
          (let* ((_output-bin159806_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx159796_ _opts159797_)))
                 (_output-scm159808_
                  (string-append _output-bin159806_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub159804_ _output-scm159808_ _output-bin159806_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm159808_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx159621_ _opts159622_)
        (letrec ((_reset-declare159624_
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
                 (_generate-stub159625_
                  (lambda (_deps159787_)
                    (let ((_mod-main159789_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx159621_ 'main)))
                          (_reset-decl159790_
                           (let ()
                             (declare (not safe))
                             (_reset-declare159624_)))
                          (_user-decl159791_
                           (let ()
                             (declare (not safe))
                             (_user-declare159626_))))
                      (for-each
                       (lambda (_dep159793_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl159790_)
                         (newline)
                         (if _user-decl159791_
                             (begin (write _user-decl159791_) (newline))
                             '#!void)
                         (write (let ((__tmp160174
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep159793_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp160174)))
                         (newline))
                       _deps159787_)
                      (write (let ((__tmp160175
                                    (let ((__tmp160188
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160176
                                           (let ((__tmp160184
                                                  (let ((__tmp160185
                                                         (let ((__tmp160186
                                                                (let ((__tmp160187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160187))))
                   (declare (not safe))
                   (cons __tmp160186 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp160185)))
                                                 (__tmp160177
                                                  (let ((__tmp160178
                                                         (let ((__tmp160179
                                                                (let ((__tmp160180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160181
                                      (let ((__tmp160182
                                             (let ((__tmp160183
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp160183 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp160182))))
                                 (declare (not safe))
                                 (cons __tmp160181 '()))))
                          (declare (not safe))
                          (cons _mod-main159789_ __tmp160180))))
                   (declare (not safe))
                   (cons 'apply __tmp160179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160178 '()))))
                                             (declare (not safe))
                                             (cons __tmp160184 __tmp160177))))
                                      (declare (not safe))
                                      (cons __tmp160188 __tmp160176))))
                               (declare (not safe))
                               (cons 'define __tmp160175)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare159626_
                  (lambda ()
                    (let* ((_gsc-opts159692_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts159622_)))
                           (_gsc-prelude159694_
                            (if _gsc-opts159692_
                                (member '"-prelude" _gsc-opts159692_)
                                '#f))
                           (_gsc-prelude159696_
                            (if _gsc-prelude159694_
                                (read (open-input-string
                                       (cadr _gsc-prelude159694_)))
                                '#f)))
                      (let _lp159699_ ((_rest159701_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude159696_ '())))
                                       (_user-decls159702_ '()))
                        (let* ((_rest159703159711_ _rest159701_)
                               (_else159705159719_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls159702_))
                                      '#f
                                      (let ((__tmp160189
                                             (reverse _user-decls159702_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp160189)))))
                               (_K159707159775_
                                (lambda (_rest159722_ _expr159723_)
                                  (let* ((_expr159724159736_ _expr159723_)
                                         (_else159727159744_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp159699_
                                               _rest159722_
                                               _user-decls159702_)))))
                                    (let ((_K159732159765_
                                           (lambda (_decls159763_)
                                             (let ((__tmp160190
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls159702_
                                                              _decls159763_))))
                                               (declare (not safe))
                                               (_lp159699_
                                                _rest159722_
                                                __tmp160190))))
                                          (_K159729159750_
                                           (lambda (_exprs159748_)
                                             (let ((__tmp160191
                                                    (append _exprs159748_
                                                            _rest159722_)))
                                               (declare (not safe))
                                               (_lp159699_
                                                __tmp160191
                                                _user-decls159702_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr159724159736_))
                                          (let ((_tl159734159770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr159724159736_)))
                                                (_hd159733159768_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr159724159736_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd159733159768_
                                                         'declare))
                                                (let ((_decls159773_
                                                       _tl159734159770_))
                                                  (declare (not safe))
                                                  (_K159732159765_
                                                   _decls159773_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd159733159768_
                                                             'begin))
                                                    (let ((_exprs159758_
                                                           _tl159734159770_))
                                                      (declare (not safe))
                                                      (_K159729159750_
                                                       _exprs159758_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else159727159744_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else159727159744_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest159703159711_))
                              (let ((_hd159708159778_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest159703159711_)))
                                    (_tl159709159780_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest159703159711_))))
                                (let* ((_expr159783_ _hd159708159778_)
                                       (_rest159785_ _tl159709159780_))
                                  (declare (not safe))
                                  (_K159707159775_ _rest159785_ _expr159783_)))
                              (let ()
                                (declare (not safe))
                                (_else159705159719_))))))))
                 (_compile-stub159627_
                  (lambda (_output-scm159634_ _output-bin159635_)
                    (let* ((_gerbil-home159637_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir159639_
                            (path-expand '"lib" _gerbil-home159637_))
                           (_runtime159641_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp159643_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home159637_))
                           (_include-gambit-sharp159645_
                            (string-append
                             '"(include \""
                             _gambit-sharp159643_
                             '"\")"))
                           (_bin-scm159647_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx159621_)))
                           (_deps159649_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx159621_)))
                           (_deps159651_
                            (map gxc#find-static-module-file _deps159649_))
                           (_deps159656_
                            (filter (lambda (_$obj159653_)
                                      (let ((__tmp160192
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj159653_))))
                                        (declare (not safe))
                                        (not __tmp160192)))
                                    _deps159651_))
                           (_deps159660_
                            (filter (lambda (_f159658_)
                                      (let ((__tmp160193
                                             (member _f159658_
                                                     _runtime159641_)))
                                        (declare (not safe))
                                        (not __tmp160193)))
                                    _deps159656_))
                           (_output-base159662_
                            (string-append
                             (path-strip-extension _output-scm159634_)))
                           (_output-c159664_
                            (string-append _output-base159662_ '".c"))
                           (_output-o159666_
                            (string-append _output-base159662_ '".o"))
                           (_output-c_159668_
                            (string-append _output-base159662_ '"_.c"))
                           (_output-o_159670_
                            (string-append _output-base159662_ '"_.o"))
                           (_gsc-link-opts159672_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts159674_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts159676_
                            (let ((__tmp160194
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir159639_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp160194)))
                           (_output-ld-opts159678_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros159680_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp160196
                                       (let ((__tmp160197
                                              (let ((__tmp160198
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp159645_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp160198))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp160197))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160196))
                                (let ((__tmp160195
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp159645_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160195))))
                           (_gsc-link-opts159682_
                            (append _gsc-link-opts159672_
                                    _gsc-gx-macros159680_))
                           (_rpath159684_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir159639_)))
                           (_default-ld-options159686_
                            (let ((__tmp160199
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp160199))))
                      (let ((__tmp160200
                             (lambda ()
                               (let ((__tmp160201
                                      (path-directory _output-bin159635_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160201)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160200))
                      (let ((__tmp160202
                             (lambda ()
                               (let ((__tmp160203
                                      (let ((__tmp160204
                                             (let ((__tmp160205
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm159647_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp160205
                                                       _deps159660_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp160204
                                                _runtime159641_))))
                                 (declare (not safe))
                                 (_generate-stub159625_ __tmp160203)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm159634_
                         __tmp160202))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160211
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160206
                                   (let ((__tmp160207
                                          (let ((__tmp160208
                                                 (let ((__tmp160209
                                                        (let ((__tmp160210
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm159634_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp160210 _gsc-link-opts159682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_159668_
                                                         __tmp160209))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp160208))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160207))))
                              (declare (not safe))
                              (gxc#invoke __tmp160211 __tmp160206))
                            (let ((__tmp160217
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160212
                                   (let ((__tmp160213
                                          (let ((__tmp160214
                                                 (let ((__tmp160215
                                                        (let ((__tmp160216
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_159668_ '()))))
                  (declare (not safe))
                  (cons _output-c159664_ __tmp160216))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160215
                                                           _gsc-static-opts159676_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160214
                                                    _gsc-cc-opts159674_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160213))))
                              (declare (not safe))
                              (gxc#invoke __tmp160217 __tmp160212))
                            (let ((__tmp160227
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160218
                                   (let ((__tmp160219
                                          (let ((__tmp160220
                                                 (let ((__tmp160221
                                                        (let ((__tmp160222
                                                               (let ((__tmp160223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160224
                                     (let ((__tmp160225
                                            (let ((__tmp160226
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options159686_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir159639_
                                                    __tmp160226))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp160225))))
                                (declare (not safe))
                                (cons _rpath159684_ __tmp160224))))
                         (declare (not safe))
                         (foldr1 cons __tmp160223 _output-ld-opts159678_))))
                  (declare (not safe))
                  (cons _output-o_159670_ __tmp160222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o159666_
                                                         __tmp160221))))
                                            (declare (not safe))
                                            (cons _output-bin159635_
                                                  __tmp160220))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160219))))
                              (declare (not safe))
                              (gxc#invoke __tmp160227 __tmp160218)))
                          '#!void)))))
          (let* ((_output-bin159629_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx159621_ _opts159622_)))
                 (_output-scm159631_
                  (string-append _output-bin159629_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub159627_ _output-scm159631_ _output-bin159629_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm159631_))))))
    (define gxc#find-export-binding
      (lambda (_ctx159571_ _id159572_)
        (let ((_$e159618_
               (let ((__tmp160229
                      (lambda (_e159573159575_)
                        (let* ((_g159577159587_ _e159573159575_)
                               (_else159579159595_ (lambda () '#f))
                               (_K159581159599_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g159577159587_
                                 'gx#module-export::t))
                              (let* ((_e159582159602_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159577159587_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e159583159605_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159577159587_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e159584159608_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159577159587_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e159584159608_ '0))
                                    (let ((_e159585159611_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g159577159587_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g159613159615_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g159613159615_
                                                    _id159572_)))
                                           _e159585159611_)
                                          (let ()
                                            (declare (not safe))
                                            (_K159581159599_))
                                          (let ()
                                            (declare (not safe))
                                            (_else159579159595_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else159579159595_))))
                              (let ()
                                (declare (not safe))
                                (_else159579159595_))))))
                     (__tmp160228
                      (##structure-ref
                       _ctx159571_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp160229 __tmp160228))))
          (if _$e159618_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e159618_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx159563_ _id159564_)
        (let ((_$e159566_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx159563_ _id159564_))))
          (if _$e159566_
              ((lambda (_bind159569_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind159569_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id159564_)))
                 (##structure-ref _bind159569_ '1 gx#binding::t '#f))
               _$e159566_)
              (let ((__tmp160230
                     (##structure-ref
                      _ctx159563_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp160230
                 _id159564_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx159450_)
        (letrec* ((_ht159452_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template159453_
                   (lambda (_in159515_ _phi159516_)
                     (let ((_iphi159518_
                            (fx+ _phi159516_
                                 (##direct-structure-ref
                                  _in159515_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports159519_
                            (##structure-ref
                             (##direct-structure-ref
                              _in159515_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp159521_ ((_rest159523_ _imports159519_)
                                        (_r159524_ '()))
                         (let* ((_rest159525159533_ _rest159523_)
                                (_else159527159541_ (lambda () _r159524_))
                                (_K159529159551_
                                 (lambda (_rest159544_ _in159545_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in159545_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi159518_))
                                           (let ((__tmp160237
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in159545_
                                                          _r159524_))))
                                             (declare (not safe))
                                             (_lp159521_
                                              _rest159544_
                                              __tmp160237))
                                           (let ()
                                             (declare (not safe))
                                             (_lp159521_
                                              _rest159544_
                                              _r159524_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in159545_
                                              'gx#module-import::t))
                                           (let ((_iphi159547_
                                                  (fx+ _phi159516_
                                                       (##direct-structure-ref
                                                        _in159545_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi159547_))
                                                 (let ((__tmp160235
                                                        (let ((__tmp160236
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in159545_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp160236 _r159524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp159521_
                                                    _rest159544_
                                                    __tmp160235))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp159521_
                                                    _rest159544_
                                                    _r159524_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in159545_
                                                  'gx#import-set::t))
                                               (let ((_xphi159549_
                                                      (fx+ _iphi159518_
                                                           (##direct-structure-ref
                                                            _in159545_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi159549_))
                                                     (let ((__tmp160233
                                                            (let ((__tmp160234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in159545_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp160234 _r159524_))))
               (declare (not safe))
               (_lp159521_ _rest159544_ __tmp160233))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi159549_)
                                                         (let ((__tmp160231
                                                                (let ((__tmp160232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template159453_
                                  _in159545_
                                  _iphi159518_))))
                          (declare (not safe))
                          (foldl1 cons _r159524_ __tmp160232))))
                   (declare (not safe))
                   (_lp159521_ _rest159544_ __tmp160231))
                 (let ()
                   (declare (not safe))
                   (_lp159521_ _rest159544_ _r159524_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp159521_
                                                  _rest159544_
                                                  _r159524_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest159525159533_))
                               (let ((_hd159530159554_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest159525159533_)))
                                     (_tl159531159556_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest159525159533_))))
                                 (let* ((_in159559_ _hd159530159554_)
                                        (_rest159561_ _tl159531159556_))
                                   (declare (not safe))
                                   (_K159529159551_ _rest159561_ _in159559_)))
                               (let ()
                                 (declare (not safe))
                                 (_else159527159541_))))))))
                  (_find-deps159454_
                   (lambda (_rest159461_ _deps159462_)
                     (let* ((_rest159463159471_ _rest159461_)
                            (_else159465159479_ (lambda () _deps159462_))
                            (_K159467159503_
                             (lambda (_rest159482_ _hd159483_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd159483_
                                      'gx#module-context::t))
                                   (let ((_id159485_
                                          (##structure-ref
                                           _hd159483_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports159486_
                                          (##structure-ref
                                           _hd159483_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht159452_ _id159485_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps159454_
                                            _rest159482_
                                            _deps159462_))
                                         (let ((_$e159488_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd159483_))))
                                           (if _$e159488_
                                               ((lambda (_pre159491_)
                                                  (let ((_xdeps159493_
                                                         (let ((__tmp160250
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre159491_ _imports159486_))))
                   (declare (not safe))
                   (_find-deps159454_ __tmp160250 _deps159462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht159452_
                                                       _id159485_
                                                       _hd159483_))
                                                    (let ((__tmp160251
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd159483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps159493_))))
              (declare (not safe))
              (_find-deps159454_ _rest159482_ __tmp160251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e159488_)
                                               (let ((_xdeps159495_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps159454_
                                                         _imports159486_
                                                         _deps159462_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht159452_
                                                    _id159485_
                                                    _hd159483_))
                                                 (let ((__tmp160249
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd159483_
                                                                _xdeps159495_))))
                                                   (declare (not safe))
                                                   (_find-deps159454_
                                                    _rest159482_
                                                    __tmp160249)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd159483_
                                          'gx#prelude-context::t))
                                       (let ((_id159497_
                                              (##structure-ref
                                               _hd159483_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht159452_
                                                _id159497_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps159454_
                                                _rest159482_
                                                _deps159462_))
                                             (let ((_xdeps159499_
                                                    (let ((__tmp160247
                                                           (##structure-ref
                                                            _hd159483_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps159454_
                                                       __tmp160247
                                                       _deps159462_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht159452_
                                                      _id159497_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps159454_
                                                      _rest159482_
                                                      _xdeps159499_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht159452_
                                                        _id159497_
                                                        _hd159483_))
                                                     (let ((__tmp160248
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd159483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps159499_))))
               (declare (not safe))
               (_find-deps159454_ _rest159482_ __tmp160248)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd159483_
                                              'gx#module-import::t))
                                           (if (let ((__tmp160246
                                                      (##direct-structure-ref
                                                       _hd159483_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp160246))
                                               (let ((__tmp160244
                                                      (let ((__tmp160245
                                                             (##direct-structure-ref
                                                              _hd159483_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160245
                                                              _rest159482_))))
                                                 (declare (not safe))
                                                 (_find-deps159454_
                                                  __tmp160244
                                                  _deps159462_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps159454_
                                                  _rest159482_
                                                  _deps159462_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd159483_
                                                  'gx#module-export::t))
                                               (let ((__tmp160242
                                                      (let ((__tmp160243
                                                             (##direct-structure-ref
                                                              _hd159483_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160243
                                                              _rest159482_))))
                                                 (declare (not safe))
                                                 (_find-deps159454_
                                                  __tmp160242
                                                  _deps159462_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd159483_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp160241
                                                              (##direct-structure-ref
                                                               _hd159483_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp160241))
                                                       (let ((__tmp160239
                                                              (let ((__tmp160240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd159483_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp160240 _rest159482_))))
                 (declare (not safe))
                 (_find-deps159454_ __tmp160239 _deps159462_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd159483_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps159501_
                           (let ()
                             (declare (not safe))
                             (_import-set-template159453_ _hd159483_ '0)))
                          (__tmp160238
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest159482_ _xdeps159501_))))
                     (declare (not safe))
                     (_find-deps159454_ __tmp160238 _deps159462_))
                   (let ()
                     (declare (not safe))
                     (_find-deps159454_ _rest159482_ _deps159462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd159483_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest159463159471_))
                           (let ((_hd159468159506_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest159463159471_)))
                                 (_tl159469159508_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest159463159471_))))
                             (let* ((_hd159511_ _hd159468159506_)
                                    (_rest159513_ _tl159469159508_))
                               (declare (not safe))
                               (_K159467159503_ _rest159513_ _hd159511_)))
                           (let ()
                             (declare (not safe))
                             (_else159465159479_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp160252
                                  (let ((_$e159456_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx159450_))))
                                    (if _$e159456_
                                        ((lambda (_pre159459_)
                                           (let ((__tmp160253
                                                  (##structure-ref
                                                   _ctx159450_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre159459_ __tmp160253)))
                                         _$e159456_)
                                        (##structure-ref
                                         _ctx159450_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps159454_ __tmp160252 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx159381_)
        (let* ((_context-id159383_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx159381_
                       'gx#module-context::t))
                    (##structure-ref _ctx159381_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx159381_)))
               (_scm159385_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id159383_))
                 '".scm"))
               (_dirs159387_ (gx#current-expander-module-library-path))
               (_dirs159393_
                (let ((_user-libpath159389_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath159389_
                      (let ((_user-libpath159391_
                             (path-expand '"lib" _user-libpath159389_)))
                        (if (member _user-libpath159391_ _dirs159387_)
                            _dirs159387_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath159391_ _dirs159387_))))
                      _dirs159387_)))
               (_dirs159402_
                (let ((_$e159395_ (gxc#current-compile-output-dir)))
                  (if _$e159395_
                      ((lambda (_g159397159399_)
                         (let ()
                           (declare (not safe))
                           (cons _g159397159399_ _dirs159393_)))
                       _$e159395_)
                      _dirs159393_)))
               (_dirs159408_
                (map (lambda (_g159403159405_)
                       (path-expand '"static" _g159403159405_))
                     _dirs159402_)))
          (let _lp159411_ ((_rest159413_ _dirs159408_))
            (let* ((_rest159414159422_ _rest159413_)
                   (_else159416159430_
                    (lambda ()
                      (let ((__tmp160254
                             (##structure-ref
                              _ctx159381_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp160254
                         _scm159385_))))
                   (_K159418159438_
                    (lambda (_rest159433_ _dir159434_)
                      (let ((_path159436_
                             (path-expand _scm159385_ _dir159434_)))
                        (if (file-exists? _path159436_)
                            _path159436_
                            (let ()
                              (declare (not safe))
                              (_lp159411_ _rest159433_)))))))
              (if (let () (declare (not safe)) (##pair? _rest159414159422_))
                  (let ((_hd159419159441_
                         (let ()
                           (declare (not safe))
                           (##car _rest159414159422_)))
                        (_tl159420159443_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159414159422_))))
                    (let* ((_dir159446_ _hd159419159441_)
                           (_rest159448_ _tl159420159443_))
                      (declare (not safe))
                      (_K159418159438_ _rest159448_ _dir159446_)))
                  (let () (declare (not safe)) (_else159416159430_))))))))
    (define gxc#file-empty?
      (lambda (_path159379_)
        (let ((__tmp160255 (file-info-size (file-info _path159379_ '#t))))
          (declare (not safe))
          (zero? __tmp160255))))
    (define gxc#compile-top-module
      (lambda (_ctx159368_)
        (let ((__tmp160259
               (lambda ()
                 (let ((__tmp160260
                        (##structure-ref
                         _ctx159368_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp160260))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp160261
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx159368_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp160261))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx159368_))
                 (if (let ((__tmp160264
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx159368_))))
                       (declare (not safe))
                       (null? __tmp160264))
                     (let* ((_thr1159373_
                             (let ((__tmp160262
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx159368_)))))
                               (declare (not safe))
                               (spawn __tmp160262)))
                            (_thr2159376_
                             (let ((__tmp160263
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx159368_)))))
                               (declare (not safe))
                               (spawn __tmp160263))))
                       (let () (declare (not safe)) (gxc#join! _thr1159373_))
                       (let () (declare (not safe)) (gxc#join! _thr2159376_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx159368_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx159368_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx159368_))
                     '#!void)))
              (__tmp160258
               (let ((__obj160066
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj160066)
                 __obj160066))
              (__tmp160257 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp160256 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp160259
           gx#current-expander-context
           _ctx159368_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp160258
           gxc#current-compile-runtime-sections
           __tmp160257
           gxc#current-compile-runtime-names
           __tmp160256))))
    (define gxc#collect-bindings
      (lambda (_ctx159366_)
        (let ((__tmp160265
               (##structure-ref _ctx159366_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp160265))))
    (define gxc#compile-runtime-code
      (lambda (_ctx159312_)
        (letrec ((_compile1159314_
                  (lambda (_ctx159355_)
                    (let* ((_code159357_
                            (##structure-ref
                             _ctx159355_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt159361_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code159357_))
                                (let ((_idstr159359_
                                       (let ((__tmp160266
                                              (##structure-ref
                                               _ctx159355_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp160266))))
                                  (string-append _idstr159359_ '"__0"))
                                '#f)))
                      (if _rt159361_
                          (begin
                            (let ((__tmp160267
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp160267 _ctx159355_ _rt159361_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code159316_
                               _ctx159355_
                               _code159357_)))
                          (let ((_path159364_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx159355_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path159364_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code159317_
                         _ctx159355_
                         _code159357_
                         _rt159361_)))))
                 (_context-timestamp159315_
                  (lambda (_ctx159353_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx159353_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code159316_
                  (lambda (_ctx159335_ _code159336_)
                    (let* ((_lifts159338_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code159341_
                            (let ((__tmp160270
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code159336_))))
                                  (__tmp160269
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp160268
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160270
                               gx#current-expander-context
                               _ctx159335_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts159338_
                               gxc#current-compile-marks
                               __tmp160269
                               gxc#current-compile-identifiers
                               __tmp160268)))
                           (_runtime-code159343_
                            (if (let ((__tmp160274 (unbox _lifts159338_)))
                                  (declare (not safe))
                                  (null? __tmp160274))
                                _runtime-code159341_
                                (let ((__tmp160271
                                       (let ((__tmp160273
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code159341_
                                                      '())))
                                             (__tmp160272
                                              (reverse (unbox _lifts159338_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp160273
                                                 __tmp160272))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160271))))
                           (_runtime-code159345_
                            (let ((__tmp160275
                                   (let ((__tmp160277
                                          (let ((__tmp160278
                                                 (let ((__tmp160281
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp159315_
                                                           _ctx159335_)))
                                                       (__tmp160279
                                                        (let ((__tmp160280
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp160280
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp160281
                                                         __tmp160279))))
                                            (declare (not safe))
                                            (cons 'define __tmp160278)))
                                         (__tmp160276
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code159343_ '()))))
                                     (declare (not safe))
                                     (cons __tmp160277 __tmp160276))))
                              (declare (not safe))
                              (cons 'begin __tmp160275)))
                           (_scm0159347_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159335_
                               '0
                               '".scm"))))
                      (let ((_scms159350_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx159335_))))
                        (let ((__tmp160282
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0159347_
                                    _runtime-code159345_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp160282
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms159350_)
                            (delete-file _scms159350_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0159347_
                           '" => "
                           _scms159350_))
                        (copy-file _scm0159347_ _scms159350_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0159347_))))))
                 (_generate-loader-code159317_
                  (lambda (_ctx159324_ _code159325_ _rt159326_)
                    (let* ((_loader-code159329_
                            (let ((__tmp160283
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code159325_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160283
                               gx#current-expander-context
                               _ctx159324_)))
                           (_loader-code159331_
                            (if _rt159326_
                                (let ((__tmp160284
                                       (let ((__tmp160285
                                              (let ((__tmp160286
                                                     (let ((__tmp160287
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt159326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp160287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160286 '()))))
                                         (declare (not safe))
                                         (cons _loader-code159329_
                                               __tmp160285))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160284))
                                _loader-code159329_)))
                      (let ((__tmp160288
                             (lambda ()
                               (let ((__tmp160289
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159324_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp160289
                                  _loader-code159331_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp160288
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules159319_
                 (let ((__tmp160290
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx159312_))))
                   (declare (not safe))
                   (cons _ctx159312_ __tmp160290))))
            (for-each
             (lambda (_ctx159321_)
               (let ((__tmp160291
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1159314_ _ctx159321_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp160291
                  gxc#current-compile-decls
                  '())))
             _all-modules159319_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx159209_)
        (letrec ((_compile-ssi159211_
                  (lambda (_code159282_)
                    (let* ((_path159284_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159209_
                               '#f
                               '".ssi")))
                           (_prelude159295_
                            (let* ((_super159286_
                                    (##structure-ref
                                     _ctx159209_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e159288_
                                    (##structure-ref
                                     _super159286_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e159288_
                                  ((lambda (_g159290159292_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g159290159292_)))
                                   _$e159288_)
                                  ':<root>)))
                           (_ns159297_
                            (##structure-ref
                             _ctx159209_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr159299_
                            (symbol->string
                             (##structure-ref
                              _ctx159209_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg159306_
                            (let ((_$e159301_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr159299_ '#\/))))
                              (if _$e159301_
                                  ((lambda (_x159304_)
                                     (string->symbol
                                      (substring _idstr159299_ '0 _x159304_)))
                                   _$e159301_)
                                  '#f)))
                           (_rt159308_
                            (let ((__tmp160292
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp160292 _ctx159209_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path159284_))
                      (let ((__tmp160293
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude159295_))
                               (if _pkg159306_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg159306_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns159297_))
                               (newline)
                               (pretty-print _code159282_)
                               (if _rt159308_
                                   (pretty-print
                                    (let ((__tmp160294
                                           (let ((__tmp160298
                                                  (let ((__tmp160299
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp160299)))
                                                 (__tmp160295
                                                  (let ((__tmp160296
                                                         (let ((__tmp160297
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt159308_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp160297))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160296 '()))))
                                             (declare (not safe))
                                             (cons __tmp160298 __tmp160295))))
                                      (declare (not safe))
                                      (cons '%#call __tmp160294)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path159284_
                         __tmp160293)))))
                 (_compile-phi159212_
                  (lambda (_part159222_)
                    (let* ((_part159223159236_ _part159222_)
                           (_E159225159240_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part159223159236_))))
                           (_K159226159251_
                            (lambda (_code159243_
                                     _n159244_
                                     _phi159245_
                                     _phi-ctx159246_)
                              (let* ((_code159249_
                                      (let ((__tmp160300
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code159243_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp160300
                                         gx#current-expander-context
                                         _phi-ctx159246_
                                         gx#current-expander-phi
                                         _phi159245_)))
                                     (__tmp160301
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159209_
                                         _n159244_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp160301
                                 _code159249_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part159223159236_))
                          (let ((_hd159227159254_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part159223159236_)))
                                (_tl159228159256_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part159223159236_))))
                            (let ((_phi-ctx159259_ _hd159227159254_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl159228159256_))
                                  (let ((_hd159229159261_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl159228159256_)))
                                        (_tl159230159263_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl159228159256_))))
                                    (let ((_phi159266_ _hd159229159261_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl159230159263_))
                                          (let ((_hd159231159268_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl159230159263_)))
                                                (_tl159232159270_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl159230159263_))))
                                            (let ((_n159273_ _hd159231159268_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl159232159270_))
                                                  (let ((_hd159233159275_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl159232159270_)))
                                                        (_tl159234159277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl159232159270_))))
                                                    (let ((_code159280_
                                                           _hd159233159275_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl159234159277_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K159226159251_
                                                             _code159280_
                                                             _n159273_
                                                             _phi159266_
                                                             _phi-ctx159259_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E159225159240_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E159225159240_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E159225159240_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E159225159240_)))))
                          (let () (declare (not safe)) (_E159225159240_)))))))
          (let ((_g160302_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx159209_))))
            (begin
              (let ((_g160303_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g160302_)
                           (##vector-length _g160302_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g160303_ 2)))
                    (error "Context expects 2 values" _g160303_)))
              (let ((_ssi-code159214_
                     (let () (declare (not safe)) (##vector-ref _g160302_ 0)))
                    (_phi-code159215_
                     (let () (declare (not safe)) (##vector-ref _g160302_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi159211_ _ssi-code159214_))
                  (let ((_threads159220_
                         (map (lambda (_code159217_)
                                (let ((__tmp160304
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi159212_
                                            _code159217_)))))
                                  (declare (not safe))
                                  (spawn __tmp160304)))
                              _phi-code159215_)))
                    (for-each gxc#join! _threads159220_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx159192_)
        (let* ((_path159194_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx159192_ '#f '".ssxi.ss")))
               (_code159196_
                (let ((__tmp160305
                       (##structure-ref
                        _ctx159192_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp160305)))
               (_idstr159198_
                (symbol->string
                 (##structure-ref _ctx159192_ '1 gx#expander-context::t '#f)))
               (_pkg159205_
                (let ((_$e159200_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr159198_ '#\/))))
                  (if _$e159200_
                      ((lambda (_x159203_)
                         (string->symbol
                          (substring _idstr159198_ '0 _x159203_)))
                       _$e159200_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path159194_))
          (let ((__tmp160306
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg159205_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg159205_))
                       '#!void)
                   (newline)
                   (pretty-print _code159196_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path159194_ __tmp160306)))))
    (define gxc#generate-meta-code
      (lambda (_ctx159185_)
        (let* ((_state159187_
                (let ((__obj160067
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj160067 _ctx159185_)
                  __obj160067))
               (_ssi-code159189_
                (let ((__tmp160307
                       (##structure-ref
                        _ctx159185_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp160307
                   'state:
                   _state159187_))))
          (values _ssi-code159189_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state159187_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx159178_)
        (let ((_lifts159180_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160310
                 (lambda ()
                   (let ((_code159183_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx159178_))))
                     (if (let ((__tmp160314 (unbox _lifts159180_)))
                           (declare (not safe))
                           (null? __tmp160314))
                         _code159183_
                         (let ((__tmp160311
                                (let ((__tmp160313
                                       (let ()
                                         (declare (not safe))
                                         (cons _code159183_ '())))
                                      (__tmp160312
                                       (reverse (unbox _lifts159180_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp160313 __tmp160312))))
                           (declare (not safe))
                           (cons 'begin __tmp160311))))))
                (__tmp160309
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp160308
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp160310
             gxc#current-compile-lift
             _lifts159180_
             gxc#current-compile-marks
             __tmp160309
             gxc#current-compile-identifiers
             __tmp160308)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx159174_)
        (let ((_modules159176_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160315
                 (##structure-ref _ctx159174_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp160315 'modules: _modules159176_))
          (reverse (unbox _modules159176_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path159157_ _code159158_ _phi?159159_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path159157_))
        (let ((__tmp160316
               (lambda ()
                 (pretty-print
                  (let ((__tmp160317
                         (let ((__tmp160324
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp160318
                                (let ((__tmp160323
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp160319
                                       (let ((__tmp160322
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp160320
                                              (let ((__tmp160321
                                                     (if _phi?159159_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp160321))))
                                         (declare (not safe))
                                         (cons __tmp160322 __tmp160320))))
                                  (declare (not safe))
                                  (cons __tmp160323 __tmp160319))))
                           (declare (not safe))
                           (cons __tmp160324 __tmp160318))))
                    (declare (not safe))
                    (cons 'declare __tmp160317)))
                 (pretty-print _code159158_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path159157_ __tmp160316))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path159157_ _phi?159159_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path159157_))))
    (define gxc#compile-scm-file__0
      (lambda (_path159165_ _code159166_)
        (let ((_phi?159168_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path159165_ _code159166_ _phi?159168_))))
    (define gxc#compile-scm-file
      (lambda _g160326_
        (let ((_g160325_ (let () (declare (not safe)) (##length _g160326_))))
          (cond ((let () (declare (not safe)) (##fx= _g160325_ 2))
                 (apply (lambda (_path159165_ _code159166_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path159165_
                             _code159166_)))
                        _g160326_))
                ((let () (declare (not safe)) (##fx= _g160325_ 3))
                 (apply (lambda (_path159170_ _code159171_ _phi?159172_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path159170_
                             _code159171_
                             _phi?159172_)))
                        _g160326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g160326_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?159058_)
        (let _lp159060_ ((_rest159062_ (gxc#current-compile-gsc-options))
                         (_opts159063_ '()))
          (let* ((_rest159064159084_ _rest159062_)
                 (_else159068159092_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?159058_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160327
                               (let ((__tmp160328 (reverse _opts159063_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp160328))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp160327))
                        (reverse _opts159063_)))))
            (let ((_K159078159135_
                   (lambda (_rest159133_)
                     (let ()
                       (declare (not safe))
                       (_lp159060_ _rest159133_ _opts159063_))))
                  (_K159073159117_
                   (lambda (_rest159115_)
                     (let ()
                       (declare (not safe))
                       (_lp159060_ _rest159115_ _opts159063_))))
                  (_K159070159099_
                   (lambda (_rest159096_ _opt159097_)
                     (let ((__tmp160329
                            (let ()
                              (declare (not safe))
                              (cons _opt159097_ _opts159063_))))
                       (declare (not safe))
                       (_lp159060_ _rest159096_ __tmp160329)))))
              (if (let () (declare (not safe)) (##pair? _rest159064159084_))
                  (let ((_tl159080159140_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159064159084_)))
                        (_hd159079159138_
                         (let ()
                           (declare (not safe))
                           (##car _rest159064159084_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159079159138_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159080159140_))
                            (let* ((_tl159082159143_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159080159140_)))
                                   (_rest159146_ _tl159082159143_))
                              (declare (not safe))
                              (_K159078159135_ _rest159146_))
                            (let ((_opt159107_ _hd159079159138_)
                                  (_rest159109_ _tl159080159140_))
                              (let ()
                                (declare (not safe))
                                (_K159070159099_ _rest159109_ _opt159107_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159079159138_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159080159140_))
                                (let* ((_tl159077159125_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159080159140_)))
                                       (_rest159128_ _tl159077159125_))
                                  (declare (not safe))
                                  (_K159073159117_ _rest159128_))
                                (let ((_opt159107_ _hd159079159138_)
                                      (_rest159109_ _tl159080159140_))
                                  (let ()
                                    (declare (not safe))
                                    (_K159070159099_
                                     _rest159109_
                                     _opt159107_))))
                            (let ((_opt159107_ _hd159079159138_)
                                  (_rest159109_ _tl159080159140_))
                              (let ()
                                (declare (not safe))
                                (_K159070159099_ _rest159109_ _opt159107_))))))
                  (let () (declare (not safe)) (_else159068159092_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?159152_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?159152_))))
    (define gxc#gsc-link-options
      (lambda _g160331_
        (let ((_g160330_ (let () (declare (not safe)) (##length _g160331_))))
          (cond ((let () (declare (not safe)) (##fx= _g160330_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g160331_))
                ((let () (declare (not safe)) (##fx= _g160330_ 1))
                 (apply (lambda (_phi?159154_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?159154_)))
                        _g160331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g160331_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?158959_)
        (let _lp158961_ ((_rest158963_ (gxc#current-compile-gsc-options))
                         (_opts158964_ '()))
          (let* ((_rest158965158985_ _rest158963_)
                 (_else158969158993_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?158959_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160332
                               (let ((__tmp160333 (reverse _opts158964_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp160333))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp160332))
                        (reverse _opts158964_)))))
            (let ((_K158979159032_
                   (lambda (_rest159029_ _opt159030_)
                     (let ((__tmp160334
                            (let ((__tmp160335
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts158964_))))
                              (declare (not safe))
                              (cons _opt159030_ __tmp160335))))
                       (declare (not safe))
                       (_lp158961_ _rest159029_ __tmp160334))))
                  (_K158974159013_
                   (lambda (_rest159011_)
                     (let ()
                       (declare (not safe))
                       (_lp158961_ _rest159011_ _opts158964_))))
                  (_K158971158999_
                   (lambda (_rest158997_)
                     (let ()
                       (declare (not safe))
                       (_lp158961_ _rest158997_ _opts158964_)))))
              (if (let () (declare (not safe)) (##pair? _rest158965158985_))
                  (let ((_tl158981159037_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158965158985_)))
                        (_hd158980159035_
                         (let ()
                           (declare (not safe))
                           (##car _rest158965158985_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158980159035_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158981159037_))
                            (let ((_tl158983159042_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl158981159037_)))
                                  (_hd158982159040_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl158981159037_))))
                              (let ((_opt159045_ _hd158982159040_)
                                    (_rest159047_ _tl158983159042_))
                                (let ()
                                  (declare (not safe))
                                  (_K158979159032_ _rest159047_ _opt159045_))))
                            (let ((_rest159005_ _tl158981159037_))
                              (declare (not safe))
                              (_K158971158999_ _rest159005_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158980159035_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158981159037_))
                                (let* ((_tl158978159021_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl158981159037_)))
                                       (_rest159024_ _tl158978159021_))
                                  (declare (not safe))
                                  (_K158974159013_ _rest159024_))
                                (let ((_rest159005_ _tl158981159037_))
                                  (declare (not safe))
                                  (_K158971158999_ _rest159005_)))
                            (let ((_rest159005_ _tl158981159037_))
                              (declare (not safe))
                              (_K158971158999_ _rest159005_)))))
                  (let () (declare (not safe)) (_else158969158993_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?159053_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?159053_))))
    (define gxc#gsc-cc-options
      (lambda _g160337_
        (let ((_g160336_ (let () (declare (not safe)) (##length _g160337_))))
          (cond ((let () (declare (not safe)) (##fx= _g160336_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g160337_))
                ((let () (declare (not safe)) (##fx= _g160336_ 1))
                 (apply (lambda (_phi?159055_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?159055_)))
                        _g160337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g160337_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir158954_)
        (let* ((_user-staticdir158956_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp160338
                (let ((__tmp160339
                       (string-append
                        '"-I "
                        _staticdir158954_
                        '" -I "
                        _user-staticdir158956_)))
                  (declare (not safe))
                  (cons __tmp160339 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp160338))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp158866_ ((_rest158868_ (gxc#current-compile-gsc-options))
                         (_opts158869_ '()))
          (let* ((_rest158870158890_ _rest158868_)
                 (_else158874158898_ (lambda () _opts158869_)))
            (let ((_K158884158941_
                   (lambda (_rest158939_)
                     (let ()
                       (declare (not safe))
                       (_lp158866_ _rest158939_ _opts158869_))))
                  (_K158879158919_
                   (lambda (_rest158916_ _opt158917_)
                     (let ((__tmp160340
                            (append _opts158869_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt158917_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp158866_ _rest158916_ __tmp160340))))
                  (_K158876158904_
                   (lambda (_rest158902_)
                     (let ()
                       (declare (not safe))
                       (_lp158866_ _rest158902_ _opts158869_)))))
              (if (let () (declare (not safe)) (##pair? _rest158870158890_))
                  (let ((_tl158886158946_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158870158890_)))
                        (_hd158885158944_
                         (let ()
                           (declare (not safe))
                           (##car _rest158870158890_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158885158944_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158886158946_))
                            (let* ((_tl158888158949_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl158886158946_)))
                                   (_rest158952_ _tl158888158949_))
                              (declare (not safe))
                              (_K158884158941_ _rest158952_))
                            (let ((_rest158910_ _tl158886158946_))
                              (declare (not safe))
                              (_K158876158904_ _rest158910_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158885158944_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158886158946_))
                                (let ((_tl158883158929_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl158886158946_)))
                                      (_hd158882158927_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl158886158946_))))
                                  (let ((_opt158932_ _hd158882158927_)
                                        (_rest158934_ _tl158883158929_))
                                    (let ()
                                      (declare (not safe))
                                      (_K158879158919_
                                       _rest158934_
                                       _opt158932_))))
                                (let ((_rest158910_ _tl158886158946_))
                                  (declare (not safe))
                                  (_K158876158904_ _rest158910_)))
                            (let ((_rest158910_ _tl158886158946_))
                              (declare (not safe))
                              (_K158876158904_ _rest158910_)))))
                  (let () (declare (not safe)) (_else158874158898_))))))))
    (define gxc#not-string-empty?
      (lambda (_str158863_)
        (let ((__tmp160341
               (let () (declare (not safe)) (string-empty? _str158863_))))
          (declare (not safe))
          (not __tmp160341))))
    (define gxc#gsc-compile-file
      (lambda (_path158831_ _phi?158832_)
        (letrec ((_gsc-link-path158834_
                  (lambda (_base-path158855_)
                    (let _lp158857_ ((_n158859_ '1))
                      (let ((_path158861_
                             (string-append
                              _base-path158855_
                              '".o"
                              (number->string _n158859_))))
                        (if (file-exists? _path158861_)
                            (let ((__tmp160342
                                   (let ()
                                     (declare (not safe))
                                     (+ _n158859_ '1))))
                              (declare (not safe))
                              (_lp158857_ __tmp160342))
                            _path158861_))))))
          (let* ((_base-path158836_ (path-strip-extension _path158831_))
                 (_path-c158838_ (string-append _base-path158836_ '".c"))
                 (_path-o158840_ (string-append _base-path158836_ '".o"))
                 (_link-path158842_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path158834_ _base-path158836_)))
                 (_link-path-c158844_ (string-append _link-path158842_ '".c"))
                 (_link-path-o158846_ (string-append _link-path158842_ '".o"))
                 (_gsc-link-opts158848_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?158832_)))
                 (_gsc-cc-opts158850_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?158832_)))
                 (_gcc-ld-opts158852_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp160349 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160343
                   (let ((__tmp160344
                          (let ((__tmp160345
                                 (let ((__tmp160346
                                        (let ((__tmp160347
                                               (let ((__tmp160348
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path158831_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp160348
                                                         _gsc-link-opts158848_))))
                                          (declare (not safe))
                                          (cons _link-path-c158844_
                                                __tmp160347))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp160346))))
                            (declare (not safe))
                            (cons '"-flat" __tmp160345))))
                     (declare (not safe))
                     (cons '"-link" __tmp160344))))
              (declare (not safe))
              (gxc#invoke __tmp160349 __tmp160343 'stdout-redirection: '#t))
            (let ((__tmp160356 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160350
                   (let ((__tmp160351
                          (let ((__tmp160352
                                 (let ((__tmp160353
                                        (let ((__tmp160354
                                               (let ((__tmp160355
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c158844_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c158838_
                                                       __tmp160355))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp160354
                                                  _gsc-cc-opts158850_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp160353))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp160352))))
                     (declare (not safe))
                     (cons '"-obj" __tmp160351))))
              (declare (not safe))
              (gxc#invoke __tmp160356 __tmp160350 'stdout-redirection: '#t))
            (let ((__tmp160362 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp160357
                   (let ((__tmp160358
                          (let ((__tmp160359
                                 (let ((__tmp160360
                                        (let ((__tmp160361
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o158846_
                                                       _gcc-ld-opts158852_))))
                                          (declare (not safe))
                                          (cons _path-o158840_ __tmp160361))))
                                   (declare (not safe))
                                   (cons _link-path158842_ __tmp160360))))
                            (declare (not safe))
                            (cons '"-o" __tmp160359))))
                     (declare (not safe))
                     (cons '"-shared" __tmp160358))))
              (declare (not safe))
              (gxc#invoke __tmp160362 __tmp160357))
            (for-each
             delete-file
             (let ((__tmp160363
                    (let ((__tmp160364
                           (let ((__tmp160365
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o158846_ '()))))
                             (declare (not safe))
                             (cons _link-path-c158844_ __tmp160365))))
                      (declare (not safe))
                      (cons _path-o158840_ __tmp160364))))
               (declare (not safe))
               (cons _path-c158838_ __tmp160363)))))))
    (define gxc#compile-output-file
      (lambda (_ctx158802_ _n158803_ _ext158804_)
        (letrec ((_module-relative-path158806_
                  (lambda (_ctx158829_)
                    (path-strip-directory
                     (let ((__tmp160366
                            (##structure-ref
                             _ctx158829_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp160366)))))
                 (_module-source-directory158807_
                  (lambda (_ctx158825_)
                    (path-directory
                     (let ((_mpath158827_
                            (##structure-ref
                             _ctx158825_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath158827_))
                           _mpath158827_
                           (last _mpath158827_))))))
                 (_section-string158808_
                  (lambda (_n158823_)
                    (if (let () (declare (not safe)) (number? _n158823_))
                        (number->string _n158823_)
                        (if (let () (declare (not safe)) (symbol? _n158823_))
                            (symbol->string _n158823_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n158823_))
                                _n158823_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n158823_)))))))
                 (_file-name158809_
                  (lambda (_path158821_)
                    (if _n158803_
                        (string-append
                         _path158821_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string158808_ _n158803_))
                         _ext158804_)
                        (string-append _path158821_ _ext158804_))))
                 (_file-path158810_
                  (lambda ()
                    (let ((_$e158816_ (gxc#current-compile-output-dir)))
                      (if _$e158816_
                          ((lambda (_outdir158819_)
                             (path-expand
                              (let ((__tmp160368
                                     (let ((__tmp160369
                                            (##structure-ref
                                             _ctx158802_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp160369))))
                                (declare (not safe))
                                (_file-name158809_ __tmp160368))
                              _outdir158819_))
                           _$e158816_)
                          (path-expand
                           (let ((__tmp160367
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path158806_
                                     _ctx158802_))))
                             (declare (not safe))
                             (_file-name158809_ __tmp160367))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory158807_
                              _ctx158802_))))))))
          (let ((_path158812_
                 (let () (declare (not safe)) (_file-path158810_))))
            (let ((__tmp160370
                   (lambda ()
                     (let ((__tmp160371 (path-directory _path158812_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160371)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160370))
            _path158812_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx158784_)
        (letrec ((_file-name158786_
                  (lambda (_id158800_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id158800_))
                     '".scm")))
                 (_file-path158787_
                  (lambda ()
                    (let* ((_file158793_
                            (let ((__tmp160372
                                   (##structure-ref
                                    _ctx158784_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name158786_ __tmp160372)))
                           (_$e158795_ (gxc#current-compile-output-dir)))
                      (if _$e158795_
                          ((lambda (_outdir158798_)
                             (path-expand
                              _file158793_
                              (path-expand '"static" _outdir158798_)))
                           _$e158795_)
                          (path-expand _file158793_ '"static"))))))
          (let ((_path158789_
                 (let () (declare (not safe)) (_file-path158787_))))
            (let ((__tmp160373
                   (lambda ()
                     (let ((__tmp160374 (path-directory _path158789_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160374)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160373))
            _path158789_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx158778_ _opts158779_)
        (let ((_$e158781_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts158779_))))
          (if _$e158781_
              (values _$e158781_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx158778_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr158771_)
        (if (let () (declare (not safe)) (string? _idstr158771_))
            (let* ((_str158773_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr158771_)))
                   (_strs158775_
                    (let ()
                      (declare (not safe))
                      (string-split _str158773_ '#\/))))
              (let () (declare (not safe)) (string-join _strs158775_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr158771_))
                (let ((__tmp160375 (symbol->string _idstr158771_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp160375))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr158771_))))))
    (define gxc#invoke__%
      (lambda (_g160376_
               _stdout-redirection158732158736_
               _stderr-redirection158733158738_
               _program158740_
               _args158741_)
        (let* ((_stdout-redirection158743_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection158732158736_ absent-value))
                    '#f
                    _stdout-redirection158732158736_))
               (_stderr-redirection158745_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection158733158738_ absent-value))
                    '#f
                    _stderr-redirection158733158738_)))
          (let ((__tmp160377
                 (let ()
                   (declare (not safe))
                   (cons _program158740_ _args158741_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp160377))
          (let* ((_proc158747_
                  (open-process
                   (let ((__tmp160378
                          (let ((__tmp160379
                                 (let ((__tmp160380
                                        (let ((__tmp160381
                                               (let ((__tmp160382
                                                      (let ((__tmp160383
                                                             (let ((__tmp160384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection158745_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp160384))))
                (declare (not safe))
                (cons _stdout-redirection158743_ __tmp160383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp160382))))
                                          (declare (not safe))
                                          (cons _args158741_ __tmp160381))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp160380))))
                            (declare (not safe))
                            (cons _program158740_ __tmp160379))))
                     (declare (not safe))
                     (cons 'path: __tmp160378))))
                 (_output158752_
                  (if (or _stdout-redirection158743_
                          _stderr-redirection158745_)
                      (read-line _proc158747_ '#f)
                      '#f)))
            (let ((_status158755_ (process-status _proc158747_)))
              (close-port _proc158747_)
              (if (let () (declare (not safe)) (zero? _status158755_))
                  '#!void
                  (begin
                    (display _output158752_)
                    (let ((__tmp160385
                           (let ()
                             (declare (not safe))
                             (cons _program158740_ _args158741_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp160385
                       _status158755_)))))))))
    (define gxc#invoke__@
      (lambda (_keys158731158760_ . _args158762_)
        (apply gxc#invoke__%
               _keys158731158760_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158731158760_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158731158760_
                  'stderr-redirection:
                  absent-value))
               _args158762_)))
    (define gxc#invoke
      (lambda _args158734158768_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args158734158768_)))
    (define gxc#join!
      (lambda (_thread158725_)
        (let ((__tmp160387
               (lambda (_exn158727_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn158727_))
                     (let ((__tmp160388
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn158727_))))
                       (declare (not safe))
                       (raise __tmp160388))
                     (let () (declare (not safe)) (raise _exn158727_)))))
              (__tmp160386 (lambda () (thread-join! _thread158725_))))
          (declare (not safe))
          (with-catch __tmp160387 __tmp160386))))))
