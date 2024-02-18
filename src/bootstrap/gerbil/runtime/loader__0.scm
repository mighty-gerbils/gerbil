(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708247273)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath122987_ _reload?122988_)
        (let ((_$e122990_
               (if (let () (declare (not safe)) (not _reload?122988_))
                   (let ((__tmp127076 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp127076 _modpath122987_))
                   '#f)))
          (if _$e122990_
              _$e122990_
              (let ((_$e122993_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath122987_))))
                (if _$e122993_
                    ((lambda (_path122996_)
                       (let ((_lpath122998_ (load _path122996_)))
                         (let ((__tmp127077 (current-module-registry)))
                           (declare (not safe))
                           (table-set!
                            __tmp127077
                            _modpath122987_
                            _lpath122998_))
                         _lpath122998_))
                     _$e122993_)
                    (error '"module not found" _modpath122987_)))))))
    (define load-module__0
      (lambda (_modpath123003_)
        (let ((_reload?123005_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath123003_ _reload?123005_))))
    (define load-module
      (lambda _g127079_
        (let ((_g127078_ (let () (declare (not safe)) (##length _g127079_))))
          (cond ((let () (declare (not safe)) (##fx= _g127078_ 1))
                 (apply (lambda (_modpath123003_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath123003_)))
                        _g127079_))
                ((let () (declare (not safe)) (##fx= _g127078_ 2))
                 (apply (lambda (_modpath123007_ _reload?123008_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath123007_ _reload?123008_)))
                        _g127079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g127079_))))))
    (define find-library-module
      (lambda (_modpath122921_)
        (letrec ((_find-compiled-file122923_
                  (lambda (_npath122975_)
                    (let ((_basepath122977_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath122975_ '".o"))))
                      (let _lp122979_ ((_current122981_ '#f) (_n122982_ '1))
                        (let ((_next122984_
                               (let ((__tmp127080 (number->string _n122982_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath122977_
                                  __tmp127080))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next122984_))
                              (let ((__tmp127081
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n122982_ '1))))
                                (declare (not safe))
                                (_lp122979_ _next122984_ __tmp127081))
                              _current122981_))))))
                 (_find-source-file122924_
                  (lambda (_npath122971_)
                    (let ((_spath122973_
                           (string-append _npath122971_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath122973_))
                          _spath122973_
                          '#f)))))
          (let _lp122926_ ((_rest122928_ (current-module-library-path)))
            (let* ((_rest122929122937_ _rest122928_)
                   (_else122931122945_ (lambda () '#f))
                   (_K122933122959_
                    (lambda (_rest122948_ _dir122949_)
                      (let* ((_npath122951_
                              (path-expand
                               _modpath122921_
                               (path-expand _dir122949_)))
                             (_$e122953_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file122923_ _npath122951_))))
                        (if _$e122953_
                            (path-normalize _$e122953_)
                            (let ((_$e122956_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file122924_
                                      _npath122951_))))
                              (if _$e122956_
                                  (path-normalize _$e122956_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp122926_ _rest122948_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest122929122937_))
                  (let ((_hd122934122962_
                         (let ()
                           (declare (not safe))
                           (##car _rest122929122937_)))
                        (_tl122935122964_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest122929122937_))))
                    (let* ((_dir122967_ _hd122934122962_)
                           (_rest122969_ _tl122935122964_))
                      (declare (not safe))
                      (_K122933122959_ _rest122969_ _dir122967_)))
                  (let () (declare (not safe)) (_else122931122945_))))))))))
