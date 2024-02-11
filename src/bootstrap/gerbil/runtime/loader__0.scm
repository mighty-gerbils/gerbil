(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1707620169)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath69467_ _reload?69468_)
        (let ((_$e69470_
               (if (let () (declare (not safe)) (not _reload?69468_))
                   (let ((__tmp73957 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp73957 _modpath69467_ '#f))
                   '#f)))
          (if _$e69470_
              _$e69470_
              (let ((_$e69473_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath69467_))))
                (if _$e69473_
                    ((lambda (_path69476_)
                       (let ((_lpath69478_ (load _path69476_)))
                         (let ((__tmp73958 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp73958 _modpath69467_ _lpath69478_))
                         _lpath69478_))
                     _$e69473_)
                    (error '"module not found" _modpath69467_)))))))
    (define load-module__0
      (lambda (_modpath69483_)
        (let ((_reload?69485_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath69483_ _reload?69485_))))
    (define load-module
      (lambda _g73960_
        (let ((_g73959_ (let () (declare (not safe)) (##length _g73960_))))
          (cond ((let () (declare (not safe)) (##fx= _g73959_ 1))
                 (apply (lambda (_modpath69483_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath69483_)))
                        _g73960_))
                ((let () (declare (not safe)) (##fx= _g73959_ 2))
                 (apply (lambda (_modpath69487_ _reload?69488_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath69487_ _reload?69488_)))
                        _g73960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g73960_))))))
    (define find-library-module
      (lambda (_modpath69401_)
        (letrec ((_find-compiled-file69403_
                  (lambda (_npath69455_)
                    (let ((_basepath69457_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath69455_ '".o"))))
                      (let _lp69459_ ((_current69461_ '#f) (_n69462_ '1))
                        (let ((_next69464_
                               (let ((__tmp73961 (number->string _n69462_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath69457_
                                  __tmp73961))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next69464_))
                              (let ((__tmp73962
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n69462_ '1))))
                                (declare (not safe))
                                (_lp69459_ _next69464_ __tmp73962))
                              _current69461_))))))
                 (_find-source-file69404_
                  (lambda (_npath69451_)
                    (let ((_spath69453_ (string-append _npath69451_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath69453_))
                          _spath69453_
                          '#f)))))
          (let _lp69406_ ((_rest69408_ (current-module-library-path)))
            (let* ((_rest6940969417_ _rest69408_)
                   (_else6941169425_ (lambda () '#f))
                   (_K6941369439_
                    (lambda (_rest69428_ _dir69429_)
                      (let* ((_npath69431_
                              (path-expand
                               _modpath69401_
                               (path-expand _dir69429_)))
                             (_$e69433_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file69403_ _npath69431_))))
                        (if _$e69433_
                            (path-normalize _$e69433_)
                            (let ((_$e69436_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file69404_ _npath69431_))))
                              (if _$e69436_
                                  (path-normalize _$e69436_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp69406_ _rest69428_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6940969417_))
                  (let ((_hd6941469442_
                         (let ()
                           (declare (not safe))
                           (##car _rest6940969417_)))
                        (_tl6941569444_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6940969417_))))
                    (let* ((_dir69447_ _hd6941469442_)
                           (_rest69449_ _tl6941569444_))
                      (declare (not safe))
                      (_K6941369439_ _rest69449_ _dir69447_)))
                  (let () (declare (not safe)) (_else6941169425_))))))))))
