(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1707651231)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-40-g2e5c26e7"))
    (define gerbil-system-manifest
      (let ((__tmp69041
             (let ((__tmp69042
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp69042)))
            (__tmp69038
             (let ((__tmp69039
                    (let ((__tmp69040 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp69040))))
               (declare (not safe))
               (cons __tmp69039 '()))))
        (declare (not safe))
        (cons __tmp69041 __tmp69038)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest64514_ _port64515_)
        (let ((_p64521_
               (lambda (_g6451664518_) (display _g6451664518_ _port64515_)))
              (_l64522_ (length _manifest64514_))
              (_i64523_ '0))
          (for-each
           (lambda (_layer64525_)
             (if (let () (declare (not safe)) (zero? _i64523_))
                 '#!void
                 (if (= _i64523_ '1)
                     (let () (declare (not safe)) (_p64521_ '" on "))
                     (let () (declare (not safe)) (_p64521_ '", "))))
             (let* ((_layer6452664533_ _layer64525_)
                    (_E6452864537_
                     (lambda ()
                       (error '"No clause matching" _layer6452664533_)))
                    (_K6452964543_
                     (lambda (_version64540_ _name64541_)
                       (let () (declare (not safe)) (_p64521_ _name64541_))
                       (let () (declare (not safe)) (_p64521_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p64521_ _version64540_)))))
               (if (let () (declare (not safe)) (##pair? _layer6452664533_))
                   (let ((_hd6453064546_
                          (let ()
                            (declare (not safe))
                            (##car _layer6452664533_)))
                         (_tl6453164548_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6452664533_))))
                     (let* ((_name64551_ _hd6453064546_)
                            (_version64553_ _tl6453164548_))
                       (declare (not safe))
                       (_K6452964543_ _version64553_ _name64551_)))
                   (let () (declare (not safe)) (_E6452864537_))))
             (set! _i64523_ (+ _i64523_ '1)))
           _manifest64514_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest64559_ build-manifest)
               (_port64561_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64559_ _port64561_))))
    (define display-build-manifest__1
      (lambda (_manifest64563_)
        (let ((_port64565_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64563_ _port64565_))))
    (define display-build-manifest
      (lambda _g69044_
        (let ((_g69043_ (let () (declare (not safe)) (##length _g69044_))))
          (cond ((let () (declare (not safe)) (##fx= _g69043_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g69044_))
                ((let () (declare (not safe)) (##fx= _g69043_ 1))
                 (apply (lambda (_manifest64563_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest64563_)))
                        _g69044_))
                ((let () (declare (not safe)) (##fx= _g69043_ 2))
                 (apply (lambda (_manifest64567_ _port64568_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest64567_
                             _port64568_)))
                        _g69044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g69044_))))))
    (define build-manifest/layer
      (lambda (_layer64509_)
        (let ((_l64511_ (assoc _layer64509_ build-manifest)))
          (if _l64511_
              (let () (declare (not safe)) (cons _l64511_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp69045 (car build-manifest)))
          (declare (not safe))
          (cons __tmp69045 '()))))
    (define build-manifest-string__%
      (lambda (_manifest64496_)
        (call-with-output-string
         '()
         (lambda (_p64498_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest64496_ _p64498_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest64504_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest64504_))))
    (define build-manifest-string
      (lambda _g69047_
        (let ((_g69046_ (let () (declare (not safe)) (##length _g69047_))))
          (cond ((let () (declare (not safe)) (##fx= _g69046_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g69047_))
                ((let () (declare (not safe)) (##fx= _g69046_ 1))
                 (apply (lambda (_manifest64506_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest64506_)))
                        _g69047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g69047_))))))
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
        (let ((_$e64490_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e64490_ _$e64490_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e64486_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e64486_ _$e64486_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp69048 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp69048 '#\')))))))
