(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1709159707)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath78457_ _reload?78458_)
        (let ((_$e78460_
               (if (let () (declare (not safe)) (not _reload?78458_))
                   (let ((__tmp78479 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp78479 _modpath78457_))
                   '#f)))
          (if _$e78460_
              _$e78460_
              (let ((_$e78463_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath78457_))))
                (if _$e78463_
                    ((lambda (_path78466_)
                       (let ((_lpath78468_ (load _path78466_)))
                         (let ((__tmp78480 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp78480 _modpath78457_ _lpath78468_))
                         _lpath78468_))
                     _$e78463_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath78457_))))))))
    (define load-module__0
      (lambda (_modpath78473_)
        (let ((_reload?78475_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath78473_ _reload?78475_))))
    (define load-module
      (lambda _g78482_
        (let ((_g78481_ (let () (declare (not safe)) (##length _g78482_))))
          (cond ((let () (declare (not safe)) (##fx= _g78481_ 1))
                 (apply (lambda (_modpath78473_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath78473_)))
                        _g78482_))
                ((let () (declare (not safe)) (##fx= _g78481_ 2))
                 (apply (lambda (_modpath78477_ _reload?78478_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath78477_ _reload?78478_)))
                        _g78482_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g78482_))))))
    (define find-library-module
      (lambda (_modpath78391_)
        (letrec ((_find-compiled-file78393_
                  (lambda (_npath78445_)
                    (let ((_basepath78447_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath78445_ '".o"))))
                      (let _lp78449_ ((_current78451_ '#f) (_n78452_ '1))
                        (let ((_next78454_
                               (let ((__tmp78483 (number->string _n78452_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath78447_
                                  __tmp78483))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next78454_))
                              (let ((__tmp78484
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n78452_ '1))))
                                (declare (not safe))
                                (_lp78449_ _next78454_ __tmp78484))
                              _current78451_))))))
                 (_find-source-file78394_
                  (lambda (_npath78441_)
                    (let ((_spath78443_ (string-append _npath78441_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath78443_))
                          _spath78443_
                          '#f)))))
          (let _lp78396_ ((_rest78398_ (current-module-library-path)))
            (let* ((_rest7839978407_ _rest78398_)
                   (_else7840178415_ (lambda () '#f))
                   (_K7840378429_
                    (lambda (_rest78418_ _dir78419_)
                      (let* ((_npath78421_
                              (path-expand
                               _modpath78391_
                               (path-expand _dir78419_)))
                             (_$e78423_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file78393_ _npath78421_))))
                        (if _$e78423_
                            (path-normalize _$e78423_)
                            (let ((_$e78426_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file78394_ _npath78421_))))
                              (if _$e78426_
                                  (path-normalize _$e78426_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp78396_ _rest78418_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7839978407_))
                  (let ((_hd7840478432_
                         (let ()
                           (declare (not safe))
                           (##car _rest7839978407_)))
                        (_tl7840578434_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7839978407_))))
                    (let* ((_dir78437_ _hd7840478432_)
                           (_rest78439_ _tl7840578434_))
                      (declare (not safe))
                      (_K7840378429_ _rest78439_ _dir78437_)))
                  (let () (declare (not safe)) (_else7840178415_))))))))))
