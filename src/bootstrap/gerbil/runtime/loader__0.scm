(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708210940)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath117317_ _reload?117318_)
        (let ((_$e117320_
               (if (let () (declare (not safe)) (not _reload?117318_))
                   (let ((__tmp121406 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp121406 _modpath117317_))
                   '#f)))
          (if _$e117320_
              _$e117320_
              (let ((_$e117323_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath117317_))))
                (if _$e117323_
                    ((lambda (_path117326_)
                       (let ((_lpath117328_ (load _path117326_)))
                         (let ((__tmp121407 (current-module-registry)))
                           (declare (not safe))
                           (table-set!
                            __tmp121407
                            _modpath117317_
                            _lpath117328_))
                         _lpath117328_))
                     _$e117323_)
                    (error '"module not found" _modpath117317_)))))))
    (define load-module__0
      (lambda (_modpath117333_)
        (let ((_reload?117335_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath117333_ _reload?117335_))))
    (define load-module
      (lambda _g121409_
        (let ((_g121408_ (let () (declare (not safe)) (##length _g121409_))))
          (cond ((let () (declare (not safe)) (##fx= _g121408_ 1))
                 (apply (lambda (_modpath117333_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath117333_)))
                        _g121409_))
                ((let () (declare (not safe)) (##fx= _g121408_ 2))
                 (apply (lambda (_modpath117337_ _reload?117338_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath117337_ _reload?117338_)))
                        _g121409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g121409_))))))
    (define find-library-module
      (lambda (_modpath117251_)
        (letrec ((_find-compiled-file117253_
                  (lambda (_npath117305_)
                    (let ((_basepath117307_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath117305_ '".o"))))
                      (let _lp117309_ ((_current117311_ '#f) (_n117312_ '1))
                        (let ((_next117314_
                               (let ((__tmp121410 (number->string _n117312_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath117307_
                                  __tmp121410))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next117314_))
                              (let ((__tmp121411
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n117312_ '1))))
                                (declare (not safe))
                                (_lp117309_ _next117314_ __tmp121411))
                              _current117311_))))))
                 (_find-source-file117254_
                  (lambda (_npath117301_)
                    (let ((_spath117303_
                           (string-append _npath117301_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath117303_))
                          _spath117303_
                          '#f)))))
          (let _lp117256_ ((_rest117258_ (current-module-library-path)))
            (let* ((_rest117259117267_ _rest117258_)
                   (_else117261117275_ (lambda () '#f))
                   (_K117263117289_
                    (lambda (_rest117278_ _dir117279_)
                      (let* ((_npath117281_
                              (path-expand
                               _modpath117251_
                               (path-expand _dir117279_)))
                             (_$e117283_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file117253_ _npath117281_))))
                        (if _$e117283_
                            (path-normalize _$e117283_)
                            (let ((_$e117286_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file117254_
                                      _npath117281_))))
                              (if _$e117286_
                                  (path-normalize _$e117286_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp117256_ _rest117278_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest117259117267_))
                  (let ((_hd117264117292_
                         (let ()
                           (declare (not safe))
                           (##car _rest117259117267_)))
                        (_tl117265117294_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest117259117267_))))
                    (let* ((_dir117297_ _hd117264117292_)
                           (_rest117299_ _tl117265117294_))
                      (declare (not safe))
                      (_K117263117289_ _rest117299_ _dir117297_)))
                  (let () (declare (not safe)) (_else117261117275_))))))))))
