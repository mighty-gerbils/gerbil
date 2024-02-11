(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1707647931)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-39-g98db79ce"))
    (define gerbil-system-manifest
      (let ((__tmp69137
             (let ((__tmp69138
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp69138)))
            (__tmp69134
             (let ((__tmp69135
                    (let ((__tmp69136 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp69136))))
               (declare (not safe))
               (cons __tmp69135 '()))))
        (declare (not safe))
        (cons __tmp69137 __tmp69134)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest64610_ _port64611_)
        (let ((_p64617_
               (lambda (_g6461264614_) (display _g6461264614_ _port64611_)))
              (_l64618_ (length _manifest64610_))
              (_i64619_ '0))
          (for-each
           (lambda (_layer64621_)
             (if (let () (declare (not safe)) (zero? _i64619_))
                 '#!void
                 (if (= _i64619_ '1)
                     (let () (declare (not safe)) (_p64617_ '" on "))
                     (let () (declare (not safe)) (_p64617_ '", "))))
             (let* ((_layer6462264629_ _layer64621_)
                    (_E6462464633_
                     (lambda ()
                       (error '"No clause matching" _layer6462264629_)))
                    (_K6462564639_
                     (lambda (_version64636_ _name64637_)
                       (let () (declare (not safe)) (_p64617_ _name64637_))
                       (let () (declare (not safe)) (_p64617_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p64617_ _version64636_)))))
               (if (let () (declare (not safe)) (##pair? _layer6462264629_))
                   (let ((_hd6462664642_
                          (let ()
                            (declare (not safe))
                            (##car _layer6462264629_)))
                         (_tl6462764644_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6462264629_))))
                     (let* ((_name64647_ _hd6462664642_)
                            (_version64649_ _tl6462764644_))
                       (declare (not safe))
                       (_K6462564639_ _version64649_ _name64647_)))
                   (let () (declare (not safe)) (_E6462464633_))))
             (set! _i64619_ (+ _i64619_ '1)))
           _manifest64610_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest64655_ build-manifest)
               (_port64657_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64655_ _port64657_))))
    (define display-build-manifest__1
      (lambda (_manifest64659_)
        (let ((_port64661_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64659_ _port64661_))))
    (define display-build-manifest
      (lambda _g69140_
        (let ((_g69139_ (let () (declare (not safe)) (##length _g69140_))))
          (cond ((let () (declare (not safe)) (##fx= _g69139_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g69140_))
                ((let () (declare (not safe)) (##fx= _g69139_ 1))
                 (apply (lambda (_manifest64659_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest64659_)))
                        _g69140_))
                ((let () (declare (not safe)) (##fx= _g69139_ 2))
                 (apply (lambda (_manifest64663_ _port64664_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest64663_
                             _port64664_)))
                        _g69140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g69140_))))))
    (define build-manifest/layer
      (lambda (_layer64605_)
        (let ((_l64607_ (assoc _layer64605_ build-manifest)))
          (if _l64607_
              (let () (declare (not safe)) (cons _l64607_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp69141 (car build-manifest)))
          (declare (not safe))
          (cons __tmp69141 '()))))
    (define build-manifest-string__%
      (lambda (_manifest64592_)
        (call-with-output-string
         '()
         (lambda (_p64594_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest64592_ _p64594_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest64600_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest64600_))))
    (define build-manifest-string
      (lambda _g69143_
        (let ((_g69142_ (let () (declare (not safe)) (##length _g69143_))))
          (cond ((let () (declare (not safe)) (##fx= _g69142_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g69143_))
                ((let () (declare (not safe)) (##fx= _g69142_ 1))
                 (apply (lambda (_manifest64602_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest64602_)))
                        _g69143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g69143_))))))
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
        (let ((_$e64586_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e64586_ _$e64586_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e64582_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e64582_ _$e64582_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp69144 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp69144 '#\')))))))
