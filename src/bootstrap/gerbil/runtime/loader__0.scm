(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708165427)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath71067_ _reload?71068_)
        (let ((_$e71070_
               (if (let () (declare (not safe)) (not _reload?71068_))
                   (let ((__tmp75657 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp75657 _modpath71067_ '#f))
                   '#f)))
          (if _$e71070_
              _$e71070_
              (let ((_$e71073_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath71067_))))
                (if _$e71073_
                    ((lambda (_path71076_)
                       (let ((_lpath71078_ (load _path71076_)))
                         (let ((__tmp75658 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp75658 _modpath71067_ _lpath71078_))
                         _lpath71078_))
                     _$e71073_)
                    (error '"module not found" _modpath71067_)))))))
    (define load-module__0
      (lambda (_modpath71083_)
        (let ((_reload?71085_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath71083_ _reload?71085_))))
    (define load-module
      (lambda _g75660_
        (let ((_g75659_ (let () (declare (not safe)) (##length _g75660_))))
          (cond ((let () (declare (not safe)) (##fx= _g75659_ 1))
                 (apply (lambda (_modpath71083_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath71083_)))
                        _g75660_))
                ((let () (declare (not safe)) (##fx= _g75659_ 2))
                 (apply (lambda (_modpath71087_ _reload?71088_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath71087_ _reload?71088_)))
                        _g75660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g75660_))))))
    (define find-library-module
      (lambda (_modpath71001_)
        (letrec ((_find-compiled-file71003_
                  (lambda (_npath71055_)
                    (let ((_basepath71057_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath71055_ '".o"))))
                      (let _lp71059_ ((_current71061_ '#f) (_n71062_ '1))
                        (let ((_next71064_
                               (let ((__tmp75661 (number->string _n71062_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath71057_
                                  __tmp75661))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next71064_))
                              (let ((__tmp75662
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n71062_ '1))))
                                (declare (not safe))
                                (_lp71059_ _next71064_ __tmp75662))
                              _current71061_))))))
                 (_find-source-file71004_
                  (lambda (_npath71051_)
                    (let ((_spath71053_ (string-append _npath71051_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath71053_))
                          _spath71053_
                          '#f)))))
          (let _lp71006_ ((_rest71008_ (current-module-library-path)))
            (let* ((_rest7100971017_ _rest71008_)
                   (_else7101171025_ (lambda () '#f))
                   (_K7101371039_
                    (lambda (_rest71028_ _dir71029_)
                      (let* ((_npath71031_
                              (path-expand
                               _modpath71001_
                               (path-expand _dir71029_)))
                             (_$e71033_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file71003_ _npath71031_))))
                        (if _$e71033_
                            (path-normalize _$e71033_)
                            (let ((_$e71036_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file71004_ _npath71031_))))
                              (if _$e71036_
                                  (path-normalize _$e71036_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp71006_ _rest71028_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7100971017_))
                  (let ((_hd7101471042_
                         (let ()
                           (declare (not safe))
                           (##car _rest7100971017_)))
                        (_tl7101571044_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7100971017_))))
                    (let* ((_dir71047_ _hd7101471042_)
                           (_rest71049_ _tl7101571044_))
                      (declare (not safe))
                      (_K7101371039_ _rest71049_ _dir71047_)))
                  (let () (declare (not safe)) (_else7101171025_))))))))))
