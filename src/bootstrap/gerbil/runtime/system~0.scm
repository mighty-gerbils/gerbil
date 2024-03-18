(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1710774315)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-71-gd54cb9b4"))
    (define gerbil-system-manifest
      (let ((__tmp62251
             (let ((__tmp62252
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp62252)))
            (__tmp62248
             (let ((__tmp62249
                    (let ((__tmp62250 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp62250))))
               (declare (not safe))
               (cons __tmp62249 '()))))
        (declare (not safe))
        (cons __tmp62251 __tmp62248)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest62192_ _port62193_)
        (let ((_p62199_
               (lambda (_g6219462196_) (display _g6219462196_ _port62193_)))
              (_l62200_ (length _manifest62192_))
              (_i62201_ '0))
          (for-each
           (lambda (_layer62203_)
             (if (let () (declare (not safe)) (zero? _i62201_))
                 '#!void
                 (if (= _i62201_ '1)
                     (let () (declare (not safe)) (_p62199_ '" on "))
                     (let () (declare (not safe)) (_p62199_ '", "))))
             (let* ((_layer6220462211_ _layer62203_)
                    (_E6220662215_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6220462211_))))
                    (_K6220762221_
                     (lambda (_version62218_ _name62219_)
                       (let () (declare (not safe)) (_p62199_ _name62219_))
                       (let () (declare (not safe)) (_p62199_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p62199_ _version62218_)))))
               (if (let () (declare (not safe)) (##pair? _layer6220462211_))
                   (let ((_hd6220862224_
                          (let ()
                            (declare (not safe))
                            (##car _layer6220462211_)))
                         (_tl6220962226_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6220462211_))))
                     (let* ((_name62229_ _hd6220862224_)
                            (_version62231_ _tl6220962226_))
                       (declare (not safe))
                       (_K6220762221_ _version62231_ _name62229_)))
                   (let () (declare (not safe)) (_E6220662215_))))
             (set! _i62201_ (+ _i62201_ '1)))
           _manifest62192_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest62237_ build-manifest)
               (_port62239_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest62237_ _port62239_))))
    (define display-build-manifest__1
      (lambda (_manifest62241_)
        (let ((_port62243_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest62241_ _port62243_))))
    (define display-build-manifest
      (lambda _g62254_
        (let ((_g62253_ (let () (declare (not safe)) (##length _g62254_))))
          (cond ((let () (declare (not safe)) (##fx= _g62253_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g62254_))
                ((let () (declare (not safe)) (##fx= _g62253_ 1))
                 (apply (lambda (_manifest62241_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest62241_)))
                        _g62254_))
                ((let () (declare (not safe)) (##fx= _g62253_ 2))
                 (apply (lambda (_manifest62245_ _port62246_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest62245_
                             _port62246_)))
                        _g62254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g62254_))))))
    (define build-manifest/layer
      (lambda (_layer62187_)
        (let ((_l62189_ (assoc _layer62187_ build-manifest)))
          (if _l62189_
              (let () (declare (not safe)) (cons _l62189_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp62255 (car build-manifest)))
          (declare (not safe))
          (cons __tmp62255 '()))))
    (define build-manifest-string__%
      (lambda (_manifest62174_)
        (call-with-output-string
         '()
         (lambda (_p62176_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest62174_ _p62176_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest62182_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest62182_))))
    (define build-manifest-string
      (lambda _g62257_
        (let ((_g62256_ (let () (declare (not safe)) (##length _g62257_))))
          (cond ((let () (declare (not safe)) (##fx= _g62256_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g62257_))
                ((let () (declare (not safe)) (##fx= _g62256_ 1))
                 (apply (lambda (_manifest62184_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest62184_)))
                        _g62257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g62257_))))))
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
        (let ((_$e62168_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e62168_ _$e62168_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e62164_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e62164_ _$e62164_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (member '"--enable-smp"
                          (let ((__tmp62258 (configure-command-string)))
                            (declare (not safe))
                            (string-split __tmp62258 '#\'))))
            '#!void)
        __smp?))))
