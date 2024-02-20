(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708387688)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath77398_ _reload?77399_)
        (let ((_$e77401_
               (if (let () (declare (not safe)) (not _reload?77399_))
                   (let ((__tmp77420 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp77420 _modpath77398_))
                   '#f)))
          (if _$e77401_
              _$e77401_
              (let ((_$e77404_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath77398_))))
                (if _$e77404_
                    ((lambda (_path77407_)
                       (let ((_lpath77409_ (load _path77407_)))
                         (let ((__tmp77421 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp77421 _modpath77398_ _lpath77409_))
                         _lpath77409_))
                     _$e77404_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath77398_))))))))
    (define load-module__0
      (lambda (_modpath77414_)
        (let ((_reload?77416_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath77414_ _reload?77416_))))
    (define load-module
      (lambda _g77423_
        (let ((_g77422_ (let () (declare (not safe)) (##length _g77423_))))
          (cond ((let () (declare (not safe)) (##fx= _g77422_ 1))
                 (apply (lambda (_modpath77414_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath77414_)))
                        _g77423_))
                ((let () (declare (not safe)) (##fx= _g77422_ 2))
                 (apply (lambda (_modpath77418_ _reload?77419_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath77418_ _reload?77419_)))
                        _g77423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g77423_))))))
    (define find-library-module
      (lambda (_modpath77332_)
        (letrec ((_find-compiled-file77334_
                  (lambda (_npath77386_)
                    (let ((_basepath77388_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath77386_ '".o"))))
                      (let _lp77390_ ((_current77392_ '#f) (_n77393_ '1))
                        (let ((_next77395_
                               (let ((__tmp77424 (number->string _n77393_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath77388_
                                  __tmp77424))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next77395_))
                              (let ((__tmp77425
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n77393_ '1))))
                                (declare (not safe))
                                (_lp77390_ _next77395_ __tmp77425))
                              _current77392_))))))
                 (_find-source-file77335_
                  (lambda (_npath77382_)
                    (let ((_spath77384_ (string-append _npath77382_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath77384_))
                          _spath77384_
                          '#f)))))
          (let _lp77337_ ((_rest77339_ (current-module-library-path)))
            (let* ((_rest7734077348_ _rest77339_)
                   (_else7734277356_ (lambda () '#f))
                   (_K7734477370_
                    (lambda (_rest77359_ _dir77360_)
                      (let* ((_npath77362_
                              (path-expand
                               _modpath77332_
                               (path-expand _dir77360_)))
                             (_$e77364_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file77334_ _npath77362_))))
                        (if _$e77364_
                            (path-normalize _$e77364_)
                            (let ((_$e77367_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file77335_ _npath77362_))))
                              (if _$e77367_
                                  (path-normalize _$e77367_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp77337_ _rest77359_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7734077348_))
                  (let ((_hd7734577373_
                         (let ()
                           (declare (not safe))
                           (##car _rest7734077348_)))
                        (_tl7734677375_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7734077348_))))
                    (let* ((_dir77378_ _hd7734577373_)
                           (_rest77380_ _tl7734677375_))
                      (declare (not safe))
                      (_K7734477370_ _rest77380_ _dir77378_)))
                  (let () (declare (not safe)) (_else7734277356_))))))))))
