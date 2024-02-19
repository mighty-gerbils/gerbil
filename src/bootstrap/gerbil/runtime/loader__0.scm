(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708352924)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath77387_ _reload?77388_)
        (let ((_$e77390_
               (if (let () (declare (not safe)) (not _reload?77388_))
                   (let ((__tmp77409 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp77409 _modpath77387_))
                   '#f)))
          (if _$e77390_
              _$e77390_
              (let ((_$e77393_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath77387_))))
                (if _$e77393_
                    ((lambda (_path77396_)
                       (let ((_lpath77398_ (load _path77396_)))
                         (let ((__tmp77410 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp77410 _modpath77387_ _lpath77398_))
                         _lpath77398_))
                     _$e77393_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath77387_))))))))
    (define load-module__0
      (lambda (_modpath77403_)
        (let ((_reload?77405_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath77403_ _reload?77405_))))
    (define load-module
      (lambda _g77412_
        (let ((_g77411_ (let () (declare (not safe)) (##length _g77412_))))
          (cond ((let () (declare (not safe)) (##fx= _g77411_ 1))
                 (apply (lambda (_modpath77403_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath77403_)))
                        _g77412_))
                ((let () (declare (not safe)) (##fx= _g77411_ 2))
                 (apply (lambda (_modpath77407_ _reload?77408_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath77407_ _reload?77408_)))
                        _g77412_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g77412_))))))
    (define find-library-module
      (lambda (_modpath77321_)
        (letrec ((_find-compiled-file77323_
                  (lambda (_npath77375_)
                    (let ((_basepath77377_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath77375_ '".o"))))
                      (let _lp77379_ ((_current77381_ '#f) (_n77382_ '1))
                        (let ((_next77384_
                               (let ((__tmp77413 (number->string _n77382_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath77377_
                                  __tmp77413))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next77384_))
                              (let ((__tmp77414
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n77382_ '1))))
                                (declare (not safe))
                                (_lp77379_ _next77384_ __tmp77414))
                              _current77381_))))))
                 (_find-source-file77324_
                  (lambda (_npath77371_)
                    (let ((_spath77373_ (string-append _npath77371_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath77373_))
                          _spath77373_
                          '#f)))))
          (let _lp77326_ ((_rest77328_ (current-module-library-path)))
            (let* ((_rest7732977337_ _rest77328_)
                   (_else7733177345_ (lambda () '#f))
                   (_K7733377359_
                    (lambda (_rest77348_ _dir77349_)
                      (let* ((_npath77351_
                              (path-expand
                               _modpath77321_
                               (path-expand _dir77349_)))
                             (_$e77353_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file77323_ _npath77351_))))
                        (if _$e77353_
                            (path-normalize _$e77353_)
                            (let ((_$e77356_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file77324_ _npath77351_))))
                              (if _$e77356_
                                  (path-normalize _$e77356_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp77326_ _rest77348_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7732977337_))
                  (let ((_hd7733477362_
                         (let ()
                           (declare (not safe))
                           (##car _rest7732977337_)))
                        (_tl7733577364_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7732977337_))))
                    (let* ((_dir77367_ _hd7733477362_)
                           (_rest77369_ _tl7733577364_))
                      (declare (not safe))
                      (_K7733377359_ _rest77369_ _dir77367_)))
                  (let () (declare (not safe)) (_else7733177345_))))))))))
