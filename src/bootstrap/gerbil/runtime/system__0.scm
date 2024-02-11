(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1707660400)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-45-g9050ab8a"))
    (define gerbil-system-manifest
      (let ((__tmp69043
             (let ((__tmp69044
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp69044)))
            (__tmp69040
             (let ((__tmp69041
                    (let ((__tmp69042 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp69042))))
               (declare (not safe))
               (cons __tmp69041 '()))))
        (declare (not safe))
        (cons __tmp69043 __tmp69040)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest64516_ _port64517_)
        (let ((_p64523_
               (lambda (_g6451864520_) (display _g6451864520_ _port64517_)))
              (_l64524_ (length _manifest64516_))
              (_i64525_ '0))
          (for-each
           (lambda (_layer64527_)
             (if (let () (declare (not safe)) (zero? _i64525_))
                 '#!void
                 (if (= _i64525_ '1)
                     (let () (declare (not safe)) (_p64523_ '" on "))
                     (let () (declare (not safe)) (_p64523_ '", "))))
             (let* ((_layer6452864535_ _layer64527_)
                    (_E6453064539_
                     (lambda ()
                       (error '"No clause matching" _layer6452864535_)))
                    (_K6453164545_
                     (lambda (_version64542_ _name64543_)
                       (let () (declare (not safe)) (_p64523_ _name64543_))
                       (let () (declare (not safe)) (_p64523_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p64523_ _version64542_)))))
               (if (let () (declare (not safe)) (##pair? _layer6452864535_))
                   (let ((_hd6453264548_
                          (let ()
                            (declare (not safe))
                            (##car _layer6452864535_)))
                         (_tl6453364550_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6452864535_))))
                     (let* ((_name64553_ _hd6453264548_)
                            (_version64555_ _tl6453364550_))
                       (declare (not safe))
                       (_K6453164545_ _version64555_ _name64553_)))
                   (let () (declare (not safe)) (_E6453064539_))))
             (set! _i64525_ (+ _i64525_ '1)))
           _manifest64516_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest64561_ build-manifest)
               (_port64563_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64561_ _port64563_))))
    (define display-build-manifest__1
      (lambda (_manifest64565_)
        (let ((_port64567_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64565_ _port64567_))))
    (define display-build-manifest
      (lambda _g69046_
        (let ((_g69045_ (let () (declare (not safe)) (##length _g69046_))))
          (cond ((let () (declare (not safe)) (##fx= _g69045_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g69046_))
                ((let () (declare (not safe)) (##fx= _g69045_ 1))
                 (apply (lambda (_manifest64565_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest64565_)))
                        _g69046_))
                ((let () (declare (not safe)) (##fx= _g69045_ 2))
                 (apply (lambda (_manifest64569_ _port64570_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest64569_
                             _port64570_)))
                        _g69046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g69046_))))))
    (define build-manifest/layer
      (lambda (_layer64511_)
        (let ((_l64513_ (assoc _layer64511_ build-manifest)))
          (if _l64513_
              (let () (declare (not safe)) (cons _l64513_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp69047 (car build-manifest)))
          (declare (not safe))
          (cons __tmp69047 '()))))
    (define build-manifest-string__%
      (lambda (_manifest64498_)
        (call-with-output-string
         '()
         (lambda (_p64500_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest64498_ _p64500_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest64506_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest64506_))))
    (define build-manifest-string
      (lambda _g69049_
        (let ((_g69048_ (let () (declare (not safe)) (##length _g69049_))))
          (cond ((let () (declare (not safe)) (##fx= _g69048_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g69049_))
                ((let () (declare (not safe)) (##fx= _g69048_ 1))
                 (apply (lambda (_manifest64508_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest64508_)))
                        _g69049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g69049_))))))
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
        (let ((_$e64492_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e64492_ _$e64492_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e64488_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e64488_ _$e64488_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp69050 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp69050 '#\')))))))
