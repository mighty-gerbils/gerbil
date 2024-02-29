(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1709213449)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath78465_ _reload?78466_)
        (let ((_$e78468_
               (if (let () (declare (not safe)) (not _reload?78466_))
                   (let ((__tmp78487 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp78487 _modpath78465_))
                   '#f)))
          (if _$e78468_
              _$e78468_
              (let ((_$e78471_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath78465_))))
                (if _$e78471_
                    ((lambda (_path78474_)
                       (let ((_lpath78476_ (load _path78474_)))
                         (let ((__tmp78488 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp78488 _modpath78465_ _lpath78476_))
                         _lpath78476_))
                     _$e78471_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath78465_))))))))
    (define load-module__0
      (lambda (_modpath78481_)
        (let ((_reload?78483_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath78481_ _reload?78483_))))
    (define load-module
      (lambda _g78490_
        (let ((_g78489_ (let () (declare (not safe)) (##length _g78490_))))
          (cond ((let () (declare (not safe)) (##fx= _g78489_ 1))
                 (apply (lambda (_modpath78481_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath78481_)))
                        _g78490_))
                ((let () (declare (not safe)) (##fx= _g78489_ 2))
                 (apply (lambda (_modpath78485_ _reload?78486_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath78485_ _reload?78486_)))
                        _g78490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g78490_))))))
    (define find-library-module
      (lambda (_modpath78399_)
        (letrec ((_find-compiled-file78401_
                  (lambda (_npath78453_)
                    (let ((_basepath78455_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath78453_ '".o"))))
                      (let _lp78457_ ((_current78459_ '#f) (_n78460_ '1))
                        (let ((_next78462_
                               (let ((__tmp78491 (number->string _n78460_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath78455_
                                  __tmp78491))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next78462_))
                              (let ((__tmp78492
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n78460_ '1))))
                                (declare (not safe))
                                (_lp78457_ _next78462_ __tmp78492))
                              _current78459_))))))
                 (_find-source-file78402_
                  (lambda (_npath78449_)
                    (let ((_spath78451_ (string-append _npath78449_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath78451_))
                          _spath78451_
                          '#f)))))
          (let _lp78404_ ((_rest78406_ (current-module-library-path)))
            (let* ((_rest7840778415_ _rest78406_)
                   (_else7840978423_ (lambda () '#f))
                   (_K7841178437_
                    (lambda (_rest78426_ _dir78427_)
                      (let* ((_npath78429_
                              (path-expand
                               _modpath78399_
                               (path-expand _dir78427_)))
                             (_$e78431_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file78401_ _npath78429_))))
                        (if _$e78431_
                            (path-normalize _$e78431_)
                            (let ((_$e78434_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file78402_ _npath78429_))))
                              (if _$e78434_
                                  (path-normalize _$e78434_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp78404_ _rest78426_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7840778415_))
                  (let ((_hd7841278440_
                         (let ()
                           (declare (not safe))
                           (##car _rest7840778415_)))
                        (_tl7841378442_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7840778415_))))
                    (let* ((_dir78445_ _hd7841278440_)
                           (_rest78447_ _tl7841378442_))
                      (declare (not safe))
                      (_K7841178437_ _rest78447_ _dir78445_)))
                  (let () (declare (not safe)) (_else7840978423_))))))))))
