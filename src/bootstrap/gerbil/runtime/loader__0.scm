(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1709127356)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath78455_ _reload?78456_)
        (let ((_$e78458_
               (if (let () (declare (not safe)) (not _reload?78456_))
                   (let ((__tmp78477 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp78477 _modpath78455_))
                   '#f)))
          (if _$e78458_
              _$e78458_
              (let ((_$e78461_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath78455_))))
                (if _$e78461_
                    ((lambda (_path78464_)
                       (let ((_lpath78466_ (load _path78464_)))
                         (let ((__tmp78478 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp78478 _modpath78455_ _lpath78466_))
                         _lpath78466_))
                     _$e78461_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath78455_))))))))
    (define load-module__0
      (lambda (_modpath78471_)
        (let ((_reload?78473_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath78471_ _reload?78473_))))
    (define load-module
      (lambda _g78480_
        (let ((_g78479_ (let () (declare (not safe)) (##length _g78480_))))
          (cond ((let () (declare (not safe)) (##fx= _g78479_ 1))
                 (apply (lambda (_modpath78471_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath78471_)))
                        _g78480_))
                ((let () (declare (not safe)) (##fx= _g78479_ 2))
                 (apply (lambda (_modpath78475_ _reload?78476_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath78475_ _reload?78476_)))
                        _g78480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g78480_))))))
    (define find-library-module
      (lambda (_modpath78389_)
        (letrec ((_find-compiled-file78391_
                  (lambda (_npath78443_)
                    (let ((_basepath78445_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath78443_ '".o"))))
                      (let _lp78447_ ((_current78449_ '#f) (_n78450_ '1))
                        (let ((_next78452_
                               (let ((__tmp78481 (number->string _n78450_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath78445_
                                  __tmp78481))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next78452_))
                              (let ((__tmp78482
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n78450_ '1))))
                                (declare (not safe))
                                (_lp78447_ _next78452_ __tmp78482))
                              _current78449_))))))
                 (_find-source-file78392_
                  (lambda (_npath78439_)
                    (let ((_spath78441_ (string-append _npath78439_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath78441_))
                          _spath78441_
                          '#f)))))
          (let _lp78394_ ((_rest78396_ (current-module-library-path)))
            (let* ((_rest7839778405_ _rest78396_)
                   (_else7839978413_ (lambda () '#f))
                   (_K7840178427_
                    (lambda (_rest78416_ _dir78417_)
                      (let* ((_npath78419_
                              (path-expand
                               _modpath78389_
                               (path-expand _dir78417_)))
                             (_$e78421_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file78391_ _npath78419_))))
                        (if _$e78421_
                            (path-normalize _$e78421_)
                            (let ((_$e78424_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file78392_ _npath78419_))))
                              (if _$e78424_
                                  (path-normalize _$e78424_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp78394_ _rest78416_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7839778405_))
                  (let ((_hd7840278430_
                         (let ()
                           (declare (not safe))
                           (##car _rest7839778405_)))
                        (_tl7840378432_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7839778405_))))
                    (let* ((_dir78435_ _hd7840278430_)
                           (_rest78437_ _tl7840378432_))
                      (declare (not safe))
                      (_K7840178427_ _rest78437_ _dir78435_)))
                  (let () (declare (not safe)) (_else7839978413_))))))))))
