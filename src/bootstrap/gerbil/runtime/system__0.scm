(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1710617600)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-73-g655c760e"))
    (define gerbil-system-manifest
      (let ((__tmp59252
             (let ((__tmp59253
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp59253)))
            (__tmp59249
             (let ((__tmp59250
                    (let ((__tmp59251 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp59251))))
               (declare (not safe))
               (cons __tmp59250 '()))))
        (declare (not safe))
        (cons __tmp59252 __tmp59249)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest59193_ _port59194_)
        (let ((_p59200_
               (lambda (_g5919559197_) (display _g5919559197_ _port59194_)))
              (_l59201_ (length _manifest59193_))
              (_i59202_ '0))
          (for-each
           (lambda (_layer59204_)
             (if (let () (declare (not safe)) (zero? _i59202_))
                 '#!void
                 (if (= _i59202_ '1)
                     (let () (declare (not safe)) (_p59200_ '" on "))
                     (let () (declare (not safe)) (_p59200_ '", "))))
             (let* ((_layer5920559212_ _layer59204_)
                    (_E5920759216_
                     (lambda ()
                       (error '"No clause matching" _layer5920559212_)))
                    (_K5920859222_
                     (lambda (_version59219_ _name59220_)
                       (let () (declare (not safe)) (_p59200_ _name59220_))
                       (let () (declare (not safe)) (_p59200_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p59200_ _version59219_)))))
               (if (let () (declare (not safe)) (##pair? _layer5920559212_))
                   (let ((_hd5920959225_
                          (let ()
                            (declare (not safe))
                            (##car _layer5920559212_)))
                         (_tl5921059227_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer5920559212_))))
                     (let* ((_name59230_ _hd5920959225_)
                            (_version59232_ _tl5921059227_))
                       (declare (not safe))
                       (_K5920859222_ _version59232_ _name59230_)))
                   (let () (declare (not safe)) (_E5920759216_))))
             (set! _i59202_ (+ _i59202_ '1)))
           _manifest59193_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest59238_ build-manifest)
               (_port59240_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest59238_ _port59240_))))
    (define display-build-manifest__1
      (lambda (_manifest59242_)
        (let ((_port59244_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest59242_ _port59244_))))
    (define display-build-manifest
      (lambda _g59255_
        (let ((_g59254_ (let () (declare (not safe)) (##length _g59255_))))
          (cond ((let () (declare (not safe)) (##fx= _g59254_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g59255_))
                ((let () (declare (not safe)) (##fx= _g59254_ 1))
                 (apply (lambda (_manifest59242_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest59242_)))
                        _g59255_))
                ((let () (declare (not safe)) (##fx= _g59254_ 2))
                 (apply (lambda (_manifest59246_ _port59247_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest59246_
                             _port59247_)))
                        _g59255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g59255_))))))
    (define build-manifest/layer
      (lambda (_layer59188_)
        (let ((_l59190_ (assoc _layer59188_ build-manifest)))
          (if _l59190_
              (let () (declare (not safe)) (cons _l59190_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp59256 (car build-manifest)))
          (declare (not safe))
          (cons __tmp59256 '()))))
    (define build-manifest-string__%
      (lambda (_manifest59175_)
        (call-with-output-string
         '()
         (lambda (_p59177_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest59175_ _p59177_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest59183_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest59183_))))
    (define build-manifest-string
      (lambda _g59258_
        (let ((_g59257_ (let () (declare (not safe)) (##length _g59258_))))
          (cond ((let () (declare (not safe)) (##fx= _g59257_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g59258_))
                ((let () (declare (not safe)) (##fx= _g59257_ 1))
                 (apply (lambda (_manifest59185_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest59185_)))
                        _g59258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g59258_))))))
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
        (let ((_$e59169_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e59169_ _$e59169_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e59165_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e59165_ _$e59165_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (member '"--enable-smp"
                          (let ((__tmp59259 (configure-command-string)))
                            (declare (not safe))
                            (string-split __tmp59259 '#\'))))
            '#!void)
        __smp?))))
