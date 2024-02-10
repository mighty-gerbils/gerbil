(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1707573209)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-33-g7c7beadb"))
    (define gerbil-system-manifest
      (let ((__tmp69320
             (let ((__tmp69321
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp69321)))
            (__tmp69317
             (let ((__tmp69318
                    (let ((__tmp69319 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp69319))))
               (declare (not safe))
               (cons __tmp69318 '()))))
        (declare (not safe))
        (cons __tmp69320 __tmp69317)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest64793_ _port64794_)
        (let ((_p64800_
               (lambda (_g6479564797_) (display _g6479564797_ _port64794_)))
              (_l64801_ (length _manifest64793_))
              (_i64802_ '0))
          (for-each
           (lambda (_layer64804_)
             (if (let () (declare (not safe)) (zero? _i64802_))
                 '#!void
                 (if (= _i64802_ '1)
                     (let () (declare (not safe)) (_p64800_ '" on "))
                     (let () (declare (not safe)) (_p64800_ '", "))))
             (let* ((_layer6480564812_ _layer64804_)
                    (_E6480764816_
                     (lambda ()
                       (error '"No clause matching" _layer6480564812_)))
                    (_K6480864822_
                     (lambda (_version64819_ _name64820_)
                       (let () (declare (not safe)) (_p64800_ _name64820_))
                       (let () (declare (not safe)) (_p64800_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p64800_ _version64819_)))))
               (if (let () (declare (not safe)) (##pair? _layer6480564812_))
                   (let ((_hd6480964825_
                          (let ()
                            (declare (not safe))
                            (##car _layer6480564812_)))
                         (_tl6481064827_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6480564812_))))
                     (let* ((_name64830_ _hd6480964825_)
                            (_version64832_ _tl6481064827_))
                       (declare (not safe))
                       (_K6480864822_ _version64832_ _name64830_)))
                   (let () (declare (not safe)) (_E6480764816_))))
             (set! _i64802_ (+ _i64802_ '1)))
           _manifest64793_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest64838_ build-manifest)
               (_port64840_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64838_ _port64840_))))
    (define display-build-manifest__1
      (lambda (_manifest64842_)
        (let ((_port64844_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64842_ _port64844_))))
    (define display-build-manifest
      (lambda _g69323_
        (let ((_g69322_ (let () (declare (not safe)) (##length _g69323_))))
          (cond ((let () (declare (not safe)) (##fx= _g69322_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g69323_))
                ((let () (declare (not safe)) (##fx= _g69322_ 1))
                 (apply (lambda (_manifest64842_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest64842_)))
                        _g69323_))
                ((let () (declare (not safe)) (##fx= _g69322_ 2))
                 (apply (lambda (_manifest64846_ _port64847_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest64846_
                             _port64847_)))
                        _g69323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g69323_))))))
    (define build-manifest/layer
      (lambda (_layer64788_)
        (let ((_l64790_ (assoc _layer64788_ build-manifest)))
          (if _l64790_
              (let () (declare (not safe)) (cons _l64790_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp69324 (car build-manifest)))
          (declare (not safe))
          (cons __tmp69324 '()))))
    (define build-manifest-string__%
      (lambda (_manifest64775_)
        (call-with-output-string
         '()
         (lambda (_p64777_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest64775_ _p64777_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest64783_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest64783_))))
    (define build-manifest-string
      (lambda _g69326_
        (let ((_g69325_ (let () (declare (not safe)) (##length _g69326_))))
          (cond ((let () (declare (not safe)) (##fx= _g69325_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g69326_))
                ((let () (declare (not safe)) (##fx= _g69325_ 1))
                 (apply (lambda (_manifest64785_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest64785_)))
                        _g69326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g69326_))))))
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
        (let ((_$e64769_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e64769_ _$e64769_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e64765_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e64765_ _$e64765_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp69327 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp69327 '#\')))))))
