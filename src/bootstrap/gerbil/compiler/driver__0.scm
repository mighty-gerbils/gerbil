(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1695117622)
  (begin
    (define gxc#default-gerbil-gsc (path-expand '"gsc" (path-expand '"~~bin")))
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
      (lambda (_path65137_ _fun65138_)
        (with-output-to-file
         (cons 'path: (cons _path65137_ gxc#scheme-file-settings))
         _fun65138_)))
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
    (define gxc#gsc-runtime-args (cons '"-:i8,f8,-8,t8" '()))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/system"
        "gerbil/runtime/loader"
        "gerbil/runtime/control"
        "gerbil/runtime/mop"
        "gerbil/runtime/error"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir65132_) (delete-file-or-directory _dir65132_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath65106_ _opts65107_)
        (if (string? _srcpath65106_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath65106_))
        (let ((_outdir65109_ (pgetq 'output-dir: _opts65107_))
              (_invoke-gsc?65110_ (pgetq 'invoke-gsc: _opts65107_))
              (_gsc-options65111_ (pgetq 'gsc-options: _opts65107_))
              (_keep-scm?65112_ (pgetq 'keep-scm: _opts65107_))
              (_verbosity65113_ (pgetq 'verbose: _opts65107_))
              (_optimize65114_ (pgetq 'optimize: _opts65107_))
              (_debug65115_ (pgetq 'debug: _opts65107_))
              (_gen-ssxi65116_ (pgetq 'generate-ssxi: _opts65107_)))
          (if _outdir65109_
              (gerbil/gambit/threads#with-lock
               gxc#+driver-mutex+
               (lambda () (create-directory* _outdir65109_)))
              '#!void)
          (if _optimize65114_
              (gerbil/gambit/threads#with-lock
               gxc#+driver-mutex+
               (lambda () (gxc#optimizer-info-init!)))
              '#!void)
          (call-with-parameters
           (lambda ()
             (gxc#verbose '"compile " _srcpath65106_)
             (gxc#compile-top-module
              (gerbil/gambit/threads#with-lock
               gxc#+driver-mutex+
               (lambda () (gx#import-module__0 _srcpath65106_)))))
           gxc#current-compile-output-dir
           _outdir65109_
           gxc#current-compile-invoke-gsc
           _invoke-gsc?65110_
           gxc#current-compile-gsc-options
           _gsc-options65111_
           gxc#current-compile-keep-scm
           _keep-scm?65112_
           gxc#current-compile-verbose
           _verbosity65113_
           gxc#current-compile-optimize
           _optimize65114_
           gxc#current-compile-debug
           _debug65115_
           gxc#current-compile-generate-ssxi
           _gen-ssxi65116_
           gxc#current-compile-timestamp
           (gxc#compile-timestamp)
           gx#current-expander-compiling?
           '#t))))
    (define gxc#compile-module__0
      (lambda (_srcpath65125_)
        (let ((_opts65127_ '()))
          (gxc#compile-module__% _srcpath65125_ _opts65127_))))
    (define gxc#compile-module
      (lambda _g65212_
        (let ((_g65211_ (let () (declare (not safe)) (##length _g65212_))))
          (cond ((let () (declare (not safe)) (##fx= _g65211_ 1))
                 (apply gxc#compile-module__0 _g65212_))
                ((let () (declare (not safe)) (##fx= _g65211_ 2))
                 (apply gxc#compile-module__% _g65212_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g65212_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath65083_ _opts65084_)
        (if (string? _srcpath65083_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath65083_))
        (let ((_outdir65086_ (pgetq 'output-dir: _opts65084_))
              (_invoke-gsc?65087_ (pgetq 'invoke-gsc: _opts65084_))
              (_gsc-options65088_ (pgetq 'gsc-options: _opts65084_))
              (_keep-scm?65089_ (pgetq 'keep-scm: _opts65084_))
              (_verbosity65090_ (pgetq 'verbose: _opts65084_)))
          (if _outdir65086_
              (gerbil/gambit/threads#with-lock
               gxc#+driver-mutex+
               (lambda () (create-directory* _outdir65086_)))
              '#!void)
          (call-with-parameters
           (lambda ()
             (gxc#verbose '"compile exe " _srcpath65083_)
             (gxc#compile-executable-module
              (gerbil/gambit/threads#with-lock
               gxc#+driver-mutex+
               (lambda () (gx#import-module__0 _srcpath65083_)))
              _opts65084_))
           gxc#current-compile-output-dir
           _outdir65086_
           gxc#current-compile-invoke-gsc
           _invoke-gsc?65087_
           gxc#current-compile-gsc-options
           _gsc-options65088_
           gxc#current-compile-keep-scm
           _keep-scm?65089_
           gxc#current-compile-verbose
           _verbosity65090_
           gxc#current-compile-timestamp
           (gxc#compile-timestamp)
           gx#current-expander-compiling?
           '#t))))
    (define gxc#compile-exe__0
      (lambda (_srcpath65098_)
        (let ((_opts65100_ '()))
          (gxc#compile-exe__% _srcpath65098_ _opts65100_))))
    (define gxc#compile-exe
      (lambda _g65214_
        (let ((_g65213_ (let () (declare (not safe)) (##length _g65214_))))
          (cond ((let () (declare (not safe)) (##fx= _g65213_ 1))
                 (apply gxc#compile-exe__0 _g65214_))
                ((let () (declare (not safe)) (##fx= _g65213_ 2))
                 (apply gxc#compile-exe__% _g65214_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g65214_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx65079_ _opts65080_)
        (if (pgetq 'full-program-optimization: _opts65080_)
            (gxc#compile-executable-module/full-program-optimization
             _ctx65079_
             _opts65080_)
            (gxc#compile-executable-module/separate _ctx65079_ _opts65080_))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx64727_ _opts64728_)
        (letrec ((_generate-stub64730_
                  (lambda (_builtin-modules65075_)
                    (let ((_mod-main65077_
                           (gxc#find-runtime-symbol _ctx64727_ 'main)))
                      (write (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _builtin-modules65075_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (write (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons 'builtin-modules
                                                           '()))
                                               (cons (cons 'apply
                                                           (cons _mod-main65077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-gsc-link-opts64731_
                  (lambda ()
                    (let ((_opts64985_ (pgetq 'gsc-options: _opts64728_)))
                      (let _lp64987_ ((_rest64989_ _opts64985_)
                                      (_opts64990_ '()))
                        (let* ((_rest6499165011_ _rest64989_)
                               (_else6499565019_
                                (lambda () (reverse _opts64990_))))
                          (let ((_K6500565062_
                                 (lambda (_rest65060_)
                                   (_lp64987_ _rest65060_ _opts64990_)))
                                (_K6500065044_
                                 (lambda (_rest65042_)
                                   (_lp64987_ _rest65042_ _opts64990_)))
                                (_K6499765026_
                                 (lambda (_rest65023_ _hd65024_)
                                   (_lp64987_
                                    _rest65023_
                                    (cons _hd65024_ _opts64990_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6499165011_))
                                (let ((_tl6500765067_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6499165011_)))
                                      (_hd6500665065_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6499165011_))))
                                  (if (equal? _hd6500665065_ '"-cc-options")
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6500765067_))
                                          (let* ((_tl6500965070_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _tl6500765067_)))
                                                 (_rest65073_ _tl6500965070_))
                                            (_K6500565062_ _rest65073_))
                                          (let ((_hd65034_ _hd6500665065_)
                                                (_rest65036_ _tl6500765067_))
                                            (_K6499765026_
                                             _rest65036_
                                             _hd65034_)))
                                      (if (equal? _hd6500665065_
                                                  '"-ld-options")
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl6500765067_))
                                              (let* ((_tl6500465052_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _tl6500765067_)))
                                                     (_rest65055_
                                                      _tl6500465052_))
                                                (_K6500065044_ _rest65055_))
                                              (let ((_hd65034_ _hd6500665065_)
                                                    (_rest65036_
                                                     _tl6500765067_))
                                                (_K6499765026_
                                                 _rest65036_
                                                 _hd65034_)))
                                          (let ((_hd65034_ _hd6500665065_)
                                                (_rest65036_ _tl6500765067_))
                                            (_K6499765026_
                                             _rest65036_
                                             _hd65034_)))))
                                (_else6499565019_))))))))
                 (_get-gsc-cc-opts64732_
                  (lambda (_gerbil-staticdir64910_)
                    (let* ((_opts64912_ (pgetq 'gsc-options: _opts64728_))
                           (_base64914_
                            (string-append '"-I " _gerbil-staticdir64910_))
                           (_user-static-dir64916_
                            (path-expand
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil"))))
                           (_base64918_
                            (string-append
                             _base64914_
                             '" -I "
                             _user-static-dir64916_)))
                      (let _lp64921_ ((_rest64923_ _opts64912_)
                                      (_ccflags64924_ _base64918_))
                        (let* ((_rest6492564939_ _rest64923_)
                               (_else6492864947_
                                (lambda ()
                                  (cons '"-cc-options"
                                        (cons _ccflags64924_ '())))))
                          (let ((_K6493364967_
                                 (lambda (_rest64964_ _opts64965_)
                                   (_lp64921_
                                    _rest64964_
                                    (string-append
                                     _ccflags64924_
                                     '" "
                                     _opts64965_))))
                                (_K6493064953_
                                 (lambda (_rest64951_)
                                   (_lp64921_ _rest64951_ _ccflags64924_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6492564939_))
                                (let ((_tl6493564972_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6492564939_)))
                                      (_hd6493464970_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6492564939_))))
                                  (if (equal? _hd6493464970_ '"-cc-options")
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6493564972_))
                                          (let ((_tl6493764977_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6493564972_)))
                                                (_hd6493664975_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6493564972_))))
                                            (let ((_opts64980_ _hd6493664975_)
                                                  (_rest64982_ _tl6493764977_))
                                              (_K6493364967_
                                               _rest64982_
                                               _opts64980_)))
                                          (let ((_rest64959_ _tl6493564972_))
                                            (_K6493064953_ _rest64959_)))
                                      (let ((_rest64959_ _tl6493564972_))
                                        (_K6493064953_ _rest64959_))))
                                (_else6492864947_))))))))
                 (_get-output-ld-opts64733_
                  (lambda ()
                    (let ((_opts64845_ (pgetq 'gsc-options: _opts64728_)))
                      (let _lp64847_ ((_rest64849_ _opts64845_)
                                      (_ldflags64850_ '""))
                        (let* ((_rest6485164865_ _rest64849_)
                               (_else6485464873_
                                (lambda ()
                                  (if (string-empty? _ldflags64850_)
                                      '()
                                      (filter _not-string-empty?64738_
                                              (string-split
                                               _ldflags64850_
                                               '#\space))))))
                          (let ((_K6485964893_
                                 (lambda (_rest64890_ _opts64891_)
                                   (_lp64847_
                                    _rest64890_
                                    (string-append
                                     _ldflags64850_
                                     (if (string-empty? _ldflags64850_)
                                         '""
                                         '" ")
                                     _opts64891_))))
                                (_K6485664879_
                                 (lambda (_rest64877_)
                                   (_lp64847_ _rest64877_ _ldflags64850_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6485164865_))
                                (let ((_tl6486164898_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6485164865_)))
                                      (_hd6486064896_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6485164865_))))
                                  (if (equal? _hd6486064896_ '"-ld-options")
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6486164898_))
                                          (let ((_tl6486364903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6486164898_)))
                                                (_hd6486264901_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6486164898_))))
                                            (let ((_opts64906_ _hd6486264901_)
                                                  (_rest64908_ _tl6486364903_))
                                              (_K6485964893_
                                               _rest64908_
                                               _opts64906_)))
                                          (let ((_rest64885_ _tl6486164898_))
                                            (_K6485664879_ _rest64885_)))
                                      (let ((_rest64885_ _tl6486164898_))
                                        (_K6485664879_ _rest64885_))))
                                (_else6485464873_))))))))
                 (_get-libgerbil-ld-opts64734_
                  (lambda (_libgerbil64842_)
                    (call-with-input-file
                     (string-append _libgerbil64842_ '".ldd")
                     read)))
                 (_replace-extension64735_
                  (lambda (_path64839_ _ext64840_)
                    (string-append
                     (path-strip-extension _path64839_)
                     _ext64840_)))
                 (_not-exclude-module?64736_
                  (lambda (_ctx64835_)
                    (let ((_id-str64837_
                           (symbol->string
                            (##structure-ref
                             _ctx64835_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (not (string-prefix? '"gerbil/" _id-str64837_))
                          (not (string-prefix? '"std/" _id-str64837_))
                          '#f))))
                 (_not-file-empty?64737_
                  (lambda (_path64833_) (not (gxc#file-empty? _path64833_))))
                 (_not-string-empty?64738_
                  (lambda (_str64831_) (not (string-empty? _str64831_))))
                 (_compile-stub64739_
                  (lambda (_output-scm64746_ _output-bin64747_)
                    (let* ((_gerbil-home64749_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_gerbil-libdir64751_
                            (path-expand '"lib" _gerbil-home64749_))
                           (_gerbil-staticdir64753_
                            (path-expand '"static" _gerbil-libdir64751_))
                           (_gxlink64755_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir64751_))
                           (_tmp64757_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string (gxc#compile-timestamp-nanos)))
                             '"/tmp"))
                           (_tmp-path64761_
                            (lambda (_f64759_)
                              (path-expand
                               (path-strip-directory _f64759_)
                               _tmp64757_)))
                           (_deps64763_
                            (gxc#find-runtime-module-deps _ctx64727_))
                           (_deps64765_
                            (filter _not-exclude-module?64736_ _deps64763_))
                           (_src-deps-scm64767_
                            (map gxc#find-static-module-file _deps64765_))
                           (_src-deps-scm64769_
                            (filter _not-file-empty?64737_
                                    _src-deps-scm64767_))
                           (_src-deps-scm64771_
                            (map path-expand _src-deps-scm64769_))
                           (_deps-scm64773_
                            (map _tmp-path64761_ _src-deps-scm64771_))
                           (_deps-c64779_
                            (map (lambda (_g6477464776_)
                                   (_replace-extension64735_
                                    _g6477464776_
                                    '".c"))
                                 _deps-scm64773_))
                           (_deps-o64785_
                            (map (lambda (_g6478064782_)
                                   (_replace-extension64735_
                                    _g6478064782_
                                    '".o"))
                                 _deps-scm64773_))
                           (_src-bin-scm64787_
                            (gxc#find-static-module-file _ctx64727_))
                           (_src-bin-scm64789_
                            (path-expand _src-bin-scm64787_))
                           (_bin-scm64791_
                            (_tmp-path64761_ _src-bin-scm64789_))
                           (_bin-c64793_
                            (_replace-extension64735_ _bin-scm64791_ '".c"))
                           (_bin-o64795_
                            (_replace-extension64735_ _bin-scm64791_ '".o"))
                           (_output-bin64797_ (path-expand _output-bin64747_))
                           (_output-scm64799_ (path-expand _output-scm64746_))
                           (_output-c64801_
                            (_replace-extension64735_ _output-scm64799_ '".c"))
                           (_output-o64803_
                            (_replace-extension64735_ _output-scm64799_ '".o"))
                           (_output_64805_
                            (string-append
                             (path-strip-extension _output-scm64799_)
                             '"_"))
                           (_output_-c64807_
                            (string-append _output_64805_ '".c"))
                           (_output_-o64809_
                            (string-append _output_64805_ '".o"))
                           (_gsc-opts64811_ (_get-gsc-link-opts64731_))
                           (_gsc-cc-opts64813_
                            (_get-gsc-cc-opts64732_ _gerbil-staticdir64753_))
                           (_output-ld-opts64815_ (_get-output-ld-opts64733_))
                           (_libgerbil.a64817_
                            (path-expand '"libgerbil.a" _gerbil-libdir64751_))
                           (_libgerbil.so64819_
                            (path-expand '"libgerbil.so" _gerbil-libdir64751_))
                           (_libgerbil-ld-opts64821_
                            (if (file-exists? _libgerbil.so64819_)
                                (_get-libgerbil-ld-opts64734_
                                 _libgerbil.so64819_)
                                (if (file-exists? _libgerbil.a64817_)
                                    (_get-libgerbil-ld-opts64734_
                                     _libgerbil.a64817_)
                                    (gxc#raise-compile-error
                                     '"libgerbil does not exist"
                                     _libgerbil.a64817_
                                     _libgerbil.so64819_))))
                           (_gerbil-rpath64823_
                            (string-append
                             '"-Wl,-rpath="
                             _gerbil-libdir64751_))
                           (_builtin-modules64827_
                            (map (lambda (_mod64825_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod64825_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (cons _ctx64727_ _deps64765_))))
                      (create-directory* (path-directory _output-bin64797_))
                      (gxc#with-output-to-scheme-file
                       _output-scm64799_
                       (lambda ()
                         (_generate-stub64730_ _builtin-modules64827_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (create-directory _tmp64757_)
                            (for-each
                             copy-file
                             _src-deps-scm64771_
                             _deps-scm64773_)
                            (copy-file _src-bin-scm64789_ _bin-scm64791_)
                            (gxc#invoke
                             (gxc#gerbil-gsc)
                             (foldr1 cons
                                     (cons '"-link"
                                           (cons '"-l"
                                                 (cons _gxlink64755_
                                                       (foldr1 cons
                                                               (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr1 cons
                                       (cons _bin-scm64791_
                                             (cons _output-scm64799_ '()))
                                       _deps-scm64773_)
                               _gsc-opts64811_)
                       (gxc#gsc-debug-options__0)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     gxc#gsc-runtime-args))
                            (gxc#invoke
                             (gxc#gerbil-gsc)
                             (cons '"-obj"
                                   (foldr1 cons
                                           (foldr1 cons
                                                   (cons _bin-c64793_
                                                         (cons _output-c64801_
                                                               (cons _output_-c64807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _deps-c64779_)
                                           _gsc-cc-opts64813_)))
                            (gxc#invoke
                             (gxc#gerbil-gcc)
                             (cons '"-o"
                                   (cons _output-bin64797_
                                         (foldr1 cons
                                                 (cons _bin-o64795_
                                                       (cons _output-o64803_
                                                             (cons _output_-o64809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr1 cons
                                   (cons _gerbil-rpath64823_
                                         (cons '"-L"
                                               (cons _gerbil-libdir64751_
                                                     (cons '"-lgerbil"
                                                           (cons '"-lgambit"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _libgerbil-ld-opts64821_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _output-ld-opts64815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _deps-o64785_))))
                            (for-each
                             delete-file
                             (cons _output-c64801_
                                   (cons _output_-c64807_
                                         (cons _output-o64803_
                                               (cons _output_-o64809_ '())))))
                            (gxc#delete-directory* _tmp64757_))
                          '#!void)))))
          (let* ((_output-bin64741_
                  (gxc#compile-exe-output-file _ctx64727_ _opts64728_))
                 (_output-scm64743_
                  (string-append _output-bin64741_ '".scmx")))
            (_compile-stub64739_ _output-scm64743_ _output-bin64741_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm64743_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx64566_ _opts64567_)
        (letrec ((_reset-declare64569_
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
                 (_generate-stub64570_
                  (lambda (_deps64718_)
                    (let ((_mod-main64720_
                           (gxc#find-runtime-symbol _ctx64566_ 'main))
                          (_reset-decl64721_ (_reset-declare64569_))
                          (_user-decl64722_ (_user-declare64572_)))
                      (for-each
                       (lambda (_dep64724_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl64721_)
                         (newline)
                         (if _user-decl64722_
                             (begin (write _user-decl64722_) (newline))
                             '#!void)
                         (write (cons 'include (cons _dep64724_ '())))
                         (newline))
                       _deps64718_)
                      (write (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _mod-main64720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                      (write '(gerbil-main))
                      (newline))))
                 (_static-include64571_
                  (lambda (_gsc-opts64711_ _home64712_)
                    (letrec* ((_static-dir64714_
                               (path-expand '"lib/static" _home64712_))
                              (_user-static-dir64715_
                               (path-expand
                                (path-expand
                                 '"lib/static"
                                 (getenv '"GERBIL_PATH" '"~/.gerbil"))))
                              (_cppflags64716_
                               (string-append
                                '"-I "
                                _static-dir64714_
                                '" -I "
                                _user-static-dir64715_)))
                      (append _gsc-opts64711_
                              (cons '"-cc-options"
                                    (cons _cppflags64716_ '()))))))
                 (_user-declare64572_
                  (lambda ()
                    (let* ((_gsc-opts64616_ (pgetq 'gsc-options: _opts64567_))
                           (_gsc-prelude64618_
                            (if _gsc-opts64616_
                                (member '"-prelude" _gsc-opts64616_)
                                '#f))
                           (_gsc-prelude64620_
                            (if _gsc-prelude64618_
                                (read (open-input-string
                                       (cadr _gsc-prelude64618_)))
                                '#f)))
                      (let _lp64623_ ((_rest64625_
                                       (cons _gsc-prelude64620_ '()))
                                      (_user-decls64626_ '()))
                        (let* ((_rest6462764635_ _rest64625_)
                               (_else6462964643_
                                (lambda ()
                                  (if (null? _user-decls64626_)
                                      '#f
                                      (cons 'declare
                                            (reverse _user-decls64626_)))))
                               (_K6463164699_
                                (lambda (_rest64646_ _expr64647_)
                                  (let* ((_expr6464864660_ _expr64647_)
                                         (_else6465164668_
                                          (lambda ()
                                            (_lp64623_
                                             _rest64646_
                                             _user-decls64626_))))
                                    (let ((_K6465664689_
                                           (lambda (_decls64687_)
                                             (_lp64623_
                                              _rest64646_
                                              (foldl1 cons
                                                      _user-decls64626_
                                                      _decls64687_))))
                                          (_K6465364674_
                                           (lambda (_exprs64672_)
                                             (_lp64623_
                                              (append _exprs64672_ _rest64646_)
                                              _user-decls64626_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr6464864660_))
                                          (let ((_tl6465864694_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr6464864660_)))
                                                (_hd6465764692_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr6464864660_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd6465764692_
                                                         'declare))
                                                (let ((_decls64697_
                                                       _tl6465864694_))
                                                  (_K6465664689_ _decls64697_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd6465764692_
                                                             'begin))
                                                    (let ((_exprs64682_
                                                           _tl6465864694_))
                                                      (_K6465364674_
                                                       _exprs64682_))
                                                    (_else6465164668_))))
                                          (_else6465164668_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6462764635_))
                              (let ((_hd6463264702_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6462764635_)))
                                    (_tl6463364704_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6462764635_))))
                                (let* ((_expr64707_ _hd6463264702_)
                                       (_rest64709_ _tl6463364704_))
                                  (_K6463164699_ _rest64709_ _expr64707_)))
                              (_else6462964643_)))))))
                 (_compile-stub64573_
                  (lambda (_output-scm64580_ _output-bin64581_)
                    (let* ((_gerbil-home64583_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_runtime64585_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp64587_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home64583_))
                           (_include-gambit-sharp64589_
                            (string-append
                             '"(include \""
                             _gambit-sharp64587_
                             '"\")"))
                           (_bin-scm64591_
                            (gxc#find-static-module-file _ctx64566_))
                           (_deps64593_
                            (gxc#find-runtime-module-deps _ctx64566_))
                           (_deps64595_
                            (map gxc#find-static-module-file _deps64593_))
                           (_deps64600_
                            (filter (lambda (_$obj64597_)
                                      (not (gxc#file-empty? _$obj64597_)))
                                    _deps64595_))
                           (_gsc-opts64605_
                            (let ((_$e64602_
                                   (pgetq 'gsc-options: _opts64567_)))
                              (if _$e64602_ _$e64602_ '())))
                           (_gsc-opts64607_
                            (_static-include64571_
                             _gsc-opts64605_
                             _gerbil-home64583_))
                           (_gsc-gx-macros64609_
                            (if (gerbil-runtime-smp?)
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _include-gambit-sharp64589_
                                                        '()))))
                                (cons '"-e"
                                      (cons _include-gambit-sharp64589_ '()))))
                           (_gsc-args64611_
                            (foldr1 cons
                                    (cons '"-exe"
                                          (cons '"-o"
                                                (cons _output-bin64581_
                                                      (foldr1 cons
                                                              (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr1 cons
                                      (cons _output-scm64580_ '())
                                      _gsc-gx-macros64609_)
                              _gsc-opts64607_)
                      (gxc#gsc-debug-options__0)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    gxc#gsc-runtime-args)))
                      (create-directory* (path-directory _output-bin64581_))
                      (gxc#with-output-to-scheme-file
                       _output-scm64580_
                       (lambda ()
                         (_generate-stub64570_
                          (foldr1 cons
                                  (foldr1 cons
                                          (cons _bin-scm64591_ '())
                                          _deps64600_)
                                  _runtime64585_))))
                      (if (gxc#current-compile-invoke-gsc)
                          (gxc#invoke (gxc#gerbil-gsc) _gsc-args64611_)
                          '#!void)))))
          (let* ((_output-bin64575_
                  (gxc#compile-exe-output-file _ctx64566_ _opts64567_))
                 (_output-scm64577_
                  (string-append _output-bin64575_ '".scmx")))
            (_compile-stub64573_ _output-scm64577_ _output-bin64575_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm64577_))))))
    (define gxc#find-export-binding
      (lambda (_ctx64516_ _id64517_)
        (let ((_$e64563_
               (find (lambda (_e6451864520_)
                       (let* ((_g6452264532_ _e6451864520_)
                              (_else6452464540_ (lambda () '#f))
                              (_K6452664544_ (lambda () '#t)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                _g6452264532_
                                'gx#module-export::t))
                             (let* ((_e6452764547_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g6452264532_ '1)))
                                    (_e6452864550_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g6452264532_ '2)))
                                    (_e6452964553_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g6452264532_ '3))))
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _e6452964553_ '0))
                                   (let ((_e6453064556_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g6452264532_ '4))))
                                     (if ((lambda (_g6455864560_)
                                            (eq? _g6455864560_ _id64517_))
                                          _e6453064556_)
                                         (_K6452664544_)
                                         (_else6452464540_)))
                                   (_else6452464540_)))
                             (_else6452464540_))))
                     (##structure-ref
                      _ctx64516_
                      '9
                      gx#module-context::t
                      '#f))))
          (if _$e64563_ (gx#core-resolve-module-export _$e64563_) '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx64508_ _id64509_)
        (let ((_$e64511_ (gxc#find-export-binding _ctx64508_ _id64509_)))
          (if _$e64511_
              ((lambda (_bind64514_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind64514_
                        'gx#runtime-binding::t))
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id64509_))
                 (##structure-ref _bind64514_ '1 gx#binding::t '#f))
               _$e64511_)
              (gxc#raise-compile-error
               '"module does not export symbol"
               (##structure-ref _ctx64508_ '1 gx#expander-context::t '#f)
               _id64509_)))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx64395_)
        (letrec* ((_ht64397_ (make-table 'test: eq?))
                  (_import-set-template64398_
                   (lambda (_in64460_ _phi64461_)
                     (let ((_iphi64463_
                            (fx+ _phi64461_
                                 (##direct-structure-ref
                                  _in64460_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports64464_
                            (##structure-ref
                             (##direct-structure-ref
                              _in64460_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp64466_ ((_rest64468_ _imports64464_)
                                       (_r64469_ '()))
                         (let* ((_rest6447064478_ _rest64468_)
                                (_else6447264486_ (lambda () _r64469_))
                                (_K6447464496_
                                 (lambda (_rest64489_ _in64490_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in64490_
                                          'gx#module-context::t))
                                       (if (fxzero? _iphi64463_)
                                           (_lp64466_
                                            _rest64489_
                                            (cons _in64490_ _r64469_))
                                           (_lp64466_ _rest64489_ _r64469_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in64490_
                                              'gx#module-import::t))
                                           (let ((_iphi64492_
                                                  (fx+ _phi64461_
                                                       (##direct-structure-ref
                                                        _in64490_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (fxzero? _iphi64492_)
                                                 (_lp64466_
                                                  _rest64489_
                                                  (cons (##direct-structure-ref
                                                         (##direct-structure-ref
                                                          _in64490_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _r64469_))
                                                 (_lp64466_
                                                  _rest64489_
                                                  _r64469_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in64490_
                                                  'gx#import-set::t))
                                               (let ((_xphi64494_
                                                      (fx+ _iphi64463_
                                                           (##direct-structure-ref
                                                            _in64490_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (fxzero? _xphi64494_)
                                                     (_lp64466_
                                                      _rest64489_
                                                      (cons (##direct-structure-ref
                                                             _in64490_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _r64469_))
                                                     (if (fxpositive?
                                                          _xphi64494_)
                                                         (_lp64466_
                                                          _rest64489_
                                                          (foldl1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r64469_
                          (_import-set-template64398_ _in64490_ _iphi64463_)))
                 (_lp64466_ _rest64489_ _r64469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp64466_
                                                _rest64489_
                                                _r64469_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest6447064478_))
                               (let ((_hd6447564499_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest6447064478_)))
                                     (_tl6447664501_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest6447064478_))))
                                 (let* ((_in64504_ _hd6447564499_)
                                        (_rest64506_ _tl6447664501_))
                                   (_K6447464496_ _rest64506_ _in64504_)))
                               (_else6447264486_)))))))
                  (_find-deps64399_
                   (lambda (_rest64406_ _deps64407_)
                     (let* ((_rest6440864416_ _rest64406_)
                            (_else6441064424_ (lambda () _deps64407_))
                            (_K6441264448_
                             (lambda (_rest64427_ _hd64428_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd64428_
                                      'gx#module-context::t))
                                   (let ((_id64430_
                                          (##structure-ref
                                           _hd64428_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports64431_
                                          (##structure-ref
                                           _hd64428_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (table-ref _ht64397_ _id64430_ '#f)
                                         (_find-deps64399_
                                          _rest64427_
                                          _deps64407_)
                                         (let ((_$e64433_
                                                (gx#core-context-prelude__%
                                                 _hd64428_)))
                                           (if _$e64433_
                                               ((lambda (_pre64436_)
                                                  (let ((_xdeps64438_
                                                         (_find-deps64399_
                                                          (cons _pre64436_
                                                                _imports64431_)
                                                          _deps64407_)))
                                                    (table-set!
                                                     _ht64397_
                                                     _id64430_
                                                     _hd64428_)
                                                    (_find-deps64399_
                                                     _rest64427_
                                                     (cons _hd64428_
                                                           _xdeps64438_))))
                                                _$e64433_)
                                               (let ((_xdeps64440_
                                                      (_find-deps64399_
                                                       _imports64431_
                                                       _deps64407_)))
                                                 (table-set!
                                                  _ht64397_
                                                  _id64430_
                                                  _hd64428_)
                                                 (_find-deps64399_
                                                  _rest64427_
                                                  (cons _hd64428_
                                                        _xdeps64440_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd64428_
                                          'gx#prelude-context::t))
                                       (let ((_id64442_
                                              (##structure-ref
                                               _hd64428_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (table-ref
                                              _ht64397_
                                              _id64442_
                                              '#f)
                                             (_find-deps64399_
                                              _rest64427_
                                              _deps64407_)
                                             (let ((_xdeps64444_
                                                    (_find-deps64399_
                                                     (##structure-ref
                                                      _hd64428_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f)
                                                     _deps64407_)))
                                               (if (table-ref
                                                    _ht64397_
                                                    _id64442_
                                                    '#f)
                                                   (_find-deps64399_
                                                    _rest64427_
                                                    _xdeps64444_)
                                                   (begin
                                                     (table-set!
                                                      _ht64397_
                                                      _id64442_
                                                      _hd64428_)
                                                     (_find-deps64399_
                                                      _rest64427_
                                                      (cons _hd64428_
                                                            _xdeps64444_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd64428_
                                              'gx#module-import::t))
                                           (if (fxzero? (##direct-structure-ref
                                                         _hd64428_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                               (_find-deps64399_
                                                (cons (##direct-structure-ref
                                                       _hd64428_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      _rest64427_)
                                                _deps64407_)
                                               (_find-deps64399_
                                                _rest64427_
                                                _deps64407_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd64428_
                                                  'gx#module-export::t))
                                               (_find-deps64399_
                                                (cons (##direct-structure-ref
                                                       _hd64428_
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _rest64427_)
                                                _deps64407_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd64428_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd64428_
                         '2
                         gx#import-set::t
                         '#f))
               (_find-deps64399_
                (cons (##direct-structure-ref
                       _hd64428_
                       '1
                       gx#import-set::t
                       '#f)
                      _rest64427_)
                _deps64407_)
               (if (fxpositive?
                    (##direct-structure-ref _hd64428_ '2 gx#import-set::t '#f))
                   (let ((_xdeps64446_
                          (_import-set-template64398_ _hd64428_ '0)))
                     (_find-deps64399_
                      (foldl1 cons _rest64427_ _xdeps64446_)
                      _deps64407_))
                   (_find-deps64399_ _rest64427_ _deps64407_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd64428_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest6440864416_))
                           (let ((_hd6441364451_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest6440864416_)))
                                 (_tl6441464453_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest6440864416_))))
                             (let* ((_hd64456_ _hd6441364451_)
                                    (_rest64458_ _tl6441464453_))
                               (_K6441264448_ _rest64458_ _hd64456_)))
                           (_else6441064424_))))))
          (reverse (filter gx#expander-context-id
                           (_find-deps64399_
                            (let ((_$e64401_
                                   (gx#core-context-prelude__% _ctx64395_)))
                              (if _$e64401_
                                  ((lambda (_pre64404_)
                                     (cons _pre64404_
                                           (##structure-ref
                                            _ctx64395_
                                            '8
                                            gx#module-context::t
                                            '#f)))
                                   _$e64401_)
                                  (##structure-ref
                                   _ctx64395_
                                   '8
                                   gx#module-context::t
                                   '#f)))
                            '()))))))
    (define gxc#find-static-module-file
      (lambda (_ctx64332_)
        (let* ((_context-id64334_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx64332_
                       'gx#module-context::t))
                    (##structure-ref _ctx64332_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx64332_)))
               (_scm64336_
                (string-append
                 (gxc#static-module-name _context-id64334_)
                 '".scm"))
               (_dirs64338_ (gx#current-expander-module-library-path))
               (_dirs64347_
                (let ((_$e64340_ (gxc#current-compile-output-dir)))
                  (if _$e64340_
                      ((lambda (_g6434264344_)
                         (cons _g6434264344_ _dirs64338_))
                       _$e64340_)
                      _dirs64338_)))
               (_dirs64353_
                (map (lambda (_g6434864350_)
                       (path-expand '"static" _g6434864350_))
                     _dirs64347_)))
          (let _lp64356_ ((_rest64358_ _dirs64353_))
            (let* ((_rest6435964367_ _rest64358_)
                   (_else6436164375_
                    (lambda ()
                      (gxc#raise-compile-error
                       '"cannot find static module"
                       (##structure-ref
                        _ctx64332_
                        '1
                        gx#expander-context::t
                        '#f)
                       _scm64336_)))
                   (_K6436364383_
                    (lambda (_rest64378_ _dir64379_)
                      (let ((_path64381_ (path-expand _scm64336_ _dir64379_)))
                        (if (file-exists? _path64381_)
                            _path64381_
                            (_lp64356_ _rest64378_))))))
              (if (let () (declare (not safe)) (##pair? _rest6435964367_))
                  (let ((_hd6436464386_
                         (let ()
                           (declare (not safe))
                           (##car _rest6435964367_)))
                        (_tl6436564388_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6435964367_))))
                    (let* ((_dir64391_ _hd6436464386_)
                           (_rest64393_ _tl6436564388_))
                      (_K6436364383_ _rest64393_ _dir64391_)))
                  (_else6436164375_)))))))
    (define gxc#file-empty?
      (lambda (_path64330_)
        (zero? (file-info-size (file-info _path64330_ '#t)))))
    (define gxc#compile-top-module
      (lambda (_ctx64326_)
        (call-with-parameters
         (lambda ()
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx64326_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gerbil/gambit/threads#with-lock
                gxc#+driver-mutex+
                (lambda () (gxc#optimize! _ctx64326_)))
               '#!void)
           (gxc#collect-bindings _ctx64326_)
           (gxc#compile-runtime-code _ctx64326_)
           (gxc#compile-meta-code _ctx64326_)
           (if (and (gxc#current-compile-optimize)
                    (gxc#current-compile-generate-ssxi))
               (gxc#compile-ssxi-code _ctx64326_)
               '#!void))
         gx#current-expander-context
         _ctx64326_
         gx#current-expander-phi
         '0
         gx#current-expander-marks
         '()
         gxc#current-compile-symbol-table
         (let ((__obj65209 (make-object gxc#symbol-table::t '2)))
           (gxc#symbol-table:::init! __obj65209)
           __obj65209)
         gxc#current-compile-runtime-sections
         (make-table 'test: eq?)
         gxc#current-compile-runtime-names
         (make-table))))
    (define gxc#collect-bindings
      (lambda (_ctx64324_)
        (gxc#apply-collect-bindings
         (##structure-ref _ctx64324_ '11 gx#module-context::t '#f))))
    (define gxc#compile-runtime-code
      (lambda (_ctx64270_)
        (letrec ((_compile164272_
                  (lambda (_ctx64313_)
                    (let* ((_code64315_
                            (##structure-ref
                             _ctx64313_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt64319_
                            (if (gxc#apply-find-runtime-code _code64315_)
                                (let ((_idstr64317_
                                       (gxc#module-id->path-string
                                        (##structure-ref
                                         _ctx64313_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr64317_ '"__0"))
                                '#f)))
                      (if _rt64319_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx64313_
                             _rt64319_)
                            (_generate-runtime-code64274_
                             _ctx64313_
                             _code64315_))
                          (let ((_path64322_
                                 (gxc#compile-static-output-file _ctx64313_)))
                            (gxc#with-output-to-scheme-file _path64322_ void)))
                      (_generate-loader-code64275_
                       _ctx64313_
                       _code64315_
                       _rt64319_))))
                 (_context-timestamp64273_
                  (lambda (_ctx64311_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx64311_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code64274_
                  (lambda (_ctx64293_ _code64294_)
                    (let* ((_lifts64296_ (box '()))
                           (_runtime-code64299_
                            (call-with-parameters
                             (lambda ()
                               (gxc#apply-generate-runtime _code64294_))
                             gx#current-expander-context
                             _ctx64293_
                             gx#current-expander-phi
                             '0
                             gxc#current-compile-lift
                             _lifts64296_
                             gxc#current-compile-marks
                             (make-table 'test: eq?)
                             gxc#current-compile-identifiers
                             (gxc#make-bound-identifier-table)))
                           (_runtime-code64301_
                            (if (null? (unbox _lifts64296_))
                                _runtime-code64299_
                                (cons 'begin
                                      (foldr1 cons
                                              (cons _runtime-code64299_ '())
                                              (reverse (unbox _lifts64296_))))))
                           (_runtime-code64303_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (_context-timestamp64273_
                                                     _ctx64293_)
                                                    (cons (gxc#current-compile-timestamp)
                                                          '())))
                                        (cons _runtime-code64301_ '()))))
                           (_scm064305_
                            (gxc#compile-output-file _ctx64293_ '0 '".scm")))
                      (let ((_scms64308_
                             (gxc#compile-static-output-file _ctx64293_)))
                        (call-with-parameters
                         (lambda ()
                           (gxc#compile-scm-file__0
                            _scm064305_
                            _runtime-code64303_))
                         gxc#current-compile-keep-scm
                         '#t)
                        (if (file-exists? _scms64308_)
                            (delete-file _scms64308_)
                            '#!void)
                        (gxc#verbose
                         '"copy static module "
                         _scm064305_
                         '" => "
                         _scms64308_)
                        (copy-file _scm064305_ _scms64308_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm064305_))))))
                 (_generate-loader-code64275_
                  (lambda (_ctx64282_ _code64283_ _rt64284_)
                    (let* ((_loader-code64287_
                            (call-with-parameters
                             (lambda ()
                               (gxc#apply-generate-loader _code64283_))
                             gx#current-expander-context
                             _ctx64282_))
                           (_loader-code64289_
                            (if _rt64284_
                                (cons 'begin
                                      (cons _loader-code64287_
                                            (cons (cons 'load-module
                                                        (cons _rt64284_ '()))
                                                  '())))
                                _loader-code64287_)))
                      (call-with-parameters
                       (lambda ()
                         (gxc#compile-scm-file__0
                          (gxc#compile-output-file _ctx64282_ 'rt '".scm")
                          _loader-code64289_))
                       gxc#current-compile-gsc-options
                       '#f)))))
          (let ((_all-modules64277_
                 (cons _ctx64270_ (gxc#lift-nested-modules _ctx64270_))))
            (for-each
             (lambda (_ctx64279_)
               (call-with-parameters
                (lambda () (_compile164272_ _ctx64279_))
                gxc#current-compile-decls
                '()))
             _all-modules64277_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx64172_)
        (letrec ((_compile-ssi64174_
                  (lambda (_code64240_)
                    (let* ((_path64242_
                            (gxc#compile-output-file _ctx64172_ '#f '".ssi"))
                           (_prelude64253_
                            (let* ((_super64244_
                                    (##structure-ref
                                     _ctx64172_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e64246_
                                    (##structure-ref
                                     _super64244_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e64246_
                                  ((lambda (_g6424864250_)
                                     (make-symbol '":" _g6424864250_))
                                   _$e64246_)
                                  ':<root>)))
                           (_ns64255_
                            (##structure-ref
                             _ctx64172_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr64257_
                            (symbol->string
                             (##structure-ref
                              _ctx64172_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg64264_
                            (let ((_$e64259_
                                   (string-rindex _idstr64257_ '#\/)))
                              (if _$e64259_
                                  ((lambda (_x64262_)
                                     (string->symbol
                                      (substring _idstr64257_ '0 _x64262_)))
                                   _$e64259_)
                                  '#f)))
                           (_rt64266_
                            (table-ref
                             (gxc#current-compile-runtime-sections)
                             _ctx64172_
                             '#f)))
                      (gxc#verbose '"compile " _path64242_)
                      (gxc#with-output-to-scheme-file
                       _path64242_
                       (lambda ()
                         (displayln '"prelude:" '" " _prelude64253_)
                         (if _pkg64264_
                             (displayln '"package:" '" " _pkg64264_)
                             '#!void)
                         (displayln '"namespace:" '" " _ns64255_)
                         (newline)
                         (pretty-print _code64240_)
                         (if _rt64266_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _rt64266_ '()))
                                                '()))))
                             '#!void))))))
                 (_compile-phi64175_
                  (lambda (_part64180_)
                    (let* ((_part6418164194_ _part64180_)
                           (_E6418364198_
                            (lambda ()
                              (error '"No clause matching" _part6418164194_)))
                           (_K6418464209_
                            (lambda (_code64201_
                                     _n64202_
                                     _phi64203_
                                     _phi-ctx64204_)
                              (let ((_code64207_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code64201_))
                                      gx#current-expander-context
                                      _phi-ctx64204_
                                      gx#current-expander-phi
                                      _phi64203_)))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _ctx64172_
                                  _n64202_
                                  '".scm")
                                 _code64207_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part6418164194_))
                          (let ((_hd6418564212_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part6418164194_)))
                                (_tl6418664214_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part6418164194_))))
                            (let ((_phi-ctx64217_ _hd6418564212_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl6418664214_))
                                  (let ((_hd6418764219_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl6418664214_)))
                                        (_tl6418864221_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl6418664214_))))
                                    (let ((_phi64224_ _hd6418764219_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6418864221_))
                                          (let ((_hd6418964226_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6418864221_)))
                                                (_tl6419064228_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6418864221_))))
                                            (let ((_n64231_ _hd6418964226_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl6419064228_))
                                                  (let ((_hd6419164233_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl6419064228_)))
                                                        (_tl6419264235_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl6419064228_))))
                                                    (let ((_code64238_
                                                           _hd6419164233_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl6419264235_))
                                                          (_K6418464209_
                                                           _code64238_
                                                           _n64231_
                                                           _phi64224_
                                                           _phi-ctx64217_)
                                                          (_E6418364198_))))
                                                  (_E6418364198_))))
                                          (_E6418364198_))))
                                  (_E6418364198_))))
                          (_E6418364198_))))))
          (let ((_g65215_ (gxc#generate-meta-code _ctx64172_)))
            (begin
              (let ((_g65216_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g65215_)
                           (##vector-length _g65215_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g65216_ 2)))
                    (error "Context expects 2 values" _g65216_)))
              (let ((_ssi-code64177_
                     (let () (declare (not safe)) (##vector-ref _g65215_ 0)))
                    (_phi-code64178_
                     (let () (declare (not safe)) (##vector-ref _g65215_ 1))))
                (begin
                  (_compile-ssi64174_ _ssi-code64177_)
                  (for-each _compile-phi64175_ _phi-code64178_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx64155_)
        (let* ((_path64157_
                (gxc#compile-output-file _ctx64155_ '#f '".ssxi.ss"))
               (_code64159_
                (gxc#apply-generate-ssxi
                 (##structure-ref _ctx64155_ '11 gx#module-context::t '#f)))
               (_idstr64161_
                (symbol->string
                 (##structure-ref _ctx64155_ '1 gx#expander-context::t '#f)))
               (_pkg64168_
                (let ((_$e64163_ (string-rindex _idstr64161_ '#\/)))
                  (if _$e64163_
                      ((lambda (_x64166_)
                         (string->symbol (substring _idstr64161_ '0 _x64166_)))
                       _$e64163_)
                      '#f))))
          (gxc#verbose '"compile " _path64157_)
          (gxc#with-output-to-scheme-file
           _path64157_
           (lambda ()
             (displayln '"prelude: :gerbil/compiler/ssxi")
             (if _pkg64168_ (displayln '"package: " _pkg64168_) '#!void)
             (newline)
             (pretty-print _code64159_))))))
    (define gxc#generate-meta-code
      (lambda (_ctx64148_)
        (let* ((_state64150_
                (let ((__obj65210 (make-object gxc#meta-state::t '4)))
                  (gxc#meta-state:::init! __obj65210 _ctx64148_)
                  __obj65210))
               (_ssi-code64152_
                (gxc#apply-generate-meta
                 (##structure-ref _ctx64148_ '11 gx#module-context::t '#f)
                 _state64150_)))
          (values _ssi-code64152_ (gxc#meta-state-end! _state64150_)))))
    (define gxc#generate-runtime-phi
      (lambda (_stx64141_)
        (let ((_lifts64143_ (box '())))
          (call-with-parameters
           (lambda ()
             (let ((_code64146_ (gxc#apply-generate-runtime-phi _stx64141_)))
               (if (null? (unbox _lifts64143_))
                   _code64146_
                   (cons 'begin
                         (foldr1 cons
                                 (cons _code64146_ '())
                                 (reverse (unbox _lifts64143_)))))))
           gxc#current-compile-lift
           _lifts64143_
           gxc#current-compile-marks
           (make-table 'test: eq?)
           gxc#current-compile-identifiers
           (gxc#make-bound-identifier-table)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx64137_)
        (let ((_modules64139_ (box '())))
          (gxc#apply-lift-modules
           (##structure-ref _ctx64137_ '11 gx#module-context::t '#f)
           _modules64139_)
          (reverse (unbox _modules64139_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path64120_ _code64121_ _phi?64122_)
        (gxc#verbose '"compile " _path64120_)
        (gxc#with-output-to-scheme-file
         _path64120_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (foldr1 cons
                                            '()
                                            (if _phi?64122_
                                                '((inlining-limit 200))
                                                '())))))))
           (pretty-print _code64121_)))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path64120_ _phi?64122_)
            '#!void)
        (if (gxc#current-compile-keep-scm) '#!void (delete-file _path64120_))))
    (define gxc#compile-scm-file__0
      (lambda (_path64128_ _code64129_)
        (let ((_phi?64131_ '#f))
          (gxc#compile-scm-file__% _path64128_ _code64129_ _phi?64131_))))
    (define gxc#compile-scm-file
      (lambda _g65218_
        (let ((_g65217_ (let () (declare (not safe)) (##length _g65218_))))
          (cond ((let () (declare (not safe)) (##fx= _g65217_ 2))
                 (apply gxc#compile-scm-file__0 _g65218_))
                ((let () (declare (not safe)) (##fx= _g65217_ 3))
                 (apply gxc#compile-scm-file__% _g65218_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g65218_))))))
    (define gxc#gsc-debug-options__%
      (lambda (_phi?64040_)
        (if (gxc#current-compile-debug)
            (if _phi?64040_
                '()
                (cons '"-debug-environments" (cons '"-track-scheme" '())))
            '())))
    (define gxc#gsc-debug-options__0
      (lambda ()
        (let ((_phi?64115_ '#f)) (gxc#gsc-debug-options__% _phi?64115_))))
    (define gxc#gsc-debug-options
      (lambda _g65220_
        (let ((_g65219_ (let () (declare (not safe)) (##length _g65220_))))
          (cond ((let () (declare (not safe)) (##fx= _g65219_ 0))
                 (apply gxc#gsc-debug-options__0 _g65220_))
                ((let () (declare (not safe)) (##fx= _g65219_ 1))
                 (apply gxc#gsc-debug-options__% _g65220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-debug-options
                  _g65220_))))))
    (define gxc#gsc-compile-file
      (lambda (_path64026_ _phi?64027_)
        (let* ((_gsc-args64034_
                (let ((_$e64029_ (gxc#current-compile-gsc-options)))
                  (if _$e64029_
                      ((lambda (_opts64032_)
                         (foldr1 cons (cons _path64026_ '()) _opts64032_))
                       _$e64029_)
                      (cons _path64026_ '()))))
               (_gsc-args64036_
                (foldr1 cons
                        (foldr1 cons
                                _gsc-args64034_
                                (gxc#gsc-debug-options__% _phi?64027_))
                        gxc#gsc-runtime-args)))
          (gxc#invoke (gxc#gerbil-gsc) _gsc-args64036_))))
    (define gxc#compile-output-file
      (lambda (_ctx63998_ _n63999_ _ext64000_)
        (letrec ((_module-relative-path64002_
                  (lambda (_ctx64024_)
                    (path-strip-directory
                     (gxc#module-id->path-string
                      (##structure-ref
                       _ctx64024_
                       '1
                       gx#expander-context::t
                       '#f)))))
                 (_module-source-directory64003_
                  (lambda (_ctx64020_)
                    (path-directory
                     (let ((_mpath64022_
                            (##structure-ref
                             _ctx64020_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _mpath64022_)
                           _mpath64022_
                           (last _mpath64022_))))))
                 (_section-string64004_
                  (lambda (_n64018_)
                    (if (number? _n64018_)
                        (number->string _n64018_)
                        (if (symbol? _n64018_)
                            (symbol->string _n64018_)
                            (if (string? _n64018_)
                                _n64018_
                                (gxc#raise-compile-error
                                 '"Unexpected section"
                                 _n64018_))))))
                 (_file-name64005_
                  (lambda (_path64016_)
                    (if _n63999_
                        (string-append
                         _path64016_
                         '"__"
                         (_section-string64004_ _n63999_)
                         _ext64000_)
                        (string-append _path64016_ _ext64000_))))
                 (_file-path64006_
                  (lambda ()
                    (let ((_$e64011_ (gxc#current-compile-output-dir)))
                      (if _$e64011_
                          ((lambda (_outdir64014_)
                             (path-expand
                              (_file-name64005_
                               (gxc#module-id->path-string
                                (##structure-ref
                                 _ctx63998_
                                 '1
                                 gx#expander-context::t
                                 '#f)))
                              _outdir64014_))
                           _$e64011_)
                          (path-expand
                           (_file-name64005_
                            (_module-relative-path64002_ _ctx63998_))
                           (_module-source-directory64003_ _ctx63998_)))))))
          (let ((_path64008_ (_file-path64006_)))
            (create-directory* (path-directory _path64008_))
            _path64008_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx63981_)
        (letrec ((_file-name63983_
                  (lambda (_id63996_)
                    (string-append
                     (gxc#static-module-name _id63996_)
                     '".scm")))
                 (_file-path63984_
                  (lambda ()
                    (let* ((_file63989_
                            (_file-name63983_
                             (##structure-ref
                              _ctx63981_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_$e63991_ (gxc#current-compile-output-dir)))
                      (if _$e63991_
                          ((lambda (_outdir63994_)
                             (path-expand
                              _file63989_
                              (path-expand '"static" _outdir63994_)))
                           _$e63991_)
                          (path-expand _file63989_ '"static"))))))
          (let ((_path63986_ (_file-path63984_)))
            (create-directory* (path-directory _path63986_))
            _path63986_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx63968_ _opts63969_)
        (let ((_$e63971_ (pgetq 'output-file: _opts63969_)))
          (if _$e63971_
              (values _$e63971_)
              (let* ((_mod-str63974_
                      (symbol->string
                       (##structure-ref
                        _ctx63968_
                        '1
                        gx#expander-context::t
                        '#f)))
                     (_$e63976_ (string-rindex _mod-str63974_ '#\/)))
                (if _$e63976_
                    ((lambda (_ix63979_)
                       (substring
                        _mod-str63974_
                        (fx+ _ix63979_ '1)
                        (string-length _mod-str63974_)))
                     _$e63976_)
                    _mod-str63974_))))))
    (define gxc#static-module-name
      (lambda (_idstr63961_)
        (if (string? _idstr63961_)
            (let* ((_str63963_ (gxc#module-id->path-string _idstr63961_))
                   (_strs63965_ (string-split _str63963_ '#\/)))
              (string-join _strs63965_ '"__"))
            (if (symbol? _idstr63961_)
                (gxc#static-module-name (symbol->string _idstr63961_))
                (error '"Bad module id" _idstr63961_)))))
    (define gxc#invoke
      (lambda (_program63953_ _args63954_)
        (gxc#verbose '"invoke " (cons _program63953_ _args63954_))
        (let* ((_proc63956_
                (open-process
                 (cons 'path:
                       (cons _program63953_
                             (cons 'arguments:
                                   (cons _args63954_
                                         (cons 'stdout-redirection:
                                               (cons '#f
                                                     (cons 'stderr-redirection:
                                                           (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_status63958_ (process-status _proc63956_)))
          (close-port _proc63956_)
          (if (zero? _status63958_)
              '#!void
              (gxc#raise-compile-error
               '"Compilation error; process exit with nonzero status"
               _program63953_)))))))
