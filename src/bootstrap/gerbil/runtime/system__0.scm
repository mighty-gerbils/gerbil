(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1708387687)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-37-gbfe6cbdd"))
    (define gerbil-system-manifest
      (let ((__tmp60971
             (let ((__tmp60972
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp60972)))
            (__tmp60968
             (let ((__tmp60969
                    (let ((__tmp60970 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp60970))))
               (declare (not safe))
               (cons __tmp60969 '()))))
        (declare (not safe))
        (cons __tmp60971 __tmp60968)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest60912_ _port60913_)
        (let ((_p60919_
               (lambda (_g6091460916_) (display _g6091460916_ _port60913_)))
              (_l60920_ (length _manifest60912_))
              (_i60921_ '0))
          (for-each
           (lambda (_layer60923_)
             (if (let () (declare (not safe)) (zero? _i60921_))
                 '#!void
                 (if (= _i60921_ '1)
                     (let () (declare (not safe)) (_p60919_ '" on "))
                     (let () (declare (not safe)) (_p60919_ '", "))))
             (let* ((_layer6092460931_ _layer60923_)
                    (_E6092660935_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6092460931_))))
                    (_K6092760941_
                     (lambda (_version60938_ _name60939_)
                       (let () (declare (not safe)) (_p60919_ _name60939_))
                       (let () (declare (not safe)) (_p60919_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p60919_ _version60938_)))))
               (if (let () (declare (not safe)) (##pair? _layer6092460931_))
                   (let ((_hd6092860944_
                          (let ()
                            (declare (not safe))
                            (##car _layer6092460931_)))
                         (_tl6092960946_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6092460931_))))
                     (let* ((_name60949_ _hd6092860944_)
                            (_version60951_ _tl6092960946_))
                       (declare (not safe))
                       (_K6092760941_ _version60951_ _name60949_)))
                   (let () (declare (not safe)) (_E6092660935_))))
             (set! _i60921_ (+ _i60921_ '1)))
           _manifest60912_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest60957_ build-manifest)
               (_port60959_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest60957_ _port60959_))))
    (define display-build-manifest__1
      (lambda (_manifest60961_)
        (let ((_port60963_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest60961_ _port60963_))))
    (define display-build-manifest
      (lambda _g60974_
        (let ((_g60973_ (let () (declare (not safe)) (##length _g60974_))))
          (cond ((let () (declare (not safe)) (##fx= _g60973_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g60974_))
                ((let () (declare (not safe)) (##fx= _g60973_ 1))
                 (apply (lambda (_manifest60961_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest60961_)))
                        _g60974_))
                ((let () (declare (not safe)) (##fx= _g60973_ 2))
                 (apply (lambda (_manifest60965_ _port60966_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest60965_
                             _port60966_)))
                        _g60974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g60974_))))))
    (define build-manifest/layer
      (lambda (_layer60907_)
        (let ((_l60909_ (assoc _layer60907_ build-manifest)))
          (if _l60909_
              (let () (declare (not safe)) (cons _l60909_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp60975 (car build-manifest)))
          (declare (not safe))
          (cons __tmp60975 '()))))
    (define build-manifest-string__%
      (lambda (_manifest60894_)
        (call-with-output-string
         '()
         (lambda (_p60896_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest60894_ _p60896_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest60902_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest60902_))))
    (define build-manifest-string
      (lambda _g60977_
        (let ((_g60976_ (let () (declare (not safe)) (##length _g60977_))))
          (cond ((let () (declare (not safe)) (##fx= _g60976_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g60977_))
                ((let () (declare (not safe)) (##fx= _g60976_ 1))
                 (apply (lambda (_manifest60904_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest60904_)))
                        _g60977_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g60977_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let ()
          (declare (not safe))
          (build-manifest-string__% gerbil-system-manifest))))
    (define gerbil-greeting
      (let () (declare (not safe)) (gerbil-system-version-string)))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_$e60888_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e60888_ _$e60888_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e60884_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e60884_ _$e60884_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp60978 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp60978 '#\')))))))
