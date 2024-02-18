(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1708247272)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-53-g21b6c132"))
    (define gerbil-system-manifest
      (let ((__tmp78097
             (let ((__tmp78098
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp78098)))
            (__tmp78094
             (let ((__tmp78095
                    (let ((__tmp78096 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp78096))))
               (declare (not safe))
               (cons __tmp78095 '()))))
        (declare (not safe))
        (cons __tmp78097 __tmp78094)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest73971_ _port73972_)
        (let ((_p73978_
               (lambda (_g7397373975_) (display _g7397373975_ _port73972_)))
              (_l73979_ (length _manifest73971_))
              (_i73980_ '0))
          (for-each
           (lambda (_layer73982_)
             (if (let () (declare (not safe)) (zero? _i73980_))
                 '#!void
                 (if (= _i73980_ '1)
                     (let () (declare (not safe)) (_p73978_ '" on "))
                     (let () (declare (not safe)) (_p73978_ '", "))))
             (let* ((_layer7398373990_ _layer73982_)
                    (_E7398573994_
                     (lambda ()
                       (error '"No clause matching" _layer7398373990_)))
                    (_K7398674000_
                     (lambda (_version73997_ _name73998_)
                       (let () (declare (not safe)) (_p73978_ _name73998_))
                       (let () (declare (not safe)) (_p73978_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p73978_ _version73997_)))))
               (if (let () (declare (not safe)) (##pair? _layer7398373990_))
                   (let ((_hd7398774003_
                          (let ()
                            (declare (not safe))
                            (##car _layer7398373990_)))
                         (_tl7398874005_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer7398373990_))))
                     (let* ((_name74008_ _hd7398774003_)
                            (_version74010_ _tl7398874005_))
                       (declare (not safe))
                       (_K7398674000_ _version74010_ _name74008_)))
                   (let () (declare (not safe)) (_E7398573994_))))
             (set! _i73980_ (+ _i73980_ '1)))
           _manifest73971_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest74016_ build-manifest)
               (_port74018_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest74016_ _port74018_))))
    (define display-build-manifest__1
      (lambda (_manifest74020_)
        (let ((_port74022_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest74020_ _port74022_))))
    (define display-build-manifest
      (lambda _g78100_
        (let ((_g78099_ (let () (declare (not safe)) (##length _g78100_))))
          (cond ((let () (declare (not safe)) (##fx= _g78099_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g78100_))
                ((let () (declare (not safe)) (##fx= _g78099_ 1))
                 (apply (lambda (_manifest74020_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest74020_)))
                        _g78100_))
                ((let () (declare (not safe)) (##fx= _g78099_ 2))
                 (apply (lambda (_manifest74024_ _port74025_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest74024_
                             _port74025_)))
                        _g78100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g78100_))))))
    (define build-manifest/layer
      (lambda (_layer73966_)
        (let ((_l73968_ (assoc _layer73966_ build-manifest)))
          (if _l73968_
              (let () (declare (not safe)) (cons _l73968_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp78101 (car build-manifest)))
          (declare (not safe))
          (cons __tmp78101 '()))))
    (define build-manifest-string__%
      (lambda (_manifest73953_)
        (call-with-output-string
         '()
         (lambda (_p73955_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest73953_ _p73955_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest73961_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest73961_))))
    (define build-manifest-string
      (lambda _g78103_
        (let ((_g78102_ (let () (declare (not safe)) (##length _g78103_))))
          (cond ((let () (declare (not safe)) (##fx= _g78102_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g78103_))
                ((let () (declare (not safe)) (##fx= _g78102_ 1))
                 (apply (lambda (_manifest73963_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest73963_)))
                        _g78103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g78103_))))))
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
        (let ((_$e73947_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e73947_ _$e73947_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e73943_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e73943_ _$e73943_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp78104 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp78104 '#\')))))))
