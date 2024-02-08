(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1707415534)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-52-gfbfc2a63"))
    (define gerbil-system-manifest
      (let ((__tmp68219
             (let ((__tmp68220
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp68220)))
            (__tmp68216
             (let ((__tmp68217
                    (let ((__tmp68218 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp68218))))
               (declare (not safe))
               (cons __tmp68217 '()))))
        (declare (not safe))
        (cons __tmp68219 __tmp68216)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest63966_ _port63967_)
        (let ((_p63973_
               (lambda (_g6396863970_) (display _g6396863970_ _port63967_)))
              (_l63974_ (length _manifest63966_))
              (_i63975_ '0))
          (for-each
           (lambda (_layer63977_)
             (if (let () (declare (not safe)) (zero? _i63975_))
                 '#!void
                 (if (= _i63975_ '1)
                     (let () (declare (not safe)) (_p63973_ '" on "))
                     (let () (declare (not safe)) (_p63973_ '", "))))
             (let* ((_layer6397863985_ _layer63977_)
                    (_E6398063989_
                     (lambda ()
                       (error '"No clause matching" _layer6397863985_)))
                    (_K6398163995_
                     (lambda (_version63992_ _name63993_)
                       (let () (declare (not safe)) (_p63973_ _name63993_))
                       (let () (declare (not safe)) (_p63973_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p63973_ _version63992_)))))
               (if (let () (declare (not safe)) (##pair? _layer6397863985_))
                   (let ((_hd6398263998_
                          (let ()
                            (declare (not safe))
                            (##car _layer6397863985_)))
                         (_tl6398364000_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6397863985_))))
                     (let* ((_name64003_ _hd6398263998_)
                            (_version64005_ _tl6398364000_))
                       (declare (not safe))
                       (_K6398163995_ _version64005_ _name64003_)))
                   (let () (declare (not safe)) (_E6398063989_))))
             (set! _i63975_ (+ _i63975_ '1)))
           _manifest63966_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest64011_ build-manifest)
               (_port64013_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64011_ _port64013_))))
    (define display-build-manifest__1
      (lambda (_manifest64015_)
        (let ((_port64017_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64015_ _port64017_))))
    (define display-build-manifest
      (lambda _g68222_
        (let ((_g68221_ (let () (declare (not safe)) (##length _g68222_))))
          (cond ((let () (declare (not safe)) (##fx= _g68221_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g68222_))
                ((let () (declare (not safe)) (##fx= _g68221_ 1))
                 (apply (lambda (_manifest64015_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest64015_)))
                        _g68222_))
                ((let () (declare (not safe)) (##fx= _g68221_ 2))
                 (apply (lambda (_manifest64019_ _port64020_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest64019_
                             _port64020_)))
                        _g68222_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g68222_))))))
    (define build-manifest/layer
      (lambda (_layer63961_)
        (let ((_l63963_ (assoc _layer63961_ build-manifest)))
          (if _l63963_
              (let () (declare (not safe)) (cons _l63963_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp68223 (car build-manifest)))
          (declare (not safe))
          (cons __tmp68223 '()))))
    (define build-manifest-string__%
      (lambda (_manifest63948_)
        (call-with-output-string
         '()
         (lambda (_p63950_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest63948_ _p63950_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest63956_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest63956_))))
    (define build-manifest-string
      (lambda _g68225_
        (let ((_g68224_ (let () (declare (not safe)) (##length _g68225_))))
          (cond ((let () (declare (not safe)) (##fx= _g68224_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g68225_))
                ((let () (declare (not safe)) (##fx= _g68224_ 1))
                 (apply (lambda (_manifest63958_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest63958_)))
                        _g68225_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g68225_))))))
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
        (let ((_$e63942_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e63942_ _$e63942_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e63938_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e63938_ _$e63938_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp68226 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp68226 '#\')))))))
