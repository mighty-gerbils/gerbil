(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1711709196)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-119-g9b76b5ec"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil"
                  (let () (declare (not safe)) (gerbil-version-string)))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest60798_ _port60799_)
        (let ((_p60805_
               (lambda (_g6080060802_) (display _g6080060802_ _port60799_)))
              (_l60806_ (length _manifest60798_))
              (_i60807_ '0))
          (for-each
           (lambda (_layer60809_)
             (if (zero? _i60807_)
                 '#!void
                 (if (= _i60807_ '1)
                     (let () (declare (not safe)) (_p60805_ '" on "))
                     (let () (declare (not safe)) (_p60805_ '", "))))
             (let* ((_layer6081060817_ _layer60809_)
                    (_E6081260821_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6081060817_))))
                    (_K6081360827_
                     (lambda (_version60824_ _name60825_)
                       (let () (declare (not safe)) (_p60805_ _name60825_))
                       (let () (declare (not safe)) (_p60805_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p60805_ _version60824_)))))
               (if (let () (declare (not safe)) (##pair? _layer6081060817_))
                   (let ((_hd6081460830_
                          (let ()
                            (declare (not safe))
                            (##car _layer6081060817_)))
                         (_tl6081560832_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6081060817_))))
                     (let* ((_name60835_ _hd6081460830_)
                            (_version60837_ _tl6081560832_))
                       (declare (not safe))
                       (_K6081360827_ _version60837_ _name60835_)))
                   (let () (declare (not safe)) (_E6081260821_))))
             (set! _i60807_ (+ _i60807_ '1)))
           _manifest60798_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest60843_ build-manifest)
               (_port60845_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest60843_ _port60845_))))
    (define display-build-manifest__1
      (lambda (_manifest60847_)
        (let ((_port60849_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest60847_ _port60849_))))
    (define display-build-manifest
      (lambda _g60855_
        (let ((_g60854_ (let () (declare (not safe)) (##length _g60855_))))
          (cond ((let () (declare (not safe)) (##fx= _g60854_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g60855_))
                ((let () (declare (not safe)) (##fx= _g60854_ 1))
                 (apply (lambda (_manifest60847_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest60847_)))
                        _g60855_))
                ((let () (declare (not safe)) (##fx= _g60854_ 2))
                 (apply (lambda (_manifest60851_ _port60852_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest60851_
                             _port60852_)))
                        _g60855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g60855_))))))
    (define build-manifest/layer
      (lambda (_layer60793_)
        (let ((_l60795_ (assoc _layer60793_ build-manifest)))
          (if _l60795_ (cons _l60795_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_manifest60780_)
        (call-with-output-string
         '()
         (lambda (_p60782_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest60780_ _p60782_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest60788_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest60788_))))
    (define build-manifest-string
      (lambda _g60857_
        (let ((_g60856_ (let () (declare (not safe)) (##length _g60857_))))
          (cond ((let () (declare (not safe)) (##fx= _g60856_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g60857_))
                ((let () (declare (not safe)) (##fx= _g60856_ 1))
                 (apply (lambda (_manifest60790_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest60790_)))
                        _g60857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g60857_))))))
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
        (let ((_$e60774_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _$e60774_ _$e60774_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e60770_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _$e60770_ _$e60770_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (if (let ((__tmp60858
                             (let ((__tmp60859 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp60859 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp60858))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
