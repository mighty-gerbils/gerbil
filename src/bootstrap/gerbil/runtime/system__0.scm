(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1707657568)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-41-g6095f378"))
    (define gerbil-system-manifest
      (let ((__tmp69048
             (let ((__tmp69049
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp69049)))
            (__tmp69045
             (let ((__tmp69046
                    (let ((__tmp69047 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp69047))))
               (declare (not safe))
               (cons __tmp69046 '()))))
        (declare (not safe))
        (cons __tmp69048 __tmp69045)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest64521_ _port64522_)
        (let ((_p64528_
               (lambda (_g6452364525_) (display _g6452364525_ _port64522_)))
              (_l64529_ (length _manifest64521_))
              (_i64530_ '0))
          (for-each
           (lambda (_layer64532_)
             (if (let () (declare (not safe)) (zero? _i64530_))
                 '#!void
                 (if (= _i64530_ '1)
                     (let () (declare (not safe)) (_p64528_ '" on "))
                     (let () (declare (not safe)) (_p64528_ '", "))))
             (let* ((_layer6453364540_ _layer64532_)
                    (_E6453564544_
                     (lambda ()
                       (error '"No clause matching" _layer6453364540_)))
                    (_K6453664550_
                     (lambda (_version64547_ _name64548_)
                       (let () (declare (not safe)) (_p64528_ _name64548_))
                       (let () (declare (not safe)) (_p64528_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p64528_ _version64547_)))))
               (if (let () (declare (not safe)) (##pair? _layer6453364540_))
                   (let ((_hd6453764553_
                          (let ()
                            (declare (not safe))
                            (##car _layer6453364540_)))
                         (_tl6453864555_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6453364540_))))
                     (let* ((_name64558_ _hd6453764553_)
                            (_version64560_ _tl6453864555_))
                       (declare (not safe))
                       (_K6453664550_ _version64560_ _name64558_)))
                   (let () (declare (not safe)) (_E6453564544_))))
             (set! _i64530_ (+ _i64530_ '1)))
           _manifest64521_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest64566_ build-manifest)
               (_port64568_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64566_ _port64568_))))
    (define display-build-manifest__1
      (lambda (_manifest64570_)
        (let ((_port64572_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64570_ _port64572_))))
    (define display-build-manifest
      (lambda _g69051_
        (let ((_g69050_ (let () (declare (not safe)) (##length _g69051_))))
          (cond ((let () (declare (not safe)) (##fx= _g69050_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g69051_))
                ((let () (declare (not safe)) (##fx= _g69050_ 1))
                 (apply (lambda (_manifest64570_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest64570_)))
                        _g69051_))
                ((let () (declare (not safe)) (##fx= _g69050_ 2))
                 (apply (lambda (_manifest64574_ _port64575_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest64574_
                             _port64575_)))
                        _g69051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g69051_))))))
    (define build-manifest/layer
      (lambda (_layer64516_)
        (let ((_l64518_ (assoc _layer64516_ build-manifest)))
          (if _l64518_
              (let () (declare (not safe)) (cons _l64518_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp69052 (car build-manifest)))
          (declare (not safe))
          (cons __tmp69052 '()))))
    (define build-manifest-string__%
      (lambda (_manifest64503_)
        (call-with-output-string
         '()
         (lambda (_p64505_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest64503_ _p64505_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest64511_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest64511_))))
    (define build-manifest-string
      (lambda _g69054_
        (let ((_g69053_ (let () (declare (not safe)) (##length _g69054_))))
          (cond ((let () (declare (not safe)) (##fx= _g69053_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g69054_))
                ((let () (declare (not safe)) (##fx= _g69053_ 1))
                 (apply (lambda (_manifest64513_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest64513_)))
                        _g69054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g69054_))))))
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
        (let ((_$e64497_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e64497_ _$e64497_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e64493_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e64493_ _$e64493_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp69055 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp69055 '#\')))))))
