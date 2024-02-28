(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1709125254)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath78445_ _reload?78446_)
        (let ((_$e78448_
               (if (let () (declare (not safe)) (not _reload?78446_))
                   (let ((__tmp78467 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp78467 _modpath78445_))
                   '#f)))
          (if _$e78448_
              _$e78448_
              (let ((_$e78451_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath78445_))))
                (if _$e78451_
                    ((lambda (_path78454_)
                       (let ((_lpath78456_ (load _path78454_)))
                         (let ((__tmp78468 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp78468 _modpath78445_ _lpath78456_))
                         _lpath78456_))
                     _$e78451_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath78445_))))))))
    (define load-module__0
      (lambda (_modpath78461_)
        (let ((_reload?78463_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath78461_ _reload?78463_))))
    (define load-module
      (lambda _g78470_
        (let ((_g78469_ (let () (declare (not safe)) (##length _g78470_))))
          (cond ((let () (declare (not safe)) (##fx= _g78469_ 1))
                 (apply (lambda (_modpath78461_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath78461_)))
                        _g78470_))
                ((let () (declare (not safe)) (##fx= _g78469_ 2))
                 (apply (lambda (_modpath78465_ _reload?78466_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath78465_ _reload?78466_)))
                        _g78470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g78470_))))))
    (define find-library-module
      (lambda (_modpath78379_)
        (letrec ((_find-compiled-file78381_
                  (lambda (_npath78433_)
                    (let ((_basepath78435_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath78433_ '".o"))))
                      (let _lp78437_ ((_current78439_ '#f) (_n78440_ '1))
                        (let ((_next78442_
                               (let ((__tmp78471 (number->string _n78440_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath78435_
                                  __tmp78471))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next78442_))
                              (let ((__tmp78472
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n78440_ '1))))
                                (declare (not safe))
                                (_lp78437_ _next78442_ __tmp78472))
                              _current78439_))))))
                 (_find-source-file78382_
                  (lambda (_npath78429_)
                    (let ((_spath78431_ (string-append _npath78429_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath78431_))
                          _spath78431_
                          '#f)))))
          (let _lp78384_ ((_rest78386_ (current-module-library-path)))
            (let* ((_rest7838778395_ _rest78386_)
                   (_else7838978403_ (lambda () '#f))
                   (_K7839178417_
                    (lambda (_rest78406_ _dir78407_)
                      (let* ((_npath78409_
                              (path-expand
                               _modpath78379_
                               (path-expand _dir78407_)))
                             (_$e78411_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file78381_ _npath78409_))))
                        (if _$e78411_
                            (path-normalize _$e78411_)
                            (let ((_$e78414_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file78382_ _npath78409_))))
                              (if _$e78414_
                                  (path-normalize _$e78414_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp78384_ _rest78406_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7838778395_))
                  (let ((_hd7839278420_
                         (let ()
                           (declare (not safe))
                           (##car _rest7838778395_)))
                        (_tl7839378422_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7838778395_))))
                    (let* ((_dir78425_ _hd7839278420_)
                           (_rest78427_ _tl7839378422_))
                      (declare (not safe))
                      (_K7839178417_ _rest78427_ _dir78425_)))
                  (let () (declare (not safe)) (_else7838978403_))))))))))
