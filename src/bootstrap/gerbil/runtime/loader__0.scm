(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1710155058)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath78055_ _reload?78056_)
        (let ((_$e78058_
               (if (let () (declare (not safe)) (not _reload?78056_))
                   (let ((__tmp78077 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp78077 _modpath78055_))
                   '#f)))
          (if _$e78058_
              _$e78058_
              (let ((_$e78061_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath78055_))))
                (if _$e78061_
                    ((lambda (_path78064_)
                       (let ((_lpath78066_ (load _path78064_)))
                         (let ((__tmp78078 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp78078 _modpath78055_ _lpath78066_))
                         _lpath78066_))
                     _$e78061_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath78055_))))))))
    (define load-module__0
      (lambda (_modpath78071_)
        (let ((_reload?78073_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath78071_ _reload?78073_))))
    (define load-module
      (lambda _g78080_
        (let ((_g78079_ (let () (declare (not safe)) (##length _g78080_))))
          (cond ((let () (declare (not safe)) (##fx= _g78079_ 1))
                 (apply (lambda (_modpath78071_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath78071_)))
                        _g78080_))
                ((let () (declare (not safe)) (##fx= _g78079_ 2))
                 (apply (lambda (_modpath78075_ _reload?78076_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath78075_ _reload?78076_)))
                        _g78080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g78080_))))))
    (define find-library-module
      (lambda (_modpath77989_)
        (letrec ((_find-compiled-file77991_
                  (lambda (_npath78043_)
                    (let ((_basepath78045_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath78043_ '".o"))))
                      (let _lp78047_ ((_current78049_ '#f) (_n78050_ '1))
                        (let ((_next78052_
                               (let ((__tmp78081 (number->string _n78050_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath78045_
                                  __tmp78081))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next78052_))
                              (let ((__tmp78082
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n78050_ '1))))
                                (declare (not safe))
                                (_lp78047_ _next78052_ __tmp78082))
                              _current78049_))))))
                 (_find-source-file77992_
                  (lambda (_npath78039_)
                    (let ((_spath78041_ (string-append _npath78039_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath78041_))
                          _spath78041_
                          '#f)))))
          (let _lp77994_ ((_rest77996_ (current-module-library-path)))
            (let* ((_rest7799778005_ _rest77996_)
                   (_else7799978013_ (lambda () '#f))
                   (_K7800178027_
                    (lambda (_rest78016_ _dir78017_)
                      (let* ((_npath78019_
                              (path-expand
                               _modpath77989_
                               (path-expand _dir78017_)))
                             (_$e78021_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file77991_ _npath78019_))))
                        (if _$e78021_
                            (path-normalize _$e78021_)
                            (let ((_$e78024_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file77992_ _npath78019_))))
                              (if _$e78024_
                                  (path-normalize _$e78024_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp77994_ _rest78016_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7799778005_))
                  (let ((_hd7800278030_
                         (let ()
                           (declare (not safe))
                           (##car _rest7799778005_)))
                        (_tl7800378032_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7799778005_))))
                    (let* ((_dir78035_ _hd7800278030_)
                           (_rest78037_ _tl7800378032_))
                      (declare (not safe))
                      (_K7800178027_ _rest78037_ _dir78035_)))
                  (let () (declare (not safe)) (_else7799978013_))))))))))
