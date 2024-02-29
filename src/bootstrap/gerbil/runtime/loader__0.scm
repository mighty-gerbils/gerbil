(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1709229970)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath78452_ _reload?78453_)
        (let ((_$e78455_
               (if (let () (declare (not safe)) (not _reload?78453_))
                   (let ((__tmp78474 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp78474 _modpath78452_))
                   '#f)))
          (if _$e78455_
              _$e78455_
              (let ((_$e78458_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath78452_))))
                (if _$e78458_
                    ((lambda (_path78461_)
                       (let ((_lpath78463_ (load _path78461_)))
                         (let ((__tmp78475 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp78475 _modpath78452_ _lpath78463_))
                         _lpath78463_))
                     _$e78458_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath78452_))))))))
    (define load-module__0
      (lambda (_modpath78468_)
        (let ((_reload?78470_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath78468_ _reload?78470_))))
    (define load-module
      (lambda _g78477_
        (let ((_g78476_ (let () (declare (not safe)) (##length _g78477_))))
          (cond ((let () (declare (not safe)) (##fx= _g78476_ 1))
                 (apply (lambda (_modpath78468_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath78468_)))
                        _g78477_))
                ((let () (declare (not safe)) (##fx= _g78476_ 2))
                 (apply (lambda (_modpath78472_ _reload?78473_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath78472_ _reload?78473_)))
                        _g78477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g78477_))))))
    (define find-library-module
      (lambda (_modpath78386_)
        (letrec ((_find-compiled-file78388_
                  (lambda (_npath78440_)
                    (let ((_basepath78442_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath78440_ '".o"))))
                      (let _lp78444_ ((_current78446_ '#f) (_n78447_ '1))
                        (let ((_next78449_
                               (let ((__tmp78478 (number->string _n78447_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath78442_
                                  __tmp78478))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next78449_))
                              (let ((__tmp78479
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n78447_ '1))))
                                (declare (not safe))
                                (_lp78444_ _next78449_ __tmp78479))
                              _current78446_))))))
                 (_find-source-file78389_
                  (lambda (_npath78436_)
                    (let ((_spath78438_ (string-append _npath78436_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath78438_))
                          _spath78438_
                          '#f)))))
          (let _lp78391_ ((_rest78393_ (current-module-library-path)))
            (let* ((_rest7839478402_ _rest78393_)
                   (_else7839678410_ (lambda () '#f))
                   (_K7839878424_
                    (lambda (_rest78413_ _dir78414_)
                      (let* ((_npath78416_
                              (path-expand
                               _modpath78386_
                               (path-expand _dir78414_)))
                             (_$e78418_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file78388_ _npath78416_))))
                        (if _$e78418_
                            (path-normalize _$e78418_)
                            (let ((_$e78421_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file78389_ _npath78416_))))
                              (if _$e78421_
                                  (path-normalize _$e78421_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp78391_ _rest78413_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7839478402_))
                  (let ((_hd7839978427_
                         (let ()
                           (declare (not safe))
                           (##car _rest7839478402_)))
                        (_tl7840078429_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7839478402_))))
                    (let* ((_dir78432_ _hd7839978427_)
                           (_rest78434_ _tl7840078429_))
                      (declare (not safe))
                      (_K7839878424_ _rest78434_ _dir78432_)))
                  (let () (declare (not safe)) (_else7839678410_))))))))))
